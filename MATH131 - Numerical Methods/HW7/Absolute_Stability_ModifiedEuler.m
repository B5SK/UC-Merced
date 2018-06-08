% -------------------- %
% AbsoluteStability1.m %
% -------------------- %

function theplot = Absolute_Stability_ModifiedEuler()
    
    x = -3:0.01:1;
    y = -3:0.01:3;
    [X,Y] = meshgrid(x,y);
    Z = X + 1i*Y;
    
    y0 = 0.0*x;
    x0 = 0.0*y;
    
    W1 = 1+Z;
    Q1 = W1.*conj(W1);
    figure(1)
    
    hold on;
    theplot = contourf(X, Y, Q1,[1 1]);
    hold off;
    
    hold on;
    plot(x,y0,'--k',x0,y,'--k');
    hold off;
    axis equal;
    set(gca,'fontsize',16);
    title('Modified Euler''s Method','fontsize',24);
    xlabel('$\mathrm{Re}(z)$','interpreter','latex','fontsize',24);
    ylabel('$\mathrm{Im}(z)$','interpreter','latex','fontsize',24);
    
end