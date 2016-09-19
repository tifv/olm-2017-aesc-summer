access graph;
import geometry;

size(4cm);

pen gray = gray(0.8);

real a = -0.7, b = 1.5;
point A = (a, a^2), B = (b, b^2);
point C = ((a+b)/2, a * b);
point M = (A+B)/2, T = (M+C)/2;

guide parabola = graph.graph(
    f = new real (real x) {return x^2;},
    a = a - 0.5, b = b + 0.1
);

draw(parabola, p=linewidth(1));

//graph.xaxis(above=true);

draw(line((A+C)/2, (B+C)/2), p=gray(0.5));
draw(A--B ^^ C--M);

dot(Label("$A$", A, WSW));
dot(Label("$B$", B, ESE));
dot(Label("$C$", C, 1.5WSW));
dot(Label("$M$", M, NW));
dot(Label("$T$", T, WNW));

draw(line(A, C));
draw(line(B, C));

draw(A--M, marker(markinterval(stickframe)), p=invisible);
draw(M--B, marker(markinterval(stickframe)), p=invisible);

draw(C--T, marker(markinterval(tildeframe, rotated=true)), p=invisible);
draw(T--M, marker(markinterval(tildeframe, rotated=true)), p=invisible);

