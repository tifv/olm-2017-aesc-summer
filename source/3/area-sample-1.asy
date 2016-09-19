access graph;

size(4cm);

pen gray = gray(0.8);


guide parabolaAB = graph.graph(
    f = new real (real x) {return x^2;},
    a = 0, b = 1
);

guide parabolaBA = graph.graph(
    f = new real (real x) {return 1 - (1 - x)^2;},
    a = 1, b = 0
);

guide parabola_bot = graph.graph(
    f = new real (real x) {return x^2;},
    a = 0 - 0.5, b = 1 + 0.25
);

guide parabola_top = graph.graph(
    f = new real (real x) {return 1 - (1 - x)^2;},
    a = 1 + 0.5, b = 0 - 0.25
);

fill(parabolaAB--parabolaBA--cycle, p=gray);

draw(parabola_bot ^^ parabola_top, p=linewidth(1));

draw((1,1)--(0,1) ^^ (1,1)--(1,0));

graph.xaxis(above=true);
graph.yaxis(above=true);

label("$0$", (0,0), SE);
label("$1$", (1,0), S);
label("$1$", (0,1), W);

