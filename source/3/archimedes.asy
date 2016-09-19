access graph;
import geometry;

size(4cm);

pen gray = gray(0.8);

real a = -0.7, b = 1.5;
point A = (a, a^2), B = (b, b^2);
point C = ((a+b)/2, a * b);

guide parabolaAB = graph.graph(
    f = new real (real x) {return x^2;},
    a = a, b = b
);

guide parabola = graph.graph(
    f = new real (real x) {return x^2;},
    a = a - 0.5, b = b + 0.1
);

fill(parabolaAB--cycle, p=gray);

draw(parabola, p=linewidth(1));

graph.xaxis(above=true);

draw((a,0)--A--B--(b,0));

dot(Label("$A$", A, WSW));
dot(Label("$B$", B, ESE));
dot(Label("$C$", C, 1.5WSW));

label("$a$", (a,0), S);
label("$b$", (b,0), S);

draw(line(A, C));
draw(line(B, C));

