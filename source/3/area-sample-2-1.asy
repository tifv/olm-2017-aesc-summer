access graph;

size(3cm);

pen gray = gray(0.8);

guide parabolaAB = graph.graph(
    f = new real (real x) {return 1-x^2;},
    a = -1, b = 0
);

guide parabola = graph.graph(
    f = new real (real x) {return 1-x^2;},
    a = -1 - 0.1, b = 0 + 0.1
);

fill(parabolaAB--(-1/2,1)--cycle, p=gray);

draw(parabola, p=linewidth(1));

draw((-1,0)--(-1/2,1)--(0,1));

graph.xaxis(above=true);
graph.yaxis(above=true);

label("$0$", (0, 0), SW);
dot(Label("$-1$", (-1, 0), SE));
//dot(Label("$1$", (1, 0), SW));

dot(Label("$1$", (0, 1), (SW+SSW)));
//dot(Label("$2$", (0, 2), 1.5WNW));

