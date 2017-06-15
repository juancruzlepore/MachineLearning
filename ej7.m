load census;
%7.a) No existe relacion lineal entre las variables
scatter(cdate,pop)

%7.b) Ajustar polinomio
polyfit(cdate,pop,2)
%Coeficientes: [6.5411e-03  -2.3510e+01   2.1130e+04]

%7.c) Ajustar polinomio
polyfit(cdate,pop,3)
%Coeficientes: [3.8555e-06  -1.5319e-02   1.7781e+01  -4.8519e+03]
%TODO: Estudiar residuos
%{

	7.d)
	R^2 = 0.9988 para el polinomio cúbico
	R^2 = 0.9987 para el polinomio cuadrático

	Esto nos dice que el polinomio cúbico se ajusta mejor a los datos dados.

	7.e)
	El modelo cúbico predijo 277 millones

	El modelo cuadrático predijo 275 millones

	Por lo tanto, el modelo cúbico estuvo más cerca de la respuesta correcta.

}
