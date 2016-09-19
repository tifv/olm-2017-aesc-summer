access graph;

size(3cm);

pen gray = gray(0.8);

int n = 5;

guide parabolaAB = graph.graph(
    f = new real (real x) {return x^2;},
    a = 0, b = 1
);

guide parabola = graph.graph(
    f = new real (real x) {return x^2;},
    a = 0 - 0.15, b = 1 + 0.05
);

fill(parabolaAB--(1,0)--cycle, p=gray);

draw(parabola, p=linewidth(1));

graph.xaxis(above=true);
graph.yaxis(above=true);

label("$0$", (0,0), SW);
label("$a$", (1,0), S);

for (int k = 0; k < n; ++k) {
    real
        x1 = (1.0 * k / n), x2 = (1.0 * (k+1) / n),
        y1 = x1 * x1, y2 = x2 * x2;
    draw((x1,0)--(x2,0)--(x2,y2)--(x1,y2)--cycle ^^ (x1,y1)--(x2,y1));
}

