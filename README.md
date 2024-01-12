# Kent Beck's Best Practice Patterns in Ruby

This repo contains patterns from Kent Beck's book *Smalltalk Best Practice Patterns* implemented in Ruby. This is purely for educational purposes, allowing me to study both Ruby and these patterns simultaneously. While all Ruby code is written by me, credit for the patterns and concepts themselves belong entirely to Kent Beck.

## Behavior

> Objects model the world through behavior and state. Behavior is the dynamic, active, computational part of the model. State is what is left after behavior is done, how the model is represented before, after, and during a computation. Of the two, behavior is the more important to get right. 

Beck, Kent. Smalltalk Best Practice Patterns (19)

## Messages

> Messages are the heartbeat of a Smalltalk program...When you learn to see your program in terms of patterns of messages and you learn what can be done to that stream of messages to solve problems, then you will be able to solve any problem you can imagine in Smalltalk.

Beck, Kent. Smalltalk Best Practice Patterns (43)

## State

> In the dawn of computing time, state was all there was...the first thing electronic computing did was make state virtual...the stored program computer changed all this. Now, the manipulations and the state were on par...The enormous cost of [early programs with lots of functions modifying lots of state] led to a backlash. Programs as state were bad. State must be bad too. This led to the development of functional programming, where there is no state, only programs. In spite of their conceptual and mathematical elegance, functional programming languages never caught on for commercial software. The problem is that programmers think and model in terms of state...Objects represent a middle ground. State is good, but only when properly managed.

Beck, Kent. Smalltalk Best Practice Patterns (80-81)
