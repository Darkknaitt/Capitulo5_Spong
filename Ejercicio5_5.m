% Métodos algebraicos para el analisis de robots
% Tarea 6
% Ejercicio 5.5 Spong 
% Pablo Sotelo Abraham de Jesús 
% Maestría en Tecnología Avanzada
% UPIITA - Instituto Politécnico Nacional

% Se establecen las variables a utilizar
syms d3 q1
% Se definen os valores de los vectores de posición
O0 = [0;0;0];
O3 = [-d3*sin(q1);d3*cos(q1);0];
% Se definen los valores de Z
z0 = [0;0;1]
z1 = [0;0;1]
z2 = [-sin(q1); cos(q1);0]
% Vector de 0
zer = [0;0;0]
% Se parte a calcular J_{11}
O3-O0
J11_1 = cross(z0,(O3-O0))
J11_2 = z1
J11_3 = z2

J11 = simplify([J11_1,J11_2,J11_3;z0,zer,zer])

DJ11 = simplify(det([J11_1,J11_2,J11_3]))



