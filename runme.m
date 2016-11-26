close all;
% load test data
MLS_test_data_16_11_23;
% load sensor parameter
sensor_parameter;
% convert voltage to force
s8_force = sensor_voltage_to_force(k_s8,b_s8,s8_voltage);
s7_force = sensor_voltage_to_force(k_s7,b_s7,s7_voltage);
% plot combined data
%% translator rotates£¡£¡£¡
% figure(1)
% plot(displacement,s7_force,'-o');
% figure(2)
% plot(displacement,s8_force,'-o');

%% plot seperate data

% when linear motor goes out
force_linear_motor_goes_out = sensor_voltage_to_force(k_s7,b_s7,s7_voltage_linear_motor_goes_out);
s8_force_linear_motor_goes_out = sensor_voltage_to_force(k_s8,b_s8,s8_voltage_linear_motor_goes_out);
torque_linear_motor_goes_out   = s8_force_linear_motor_goes_out*0.0835;

figure()
plot(displacement_linear_motor_goes_out,force_linear_motor_goes_out,'b--o');
title('translator force(linear motor goes out)')
xlabel('distance[mm]')
ylabel('force[N]')
grid on

figure()
plot(displacement_linear_motor_goes_out,s8_force_linear_motor_goes_out,'b--o');
title('torque(linear motor goes out)')
xlabel('distance[mm]')
ylabel('force[N]')
grid on

% when linear motor goes in
force_linear_motor_goes_in       = sensor_voltage_to_force(k_s7,b_s7,s7_voltage_linear_motor_goes_in);
s8_force_linear_motor_goes_in    = sensor_voltage_to_force(k_s8,b_s8,s8_voltage_linear_motor_goes_in);
torque_linear_motor_goes_in      = s8_force_linear_motor_goes_in*0.0835;

figure()
plot(displacement_linear_motor_goes_in,force_linear_motor_goes_in,'b--o');
title('translator force(linear motor goes in)')
xlabel('distance[mm]')
ylabel('force[N]')
grid on

figure()
plot(displacement_linear_motor_goes_in,torque_linear_motor_goes_in,'b--o');
title('torque(linear motor goes in)')
xlabel('distance[mm]')
ylabel('force[N]')
grid on

% plot in one graph
% torque
plot(displacement_linear_motor_goes_in,torque_linear_motor_goes_in,'b--o',displacement_linear_motor_goes_out,torque_linear_motor_goes_out,'r--o')
grid on
legend('LM in','LM out')
title('torque')
xlabel('distance[mm]')
ylabel('torque[Nm]')
grid on


% force
figure()
plot(displacement_linear_motor_goes_in,force_linear_motor_goes_in,'b--o',displacement_linear_motor_goes_out,force_linear_motor_goes_out,'r--o')
grid on
legend('LM in','LM out')
title('force')
xlabel('distance[mm]')
ylabel('force[N]')
