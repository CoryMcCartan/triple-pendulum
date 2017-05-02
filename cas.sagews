︠f5cb874b-17da-480e-a1e4-c2ecfb71f9dfs︠
# phi_1 through phi_3
%var x_1,x_2,x_3
# phi_dot_1 through phi_dot_3
%var y_1,y_2,y_3
# constants
%var g,l

A = matrix(3, 3, [3, 2*cos(x_1-x_2), cos(x_1-x_3),
                  2*cos(x_1-x_2), 2, cos(x_2-x_3),
                  cos(x_1-x_3), cos(x_2-x_3), 1]); A
B = matrix(3, 1, [y_3^2*sin(x_1-x_3)-2*y_2^2*sin(x_1-x_2)+3*g*sin(x_1)/l,
                  y_3^2*sin(x_2-x_3)-2*y_1^2*sin(x_1-x_2)+2*g*sin(x_1)/l,
                  y_2^2*sin(x_2-x_3)-y_1^2*sin(x_1-x_3)+g*sin(x_1)/l]); B
︡d1a64f3a-9fd1-4115-9644-dcc4f93f7fb7︡{"stdout":"[               3 2*cos(x_1 - x_2)   cos(x_1 - x_3)]\n[2*cos(x_1 - x_2)                2   cos(x_2 - x_3)]\n[  cos(x_1 - x_3)   cos(x_2 - x_3)                1]\n"}︡{"stdout":"[-2*y_2^2*sin(x_1 - x_2) + y_3^2*sin(x_1 - x_3) + 3*g*sin(x_1)/l]\n[-2*y_1^2*sin(x_1 - x_2) + y_3^2*sin(x_2 - x_3) + 2*g*sin(x_1)/l]\n[    -y_1^2*sin(x_1 - x_3) + y_2^2*sin(x_2 - x_3) + g*sin(x_1)/l]\n"}︡{"done":true}︡
︠9b8fa959-fc4f-4383-911e-8f0924e4d419︠
A^-1 * B
︡90abfd10-6c92-4432-a1b2-2ed4408d1082︡{"stdout":"[1/3*(2*y_2^2*sin(x_1 - x_2) - y_3^2*sin(x_1 - x_3) - 3*g*sin(x_1)/l)*(2*((2*cos(x_1 - x_2)*cos(x_1 - x_3) - 3*cos(x_2 - x_3))*cos(x_1 - x_2)/(2*cos(x_1 - x_2)^2 - 3) - cos(x_1 - x_3))^2/(2*cos(x_1 - x_3)^2 - (2*cos(x_1 - x_2)*cos(x_1 - x_3) - 3*cos(x_2 - x_3))^2/(2*cos(x_1 - x_2)^2 - 3) - 6) + 2*cos(x_1 - x_2)^2/(2*cos(x_1 - x_2)^2 - 3) - 1) - (2*y_1^2*sin(x_1 - x_2) - y_3^2*sin(x_2 - x_3) - 2*g*sin(x_1)/l)*((2*cos(x_1 - x_2)*cos(x_1 - x_3) - 3*cos(x_2 - x_3))*((2*cos(x_1 - x_2)*cos(x_1 - x_3) - 3*cos(x_2 - x_3))*cos(x_1 - x_2)/(2*cos(x_1 - x_2)^2 - 3) - cos(x_1 - x_3))/((2*cos(x_1 - x_2)^2 - 3)*(2*cos(x_1 - x_3)^2 - (2*cos(x_1 - x_2)*cos(x_1 - x_3) - 3*cos(x_2 - x_3))^2/(2*cos(x_1 - x_2)^2 - 3) - 6)) + cos(x_1 - x_2)/(2*cos(x_1 - x_2)^2 - 3)) + 2*(y_1^2*sin(x_1 - x_3) - y_2^2*sin(x_2 - x_3) - g*sin(x_1)/l)*((2*cos(x_1 - x_2)*cos(x_1 - x_3) - 3*cos(x_2 - x_3))*cos(x_1 - x_2)/(2*cos(x_1 - x_2)^2 - 3) - cos(x_1 - x_3))/(2*cos(x_1 - x_3)^2 - (2*cos(x_1 - x_2)*cos(x_1 - x_3) - 3*cos(x_2 - x_3))^2/(2*cos(x_1 - x_2)^2 - 3) - 6)]\n[                                                                                    -(2*y_2^2*sin(x_1 - x_2) - y_3^2*sin(x_1 - x_3) - 3*g*sin(x_1)/l)*((2*cos(x_1 - x_2)*cos(x_1 - x_3) - 3*cos(x_2 - x_3))*((2*cos(x_1 - x_2)*cos(x_1 - x_3) - 3*cos(x_2 - x_3))*cos(x_1 - x_2)/(2*cos(x_1 - x_2)^2 - 3) - cos(x_1 - x_3))/((2*cos(x_1 - x_2)^2 - 3)*(2*cos(x_1 - x_3)^2 - (2*cos(x_1 - x_2)*cos(x_1 - x_3) - 3*cos(x_2 - x_3))^2/(2*cos(x_1 - x_2)^2 - 3) - 6)) + cos(x_1 - x_2)/(2*cos(x_1 - x_2)^2 - 3)) + 3/2*(2*y_1^2*sin(x_1 - x_2) - y_3^2*sin(x_2 - x_3) - 2*g*sin(x_1)/l)*(1/(2*cos(x_1 - x_2)^2 - 3) + (2*cos(x_1 - x_2)*cos(x_1 - x_3) - 3*cos(x_2 - x_3))^2/((2*cos(x_1 - x_2)^2 - 3)^2*(2*cos(x_1 - x_3)^2 - (2*cos(x_1 - x_2)*cos(x_1 - x_3) - 3*cos(x_2 - x_3))^2/(2*cos(x_1 - x_2)^2 - 3) - 6))) - 3*(y_1^2*sin(x_1 - x_3) - y_2^2*sin(x_2 - x_3) - g*sin(x_1)/l)*(2*cos(x_1 - x_2)*cos(x_1 - x_3) - 3*cos(x_2 - x_3))/((2*cos(x_1 - x_2)^2 - 3)*(2*cos(x_1 - x_3)^2 - (2*cos(x_1 - x_2)*cos(x_1 - x_3) - 3*cos(x_2 - x_3))^2/(2*cos(x_1 - x_2)^2 - 3) - 6))]\n[                                                                                                                                                                                                                                                                                                                                    2*(2*y_2^2*sin(x_1 - x_2) - y_3^2*sin(x_1 - x_3) - 3*g*sin(x_1)/l)*((2*cos(x_1 - x_2)*cos(x_1 - x_3) - 3*cos(x_2 - x_3))*cos(x_1 - x_2)/(2*cos(x_1 - x_2)^2 - 3) - cos(x_1 - x_3))/(2*cos(x_1 - x_3)^2 - (2*cos(x_1 - x_2)*cos(x_1 - x_3) - 3*cos(x_2 - x_3))^2/(2*cos(x_1 - x_2)^2 - 3) - 6) + 6*(y_1^2*sin(x_1 - x_3) - y_2^2*sin(x_2 - x_3) - g*sin(x_1)/l)/(2*cos(x_1 - x_3)^2 - (2*cos(x_1 - x_2)*cos(x_1 - x_3) - 3*cos(x_2 - x_3))^2/(2*cos(x_1 - x_2)^2 - 3) - 6) - 3*(2*y_1^2*sin(x_1 - x_2) - y_3^2*sin(x_2 - x_3) - 2*g*sin(x_1)/l)*(2*cos(x_1 - x_2)*cos(x_1 - x_3) - 3*cos(x_2 - x_3))/((2*cos(x_1 - x_2)^2 - 3)*(2*cos(x_1 - x_3)^2 - (2*cos(x_1 - x_2)*cos(x_1 - x_3) - 3*cos(x_2 - x_3))^2/(2*cos(x_1 - x_2)^2 - 3) - 6))]"}︡{"stdout":"\n"}︡{"done":true}︡
︠65d99e5f-ab60-46ac-ae37-3622729ed896s︠
latex(A^-1 * B)
︡f015e30d-4a97-431a-9fcc-198bc51a2a9c︡{"stdout":"\\left(\\begin{array}{r}\n\\frac{1}{3} \\, {\\left(2 \\, y_{2}^{2} \\sin\\left(x_{1} - x_{2}\\right) - y_{3}^{2} \\sin\\left(x_{1} - x_{3}\\right) - \\frac{3 \\, g \\sin\\left(x_{1}\\right)}{l}\\right)} {\\left(\\frac{2 \\, {\\left(\\frac{{\\left(2 \\, \\cos\\left(x_{1} - x_{2}\\right) \\cos\\left(x_{1} - x_{3}\\right) - 3 \\, \\cos\\left(x_{2} - x_{3}\\right)\\right)} \\cos\\left(x_{1} - x_{2}\\right)}{2 \\, \\cos\\left(x_{1} - x_{2}\\right)^{2} - 3} - \\cos\\left(x_{1} - x_{3}\\right)\\right)}^{2}}{2 \\, \\cos\\left(x_{1} - x_{3}\\right)^{2} - \\frac{{\\left(2 \\, \\cos\\left(x_{1} - x_{2}\\right) \\cos\\left(x_{1} - x_{3}\\right) - 3 \\, \\cos\\left(x_{2} - x_{3}\\right)\\right)}^{2}}{2 \\, \\cos\\left(x_{1} - x_{2}\\right)^{2} - 3} - 6} + \\frac{2 \\, \\cos\\left(x_{1} - x_{2}\\right)^{2}}{2 \\, \\cos\\left(x_{1} - x_{2}\\right)^{2} - 3} - 1\\right)} - {\\left(2 \\, y_{1}^{2} \\sin\\left(x_{1} - x_{2}\\right) - y_{3}^{2} \\sin\\left(x_{2} - x_{3}\\right) - \\frac{2 \\, g \\sin\\left(x_{1}\\right)}{l}\\right)} {\\left(\\frac{{\\left(2 \\, \\cos\\left(x_{1} - x_{2}\\right) \\cos\\left(x_{1} - x_{3}\\right) - 3 \\, \\cos\\left(x_{2} - x_{3}\\right)\\right)} {\\left(\\frac{{\\left(2 \\, \\cos\\left(x_{1} - x_{2}\\right) \\cos\\left(x_{1} - x_{3}\\right) - 3 \\, \\cos\\left(x_{2} - x_{3}\\right)\\right)} \\cos\\left(x_{1} - x_{2}\\right)}{2 \\, \\cos\\left(x_{1} - x_{2}\\right)^{2} - 3} - \\cos\\left(x_{1} - x_{3}\\right)\\right)}}{{\\left(2 \\, \\cos\\left(x_{1} - x_{2}\\right)^{2} - 3\\right)} {\\left(2 \\, \\cos\\left(x_{1} - x_{3}\\right)^{2} - \\frac{{\\left(2 \\, \\cos\\left(x_{1} - x_{2}\\right) \\cos\\left(x_{1} - x_{3}\\right) - 3 \\, \\cos\\left(x_{2} - x_{3}\\right)\\right)}^{2}}{2 \\, \\cos\\left(x_{1} - x_{2}\\right)^{2} - 3} - 6\\right)}} + \\frac{\\cos\\left(x_{1} - x_{2}\\right)}{2 \\, \\cos\\left(x_{1} - x_{2}\\right)^{2} - 3}\\right)} + \\frac{2 \\, {\\left(y_{1}^{2} \\sin\\left(x_{1} - x_{3}\\right) - y_{2}^{2} \\sin\\left(x_{2} - x_{3}\\right) - \\frac{g \\sin\\left(x_{1}\\right)}{l}\\right)} {\\left(\\frac{{\\left(2 \\, \\cos\\left(x_{1} - x_{2}\\right) \\cos\\left(x_{1} - x_{3}\\right) - 3 \\, \\cos\\left(x_{2} - x_{3}\\right)\\right)} \\cos\\left(x_{1} - x_{2}\\right)}{2 \\, \\cos\\left(x_{1} - x_{2}\\right)^{2} - 3} - \\cos\\left(x_{1} - x_{3}\\right)\\right)}}{2 \\, \\cos\\left(x_{1} - x_{3}\\right)^{2} - \\frac{{\\left(2 \\, \\cos\\left(x_{1} - x_{2}\\right) \\cos\\left(x_{1} - x_{3}\\right) - 3 \\, \\cos\\left(x_{2} - x_{3}\\right)\\right)}^{2}}{2 \\, \\cos\\left(x_{1} - x_{2}\\right)^{2} - 3} - 6} \\\\\n-{\\left(2 \\, y_{2}^{2} \\sin\\left(x_{1} - x_{2}\\right) - y_{3}^{2} \\sin\\left(x_{1} - x_{3}\\right) - \\frac{3 \\, g \\sin\\left(x_{1}\\right)}{l}\\right)} {\\left(\\frac{{\\left(2 \\, \\cos\\left(x_{1} - x_{2}\\right) \\cos\\left(x_{1} - x_{3}\\right) - 3 \\, \\cos\\left(x_{2} - x_{3}\\right)\\right)} {\\left(\\frac{{\\left(2 \\, \\cos\\left(x_{1} - x_{2}\\right) \\cos\\left(x_{1} - x_{3}\\right) - 3 \\, \\cos\\left(x_{2} - x_{3}\\right)\\right)} \\cos\\left(x_{1} - x_{2}\\right)}{2 \\, \\cos\\left(x_{1} - x_{2}\\right)^{2} - 3} - \\cos\\left(x_{1} - x_{3}\\right)\\right)}}{{\\left(2 \\, \\cos\\left(x_{1} - x_{2}\\right)^{2} - 3\\right)} {\\left(2 \\, \\cos\\left(x_{1} - x_{3}\\right)^{2} - \\frac{{\\left(2 \\, \\cos\\left(x_{1} - x_{2}\\right) \\cos\\left(x_{1} - x_{3}\\right) - 3 \\, \\cos\\left(x_{2} - x_{3}\\right)\\right)}^{2}}{2 \\, \\cos\\left(x_{1} - x_{2}\\right)^{2} - 3} - 6\\right)}} + \\frac{\\cos\\left(x_{1} - x_{2}\\right)}{2 \\, \\cos\\left(x_{1} - x_{2}\\right)^{2} - 3}\\right)} + \\frac{3}{2} \\, {\\left(2 \\, y_{1}^{2} \\sin\\left(x_{1} - x_{2}\\right) - y_{3}^{2} \\sin\\left(x_{2} - x_{3}\\right) - \\frac{2 \\, g \\sin\\left(x_{1}\\right)}{l}\\right)} {\\left(\\frac{1}{2 \\, \\cos\\left(x_{1} - x_{2}\\right)^{2} - 3} + \\frac{{\\left(2 \\, \\cos\\left(x_{1} - x_{2}\\right) \\cos\\left(x_{1} - x_{3}\\right) - 3 \\, \\cos\\left(x_{2} - x_{3}\\right)\\right)}^{2}}{{\\left(2 \\, \\cos\\left(x_{1} - x_{2}\\right)^{2} - 3\\right)}^{2} {\\left(2 \\, \\cos\\left(x_{1} - x_{3}\\right)^{2} - \\frac{{\\left(2 \\, \\cos\\left(x_{1} - x_{2}\\right) \\cos\\left(x_{1} - x_{3}\\right) - 3 \\, \\cos\\left(x_{2} - x_{3}\\right)\\right)}^{2}}{2 \\, \\cos\\left(x_{1} - x_{2}\\right)^{2} - 3} - 6\\right)}}\\right)} - \\frac{3 \\, {\\left(y_{1}^{2} \\sin\\left(x_{1} - x_{3}\\right) - y_{2}^{2} \\sin\\left(x_{2} - x_{3}\\right) - \\frac{g \\sin\\left(x_{1}\\right)}{l}\\right)} {\\left(2 \\, \\cos\\left(x_{1} - x_{2}\\right) \\cos\\left(x_{1} - x_{3}\\right) - 3 \\, \\cos\\left(x_{2} - x_{3}\\right)\\right)}}{{\\left(2 \\, \\cos\\left(x_{1} - x_{2}\\right)^{2} - 3\\right)} {\\left(2 \\, \\cos\\left(x_{1} - x_{3}\\right)^{2} - \\frac{{\\left(2 \\, \\cos\\left(x_{1} - x_{2}\\right) \\cos\\left(x_{1} - x_{3}\\right) - 3 \\, \\cos\\left(x_{2} - x_{3}\\right)\\right)}^{2}}{2 \\, \\cos\\left(x_{1} - x_{2}\\right)^{2} - 3} - 6\\right)}} \\\\\n\\frac{2 \\, {\\left(2 \\, y_{2}^{2} \\sin\\left(x_{1} - x_{2}\\right) - y_{3}^{2} \\sin\\left(x_{1} - x_{3}\\right) - \\frac{3 \\, g \\sin\\left(x_{1}\\right)}{l}\\right)} {\\left(\\frac{{\\left(2 \\, \\cos\\left(x_{1} - x_{2}\\right) \\cos\\left(x_{1} - x_{3}\\right) - 3 \\, \\cos\\left(x_{2} - x_{3}\\right)\\right)} \\cos\\left(x_{1} - x_{2}\\right)}{2 \\, \\cos\\left(x_{1} - x_{2}\\right)^{2} - 3} - \\cos\\left(x_{1} - x_{3}\\right)\\right)}}{2 \\, \\cos\\left(x_{1} - x_{3}\\right)^{2} - \\frac{{\\left(2 \\, \\cos\\left(x_{1} - x_{2}\\right) \\cos\\left(x_{1} - x_{3}\\right) - 3 \\, \\cos\\left(x_{2} - x_{3}\\right)\\right)}^{2}}{2 \\, \\cos\\left(x_{1} - x_{2}\\right)^{2} - 3} - 6} + \\frac{6 \\, {\\left(y_{1}^{2} \\sin\\left(x_{1} - x_{3}\\right) - y_{2}^{2} \\sin\\left(x_{2} - x_{3}\\right) - \\frac{g \\sin\\left(x_{1}\\right)}{l}\\right)}}{2 \\, \\cos\\left(x_{1} - x_{3}\\right)^{2} - \\frac{{\\left(2 \\, \\cos\\left(x_{1} - x_{2}\\right) \\cos\\left(x_{1} - x_{3}\\right) - 3 \\, \\cos\\left(x_{2} - x_{3}\\right)\\right)}^{2}}{2 \\, \\cos\\left(x_{1} - x_{2}\\right)^{2} - 3} - 6} - \\frac{3 \\, {\\left(2 \\, y_{1}^{2} \\sin\\left(x_{1} - x_{2}\\right) - y_{3}^{2} \\sin\\left(x_{2} - x_{3}\\right) - \\frac{2 \\, g \\sin\\left(x_{1}\\right)}{l}\\right)} {\\left(2 \\, \\cos\\left(x_{1} - x_{2}\\right) \\cos\\left(x_{1} - x_{3}\\right) - 3 \\, \\cos\\left(x_{2} - x_{3}\\right)\\right)}}{{\\left(2 \\, \\cos\\left(x_{1} - x_{2}\\right)^{2} - 3\\right)} {\\left(2 \\, \\cos\\left(x_{1} - x_{3}\\right)^{2} - \\frac{{\\left(2 \\, \\cos\\left(x_{1} - x_{2}\\right) \\cos\\left(x_{1} - x_{3}\\right) - 3 \\, \\cos\\left(x_{2} - x_{3}\\right)\\right)}^{2}}{2 \\, \\cos\\left(x_{1} - x_{2}\\right)^{2} - 3} - 6\\right)}}\n\\end{array}\\right)"}︡{"stdout":"\n"}︡{"done":true}︡
︠2e64fe3c-64dd-4fab-b852-8172a4c96cf5︠








