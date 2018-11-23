---
layout: post
title:  "Finite State Machines"
date:   2018-11-23 12:34:00 +0800
categories: computer science

---


***

Right now I'm making a little game for my 3-year-old using the Javascript library [p5.js](https://p5js.org/). It's a nice little project that's fun and throws me some interesting challenges.

One problem with making a game, or any complex program, is managing state. My usual solution to this is to have a global variable called isPlaying and assign a boolean. We can check what state we are in and change its value depending on where we are in the flow of the program.

Unfortunately, this quickly gets out of hand and we soon have a bunch of these variables representing nested or overlapping states in our gane. Forgetting to update them or changing their value in the wrong place causes confusing bugs that are hard to track down.

One antidote to this malady is the [Fintie State Machine](https://en.wikipedia.org/wiki/Finite-state_machine#Concepts_and_terminology) (FSM) or finite-state automaton (FSA, plural: automata), finite automaton, or simply a state machine. 

> "[A Finite-state machine] is a mathematical model of computation. It is an abstract machine that can be in exactly one of a finite number of states at any given time. The FSM can change from one state to another in response to some external inputs; the change from one state to another is called a transition."
*Wikipedia, Finite-State Machine*

State machines work like vending machines or traffic lights. They have some current state like "waiting for sufficient funds", "dispensing drink"; "red", or "green". The machine can only be in one state at any one time so the traffic light can't be "red" **and** "green" at the same time. Likewise, our vending machine can't be "waiting for sufficient funds" and "dispensing drink" at the same time.

This allows us to stop holding state in our heads and mangaing it with global variables. Instead we can decide what the states are in advance and limit the abilities of our program to only those appropriate to the current state.

In practice, this might look like a state machine object whose currentState property holds a reference to one of a collection of State objects. The interface for our state machine has methods for setting the state and updating the state machine. This update method just delegates the call to the currentState's update method which means we only ever run the code in the State object itself.

In Javascript we can pass "this" as an argument into the call to the State object's update method so we have a reference back to the state machine. We'll need that, because it will be the job of the current state to decide when it's time to transition to the next state and which state it will be. 

The state, as we've seen already, has its own update method which contains our actual code for getting things done, like moving stuff around the screen or showing a menu. It also has some flow control to decide which state will come next and if we are ready to make the transition. Has our character killed the monster? Transition to the next level. Has she taken too much damage? Transition to Game Over.

So, state machines are very nice for managing state and reducing your cognitive load. They're less brittle and less prone to bugs. They help us reason about state more easily. Based on the current state and some input or condition we can transition to the next.

This is pretty useful by itself. But there is one problem. We have no memory of the state we transitioned from. If we want interrupt our current state and then go back to it once we're finished we don't know which of our states we shoud return to.

An example of this might be a "pause menu" in a game or an AI state for a non-playing character that says "fight a player when they are near then go back to what you were doing (whatever that was)".

One solution is to use a [stack](https://en.wikipedia.org/wiki/Stack_(abstract_data_type)). Stacks are Last In - First Out structures just like a stack of plates at a cafeteria. To solve our problem we can use a stack of states instead of a property. When we enter a state we add it to the top of the stack and when we want to temporarily enter another state we add that state to the top. When we've finished our detour we can pop the temporary state off the stack and our previous state will be waiting for us.

For an example of state machine in action check out my [Ant Brain](https://github.com/OsakaStarbux/Finite-State-Machine-Ant-Brain)!
