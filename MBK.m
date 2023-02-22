function dx=MBK(t,x)

%------------definicion de los parametros------------%
m1 = 290;
m2 = 59;
k1 = 16182;
k2 = 19000;
b1 = 1000;
f = 0;
z = 0.05*sin(0.5*pi*t);
z1 = 0.05*sin(20*pi*t) %Intercambiable%

dx = zeros(4,1);    

%------------definicion de las matrices------------%
M = [m1 0; 0 m2];
B = [b1 -b1; -b1 b1];
K = [k1 -k1; -k1 k1+k2];
U = [1 0; -1 k2];

%--------definición de la dinámica del sistema--------%
dx(1) = x(3);
dx(2) = x(4);
dx(3:4) = M\(-B*[x(3); x(4)]-K*[x(1); x(2)]+U*[f; z]);