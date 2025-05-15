% Facts: Define percepts for traffic light colors
percept(red,stop).
percept(yellow,slow_down).
percept(green,go).

% Rules: Determine action based on traffic light color
action(Color, Action) :- percept(Color,Action).
