% -------------------- %
% AbsoluteStability1.m %
% -------------------- %

function theplot = Absolute_Stability_RK2()
    
    x = -8:0.01:8;
    y = -8:0.01:8;
    [X,Y] = meshgrid(x,y);
    Z = X+1i*Y;
    
    y0 = 0.0*x;
    x0 = 0.0*y;
    
    Q1 = 1 + Z + 0.5 * Z.^2;
    
    Qa = abs(Q1);
    
    figure(1)
    hold on;
    theplot = contourf(X,Y, -Qa,[-1 -1]);
    plot(x,y0,'--k',x0,y,'--k');
    hold off;
    axis equal;
    set(gca,'fontsize',16);
    title('Runge-Kutta Order 2','fontsize',24);
    xlabel('$\mathrm{Re}(z)$','interpreter','latex','fontsize',24);
    ylabel('$\mathrm{Im}(z)$','interpreter','latex','fontsize',24);
    
end