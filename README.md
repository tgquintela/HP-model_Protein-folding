HP model Protein folding
========================

Project developed in the context of the CI subject of MAI which tries to tackle the problem of the protein folding in a [HP model](https://en.wikipedia.org/wiki/Hydrophobic-polar_protein_folding_model)
In order to solve the optimization problem under the constraint of self-avoiding paths is used Genetic Algorithms with the needed complementary functions.

Code
====

It uses the optimtool of matlab for support the execution of the code. The main functions are:
* energy function: It fills a square space using the indications of the conformation and searching
in the neighbors of each H aminoacid to measure the energy.
* initialization: There are two posible implemented: Random coils and fully extended.4 In fully
extended way all the conformation of all the populations are ’s’. In Random coils we try to fill
space aminoacid by aminoacid in order try to selecting from a random ordering posible directions.
If it is not posible to continue the process is reset.
* mutation: The posible mutations are selected randomly. There are a threshold tunable. It call the
function acceptance which implements the decision described before.
* crossover:It is only implemented the 1-point crossover. It also call to acceptance.

TODO
====
* The mutation with simmulated annealing (evolve temperature along time)
* Give structure to the code.
* Speed up the program.
