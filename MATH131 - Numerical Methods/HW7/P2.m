%Problem 2 Plot

f = @(y) -12*y; %For Implicit Methods
g = @(t,y) -12*y; %For Euler

fy = @(y) -12;
%gy = @(t, y) -12;

a = 0;
b = 1;
alpha = 1;
N = [5, 10, 15, 20];

%IE = Implicit Euler
%IT = Implicit Trapezoid
%E  = Euler

IE5     = Implicit_Euler(f, fy, a, b, alpha, N(1));
IE10    = Implicit_Euler(f, fy, a, b, alpha, N(2));
IE15    = Implicit_Euler(f, fy, a, b, alpha, N(3));
IE20    = Implicit_Euler(f, fy, a, b, alpha, N(4));

IT5     = Implicit_Trapezoid(f, fy, a, b, alpha, N(1));
IT10    = Implicit_Trapezoid(f, fy, a, b, alpha, N(2));
IT15    = Implicit_Trapezoid(f, fy, a, b, alpha, N(3));
IT20    = Implicit_Trapezoid(f, fy, a, b, alpha, N(4));

E5      = Euler(g, a, b, alpha, N(1));
E10     = Euler(g, a, b, alpha, N(2));
E15     = Euler(g, a, b, alpha, N(3));
E20     = Euler(g, a, b, alpha, N(4));

h = [(b-a)/N(1), (b-a)/N(2), (b-a)/N(3), (b-a)/N(4)];

%Exact
k = @(t) exp(-12*t);
Exact = k(1);

IE  = [abs(Exact - IE5(6)), abs(Exact - IE10(11)), abs(Exact - IE15(16)), abs(Exact - IE20(21))];
IT  = [abs(Exact - IT5(6)), abs(Exact - IT10(11)), abs(Exact - IT15(16)), abs(Exact - IT20(21))];
E   = [abs(Exact - E5(6)), abs(Exact - E10(11)), abs(Exact - E15(16)), abs(Exact - E20(21))];


plot(h, IE , '-ob', h, IT, '-xr', h, E, '-hg');
xlabel('h');
ylabel('t = 1');
ylim([-1, 10]);
xlim([0.04, 0.22]);
legend('Implicit Euler', 'Implicit Trapezoid', 'Euler');