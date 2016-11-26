% solve k and b for equation y = k*x + b, inputs are sample vectors of x and y
% can be used to obtain characristic of a sensor or other things 
function k = solver(X,Y)
temp = size(X,1); %rows of vertor X 
I = ones(temp,1); %row vector of 1
A = [X I];
disp('k and b are')
k = pinv(A)*Y;
% x1 = 0:0.01:max(X);                % for only positive input
x1 = -max(abs(X)):0.01:max(abs(X));  % for positive and negative input 
y1 = k(1)*x1+k(2);
plot(X,Y,'x',x1,y1);
legend('real','approx.')
end