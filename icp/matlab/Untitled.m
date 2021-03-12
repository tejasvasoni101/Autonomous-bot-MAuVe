plot(x,f(x),x,df(x),x,df2(x))
xlim(x([ 1 end ]))
grid on
xlabel('x')
ylabel('y')
legend('f(x)','df(x)','ddf(x)')