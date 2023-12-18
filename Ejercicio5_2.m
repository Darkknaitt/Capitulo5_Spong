% Métodos algebraicos para el analisis de robots
% Tarea 6
% Ejercicio 5.2 Spong 
% Pablo Sotelo Abraham de Jesús 
% Maestría en Tecnología Avanzada
% UPIITA - Instituto Politécnico Nacional

% Se establecen las variables a utilizar
syms a1 a2 a3 q1 q2 q3
% Se definen os valores de los vectores de posición
O0 = [0;0;0];
O1 = [0;0;0];
O2 = [a2*cos(q1)*cos(q2); a2*sin(q1)*cos(q2); a2*sin(q2)];
O3 = [a2*cos(q1)*cos(q2)+a3*cos(q1)*cos(q2+q3); 
      a2*sin(q1)*cos(q2)+a3*sin(q1)*cos(q2+q3); 
      a2*sin(q2)+a3*sin(q2+q3)];
% Se definen los valores de Z
z0 = [0;0;1]
z1 = [sin(q1); -cos(q1);0]
z2 = [sin(q1);  -cos(q1);0]
% Se parte a calcular J_{11}
O3-O0
J11_1 = cross(z0,(O3-O0))
J11_2 = cross(z1,(O3-O1))
J11_3 = cross(z2,(O3-O2))

J11 = simplify([J11_1,J11_2,J11_3])

DJ11 = simplify(det(J11))



