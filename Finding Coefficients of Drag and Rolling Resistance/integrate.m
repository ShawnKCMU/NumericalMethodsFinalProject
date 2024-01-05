function [x, y] = integrate(x, dydx, y_0)

%finding time gap
freq = length(x)/x(end);
delta_t = 1/freq;

%setting conditions
i = 0;
y = y_0*ones([length(x) 1]); %preallocate y to improve efficiency

while (i+1 < length(x))
    i = i+1;
    %solve for y
    y_1 = ((dydx(i+1) + dydx(i))*delta_t*0.5) + y_0;
    y(i+1) = y_1;
    y_0 = y_1;
end