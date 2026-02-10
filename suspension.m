function dx = suspension(t, x, caso)

m1 = 290;
m2 = 59;
b1 = 1000;
k1 = 16182;
k2 = 19000;
f  = 0;

if caso == 1
    z = 0.05*sin(0.5*pi*t);
elseif caso == 2
    z = 0.05*sin(20*pi*t);
else
    z = 0;
end

dx = zeros(4,1);

dx(1) = x(3);
dx(2) = x(4);

dx(3) = (-b1*(x(3) - x(4)) - k1*(x(1) - x(2)) + f) / m1;

dx(4) = (b1*(x(3) - x(4)) + k1*(x(1) - x(2)) - k2*(x(2) - z) - f) / m2;

end