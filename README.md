The 8 Queen problem was solved by using the hill climbing method and the used platform was MATLAB.

Here all the queens were placed on the top most row and the cost were calculated for each queen when it 
is moved one square in the column in which is placed. Next one of the queen was moved towards the least cost square. 
The movement was done only inside a column. The above mention step was done again and again until the cost was minimum. 
After calculating the cost there were some positions with the same least cost number. It was chosen at random.

Therefore, the least heuristic cost did not achieve the global minimum (i.e. hs =0). 
Therefore, until the cost is zero the program runs. i.e until the queens are placed in such manner that they do not threaten each other. 
Therefore, there might be more iterations than settling in a local minimum. 
The hill climbing method is a greedy one. In other words, it settles on the best that it could get. 
Therefore, it might settle in a local minimum than a global one. It is one of the disadvantages of hill climbing. 
The cost of the local minima or maxima and the subsequent point’s cost has a significant difference. 
Therefore, it is settled in the local point.

* State: A board with 8 queens
*	Successor function: move a single queen to any other square in same column
*	Heuristic value: n number of pairs of queens attacking each other
