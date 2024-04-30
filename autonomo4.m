load census
scatter(cdate,pop);
title('Población de EE. UU. de los años 1790 a 1990')
xlabel('Año del censado');
ylabel('Poblacion en millones');
hold on

[p,delta] = polyfit(cdate,pop,1);
pop_fit = polyval(p,cdate,delta);

plot(cdate,pop_fit,"r")
hold on

[p,delta] = polyfit(cdate,pop,2);
pop_fit2 = polyval(p,cdate,delta);

plot(cdate,pop_fit2,"b")
hold on
[p,delta] = polyfit(cdate,pop,3);
pop_fit3 = polyval(p,cdate,delta);

plot(cdate,pop_fit3,'g')
legend('Datos','1 modelo polinomico','2 modelo polinomico','3 modelo polinomico','Location','NorthWest');

err = immse(cdate,pop);

err_1 = immse(cdate,pop_fit);
porce1=err-err_1;
fprintf('\n El error cuadratico medio de grado 1 es %0.4f\n', porce1);
err_2 = immse(cdate,pop_fit2);
porce2=err-err_2;
fprintf('\n El error cuadratico medio de grado 2 es %0.4f\n', porce2);
err_3 = immse(cdate,pop_fit3);
porce3=err-err_3;
fprintf('\n El error cuadratico medio de grado 3 es %0.4f\n', porce3);
