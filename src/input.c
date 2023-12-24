#include "input.h"
#include "malloc.h"

#include <libpad.h>
#include <loadfile.h>
#include <stdbool.h>
#include <stdio.h>

static char pad_buffer[256] __attribute__((aligned(64)));
static struct padButtonStatus pad_button_status = {0};

#define TRY(code)                                                              \
  if (!(code)) {                                                               \
    printf("Failed to do " #code "\n");                                        \
    return 0;                                                                  \
  }

// initialize the getting of controller input. return true on success
bool input_init() {
  TRY(SifLoadModule("rom0:SIO2MAN", 0, 0));
  TRY(SifLoadModule("rom0:PADMAN", 0, 0));
  TRY(padInit(0));
  printf("pad_buffer: %p\n", pad_buffer);
  TRY(padPortOpen(0, 0, &pad_buffer));
  TRY(padSetMainMode(0, 0, 1, 3));

  return 1;
}

static int input_wait() {
  int state = padGetState(0, 0);
  printf("Pad state: %d\n", state);
  int tries = 10;
  while ((state != PAD_STATE_STABLE) && (state != PAD_STATE_FINDCTP1)) {
    state = padGetState(0, 0);
    tries--;
    if (tries <= 0) {
      return 0;
    }
  }
  return 1;
}

// call once per frame to check controller input. return true on success
bool input_update() {
  TRY(input_wait());
  TRY(padRead(0, 0, &pad_button_status));
  printf("btns: %d\n", pad_button_status.btns);
  printf("joystick: %d\n", pad_button_status.rjoy_v);
  int modes = padInfoMode(0, 0, PAD_MODETABLE, -1);
  printf("Modes: %d\n", modes);

  if (modes > 0) {
    printf("( ");
    int i = 0;
    for (i = 0; i < modes; i++) {
      printf("%d ", padInfoMode(0, 0, PAD_MODETABLE, i));
    }
    printf(")");

    // Verify that the controller has a DUAL SHOCK mode
    i = 0;
    do {
      if (padInfoMode(0, 0, PAD_MODETABLE, i) == PAD_TYPE_DUALSHOCK)
        break;
      i++;
    } while (i < modes);
    if (i >= modes) {
      printf("This is no Dual Shock controller\n");
      return 1;
    }
  }
  return 1;
}

bool input_is_pressed(int key) { return (pad_button_status.btns & key) != 0; }

double input_joystick(int joystick) {
  switch (joystick) {
  case INPUT_AXIS_LEFT_H:
    return pad_button_status.ljoy_h / 256.0;
  case INPUT_AXIS_LEFT_V:
    return pad_button_status.ljoy_v / 256.0;
  case INPUT_AXIS_RIGHT_H:
    return pad_button_status.rjoy_h / 256.0;
  case INPUT_AXIS_RIGHT_V:
    return pad_button_status.rjoy_v / 256.0;
  }
  return 0;
}
