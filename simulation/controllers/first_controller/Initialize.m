wb_console_print('Initializing...', WB_STDOUT);

% LEFT, RIGHT MOTORS
wb_console_print('Checking Motors', WB_STDOUT);
motor = [];
motor_names = [ "left_motor", "right_motor" ];
for i = 1:2
    motor(i) = wb_robot_get_device(convertStringsToChars(motor_names(i)));
    wb_motor_set_position(motor(i), inf);
    wb_motor_set_velocity(motor(i), 0.0);
end
wb_console_print('DONE', WB_STDOUT);

% LEFT, RIGHT ENCODERS
wb_console_print('Checking Encoders', WB_STDOUT);
ps = [];
ps_names = [ "left_ps", "right_ps" ];
for i = 1:2
    ps(i) = wb_robot_get_device(convertStringsToChars(ps_names(i)));
    wb_position_sensor_enable(ps(i), TIME_STEP);
end
wb_console_print('DONE', WB_STDOUT);

% GLOBAL GPS
wb_console_print('Checking GPS', WB_STDOUT);
gps_name = "global";
gps = wb_robot_get_device(convertStringsToChars(gps_name));
wb_gps_enable(gps, TIME_STEP)
wb_console_print('DONE', WB_STDOUT);

% RANGE FINDER (TOF)
wb_console_print('Checking TOF', WB_STDOUT);
tof_name = "tof";
tof = wb_robot_get_device(convertStringsToChars(tof_name));
wb_range_finder_enable(tof, TIME_STEP);
wb_console_print('DONE', WB_STDOUT);

wb_console_print('Initialization Complete.', WB_STDOUT);