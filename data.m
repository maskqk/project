% Three tests for force sensors
% Done by three seperately
% First test
X_S7_push_1 = [0.029 0.070 0.004 -0.029 -0.065 -0.077 0.048 0.027 -0.067 -0.094 0.029 -0.057 -0.087 0.062 0.034 -0.009 -0.088 -0.072]';
X_S7_pull_1 = [-0.025 0.038 0.049 0.087 0.091 -0.004 0.072 -0.007 0.020 0.081 0.088 -0.028 0.012 0.057 -0.093 -0.05 0.025 0.092 -0.037 0.019]';

Y_S7_push_1 = [113.77 125.61 128.61 129.53 134.86 145.25 153.67 154.38 158.52 159.70 168.41 172.1 175.82 181.12 182.03 184.23 187.01 189.95]';
Y_S7_pull_1 = [185.42 182.45 182.09 180.04 179.40 170.92 167.42 157.15 155.06 152.85 150.96 143.97 142.07 140.02 132.31 130.62 127.41 124.32 116.14 113.46]';

% second
X_S7_push_2 = []';
X_S7_pull_2 = []';

Y_S7_push_2 = []';
Y_S7_pull_2 = []';

% third S7 push
X_S7_push_3 = [0.029 0.009 -0.008 -0.045 -0.070 -0.094 -0.092 -0.070 0.077 0.060 0.036 0.020 0.013 -0.006 -0.025 -0.034 -0.064 -0.090 -0.098 -0.084 0.070 0.057 0.028 0.010 -0.003 -0.072 -0.089 -0.095 -0.050 0.044 -0.076 -0.093 -0.064 0.058 0.036 0.009 -0.008 -0.049 -0.093 0.057 0.020 -0.052]';
Y_S7_push_3 = [112.08 113.12 114.17 115.41 116.25 117.76 119.30 120.00 123.90 124.69 125.59 126.27 126.80 128.09 129.05 129.21 130.12 130.97 131.88 133.49 138.12 138.70 139.74 140.40 141.95 144.35 145.04 146.36 148.25 152.95 158.32 159.16 161.65 166.37 167.20 168.81 169.62 171.28 174.13 180.79 181.99 185.20]';
% third S7 pull
X_S7_pull_3 = [-0.029 0.007 0.033 0.056 0.079 -0.068 -0.031 0.002 0.023 0.044 0.081 0.058 -0.070 -0.038 -0.006 0.025 0.068 0.082 -0.089 -0.074 -0.031 0.004 0.035 0.052 0.086 -0.091 -0.052 0.010 0.040 0.075 0.085 -0.083 -0.011 0.039 ]';
Y_S7_pull_3 = [184.59 183.15 182.12 180.70 177.81 171.87 170.85 169.73 168.62 167.31 165.14 162.79 158.34 157.33 156.51 154.70 152.53 151.68 145.38 144.26 143.15 142.28 140.46 139.33 136.92 131.38 130.19 127.66 126.42 124.25 122.47 117.11 114.51 111.93]';

% third S8 push

X_S8_push_3 = [0 -0.009 -0.014 -0.032 -0.042 -0.050 -0.043 -0.030 0.030 0.017 0 -0.006 -0.007 -0.017 -0.025 -0.029 -0.041 -0.050 -0.050 -0.039 0.024 0.015 -0.002 -0.008 -0.015 -0.043 -0.047 -0.045 -0.012 0.006 -0.045 -0.048 -0.022 0.016 0.001 -0.009 -0.019 -0.037 -0.045 0.012 -0.007 -0.038]';
Y_S8_push_3 = [112.08 113.12 114.17 115.41 116.25 117.76 119.30 120.00 123.90 124.69 125.59 126.27 126.80 128.09 129.05 129.21 130.12 130.97 131.88 133.49 138.12 138.70 139.74 140.40 141.95 144.35 145.04 146.36 148.25 152.95 158.32 159.16 161.65 166.37 167.20 168.81 169.62 171.28 174.13 180.79 181.99 185.20]';

% third S8 pull

X_S8_pull_3 = [-0.028 -0.011 0 0.012 0.040 -0.043 -0.028 -0.013 -0.001 0.005 0.035 0.039 -0.042 -0.029 -0.015 0 0.022 0.037 -0.049 -0.044 -0.026 -0.009 0.004 0.010 0.040 -0.051 -0.037 -0.006 0.006 0.024 0.040 -0.048 -0.017 0.003]';
Y_S8_pull_3 = [184.59 183.15 182.12 180.70 177.81 171.87 170.85 169.73 168.62 167.31 165.14 162.79 158.34 157.33 156.51 154.70 152.53 151.68 145.38 144.26 143.15 142.28 140.46 139.33 136.92 131.38 130.19 127.66 126.42 124.25 122.47 117.11 114.51 111.93]';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Plot data
%% third S7 push
% convert to force
X_S7_push_3_force =(1000*X_S7_push_3+0.1195)/(-0.3190);
plot(Y_S7_push_3,X_S7_push_3_force,'b--o');grid on
title('third S7 push')
xlabel('distance[mm]')
ylabel('force[N]')

%% third S7 pull
% convert to force
figure(3)
X_S7_pull_3_force =(1000*X_S7_pull_3+0.1195)/(-0.3190);
plot(Y_S7_pull_3,X_S7_pull_3_force,'b--o');grid on
title('third S7 pull')
xlabel('distance[mm]')
ylabel('force[N]')
%% third S8 push
% convert to force
figure(4)
X_S8_push_3_force =(X_S8_push_3-0.007)/(-0.0052);
X_S8_push_3_torque = X_S8_push_3_force*0.14/(2*pi);
plot(Y_S8_push_3,X_S8_push_3_torque,'b--o');grid on
title('third S8 push')
xlabel('distance[mm]')
ylabel('torque[Nm]')

%% third S8 pull
% convert to force
figure(5)
X_S8_pull_3_force =(X_S8_pull_3-0.007)/(-0.0052);
X_S8_pull_3_torque = X_S8_pull_3_force*0.14/(2*pi);
plot(Y_S8_pull_3,X_S8_pull_3_torque,'b--o');grid on
title('third S8 pull')
xlabel('distance[mm]')
ylabel('torque[Nm]')
%% torque from S7 pull
figure(6)
torque_from_S7_pull=X_S7_pull_3_force;
plot(Y_S7_pull_3,torque_from_S7_pull,'b--o');grid on
title('torque from third S7 pull')
xlabel('distance[mm]')
ylabel('torque[Nm]')
%% torque from S7 push
figure(7)
torque_from_S7_push=X_S7_push_3_force*0.014/(2*pi);
plot(Y_S7_push_3,torque_from_S7_push,'b--o');grid on
title('torque from third S7 push')
xlabel('distance[mm]')
ylabel('torque[Nm]')