% converts output voltage into corresponding input force of a force sensor
% inputs are k,b (as in voltage = k * force + b) and the sensor output
% voltage

function force = sensor_voltage_to_force(k,b,output_voltage)
force = (output_voltage - b)./k;
end