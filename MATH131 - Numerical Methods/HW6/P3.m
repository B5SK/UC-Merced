function P3()
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

    N = [10, 10^2, 10^3, 10^4, 10^5];

    f = @(t,y) (sin(2*t) - 2*t*y)/(t.^2);
    a = 1;
    b = 5;
    alpha = 2;
    
%{
  Eul = Euler data  
  mEul = Modified Euler data
  O2RK = Order 2 Runge-Kutta
  O4RK = Order 4 Runge-Kutta
  S2AB = 2-Step Adams-Bashforth
  A4OPC = Adams 4th Order Predictor Corrector
    
%}
   Eul1 = Euler(f, a, b, alpha, N(1));
   Eul2 = Euler(f, a, b, alpha, N(2));
   Eul3 = Euler(f, a, b, alpha, N(3));
   Eul4 = Euler(f, a, b, alpha, N(4));
   Eul5 = Euler(f, a, b, alpha, N(5));
   
   mEul1 = ModifiedEuler(f, a, b, alpha, N(1));
   mEul2 = ModifiedEuler(f, a, b, alpha, N(2));
   mEul3 = ModifiedEuler(f, a, b, alpha, N(3));
   mEul4 = ModifiedEuler(f, a, b, alpha, N(4));
   mEul5 = ModifiedEuler(f, a, b, alpha, N(5));
   
   O2RK1 = Order2RK(f, a, b, alpha, N(1));
   O2RK2 = Order2RK(f, a, b, alpha, N(2));
   O2RK3 = Order2RK(f, a, b, alpha, N(3));
   O2RK4 = Order2RK(f, a, b, alpha, N(4));
   O2RK5 = Order2RK(f, a, b, alpha, N(5));
   
   O4RK1 = Order4RK(f, a, b, alpha, N(1));
   O4RK2 = Order4RK(f, a, b, alpha, N(2));
   O4RK3 = Order4RK(f, a, b, alpha, N(3));
   O4RK4 = Order4RK(f, a, b, alpha, N(4));
   O4RK5 = Order4RK(f, a, b, alpha, N(5));
   
   S2AB1 = MS2AdamsB(f, a, b, alpha, N(1));
   S2AB2 = MS2AdamsB(f, a, b, alpha, N(2));
   S2AB3 = MS2AdamsB(f, a, b, alpha, N(3));
   S2AB4 = MS2AdamsB(f, a, b, alpha, N(4));
   S2AB5 = MS2AdamsB(f, a, b, alpha, N(5));
   
   A4OPC1 = Adams4thOrderPC(f, a, b, alpha, N(1));
   A4OPC2 = Adams4thOrderPC(f, a, b, alpha, N(2));
   A4OPC3 = Adams4thOrderPC(f, a, b, alpha, N(3));
   A4OPC4 = Adams4thOrderPC(f, a, b, alpha, N(4));
   A4OPC5 = Adams4thOrderPC(f, a, b, alpha, N(5));

%{
  EE = Euler error  
  Em = Modified Euler error
  EO2RK = Order 2 Runge-Kutta
  EO4RK = Order 4 Runge-Kutta
  ES2AB = 2-Step Adams-Bashforth
    
%}
    EE = zeros(1,5);
    Em = zeros(1,5);
    EO2RK = zeros(1,5);
    EO4RK = zeros(1,5);
    ES2AB = zeros(1,5);
    
   
    EE(1) = abs(A4OPC1(5) - Eul1(5));
    EE(2) = abs(A4OPC2(5) - Eul2(5));
    EE(3) = abs(A4OPC3(5) - Eul3(5));
    EE(4) = abs(A4OPC4(5) - Eul4(5));
    EE(5) = abs(A4OPC5(5) - Eul5(5));
    
    Em(1) = abs(A4OPC1(5) - mEul1(5));
    Em(2) = abs(A4OPC2(5) - mEul2(5));
    Em(3) = abs(A4OPC3(5) - mEul3(5));
    Em(4) = abs(A4OPC4(5) - mEul4(5));
    Em(5) = abs(A4OPC5(5) - mEul5(5));
    
    EO2RK(1) = abs(A4OPC1(5) - O2RK1(5));
    EO2RK(2) = abs(A4OPC2(5) - O2RK2(5));
    EO2RK(3) = abs(A4OPC3(5) - O2RK3(5));
    EO2RK(4) = abs(A4OPC4(5) - O2RK4(5));
    EO2RK(5) = abs(A4OPC5(5) - O2RK5(5));
    
    EO4RK(1) = abs(A4OPC1(5) - O4RK1(5));
    EO4RK(2) = abs(A4OPC2(5) - O4RK2(5));
    EO4RK(3) = abs(A4OPC3(5) - O4RK3(5));
    EO4RK(4) = abs(A4OPC4(5) - O4RK4(5));
    EO4RK(5) = abs(A4OPC5(5) - O4RK5(5));
    
    ES2AB(1) = abs(A4OPC1(5) - S2AB1(5));
    ES2AB(2) = abs(A4OPC2(5) - S2AB2(5));
    ES2AB(3) = abs(A4OPC3(5) - S2AB3(5));
    ES2AB(4) = abs(A4OPC4(5) - S2AB4(5));
    ES2AB(5) = abs(A4OPC5(5) - S2AB5(5));

    
    loglog(N, EE, '-y', N, Em, '-m', N, EO2RK, '-c', N, EO4RK, '-r', N, ES2AB, '-g', 'linewidth', 2);
    legend('Euler', 'Modified Euler', 'Order 2 RK', 'Order 4 RK', '2Step AdamsB');
    xlabel('N');
    ylabel('Error');
    title('IVP Methods Graph');
    
    axis([10^0 10^6, 10^-20, 10^5]);
    
end

