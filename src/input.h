#include <stdbool.h>

bool input_init();

// call once per frame to check controller input. return true on success
bool input_update();

bool input_is_pressed(int key);

#define INPUT_AXIS_LEFT_H 0
#define INPUT_AXIS_LEFT_V 1
#define INPUT_AXIS_RIGHT_H 2
#define INPUT_AXIS_RIGHT_V 3

double input_joystick(int joystick);