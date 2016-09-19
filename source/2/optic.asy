access graph;
import geometry;

size(3cm);

pen gray = gray(0.8);

point pF = (0, 1/4);
line directrix = parallel(M=(0,-1/4), E);

guide parabola = graph.graph(
    f = new real (real x) {return x^2;},
    a = -1.1, b = +1.1
);

for (int i = 0; i < 27; ++i) {
    real x = unitrand() * 2 - 1;
    point pM = (x, x^2);
    line ray = parallel(M=pM, N);
    ray.extendA = false;
    draw(ray, gray);
    draw(pM--pF, gray);
}

draw(parabola, p=linewidth(1));

draw(directrix);
dot(pF);

real tau = 0.65;
point pA = (tau, tau^2), pB = projection(directrix) * pA;

draw(pF--pA ^^ pA--pB, TildeIntervalMarker(1, 1));

