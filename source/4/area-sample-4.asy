access graph;

size(4cm);

pen gray = gray(0.8);

guide cubabolaAB = graph.graph(
    f = new real (real x) {return x^3;},
    a = 0, b = 1
);

guide cubabola = graph.graph(
    f = new real (real x) {return x^3;},
    a = -1 - 0.1, b = 1 + 0.1
);

transform t = reflect((0,0), (1,1));

fill(
    cubabolaAB--reverse(t * cubabolaAB)--cycle,
    p=gray
);

draw(cubabola, p=linewidth(1));
draw(t * cubabola, p=linewidth(1));

draw((1,1)--(1,0) ^^ (1,1)--(0,1), dashed);

graph.xaxis(above=true);
graph.yaxis(above=true);

label("$0$", (0, 0), SW);
//dot(Label("$-1$", (-1, 0), SW));
dot(Label("$1$", (1, 0), SE));

//dot(Label("$1$", (0, 1), (SW+SSW)));
//dot(Label("$2$", (0, 2), 1.5WNW));

//dot((-1, 1));
dot((1, 1));


