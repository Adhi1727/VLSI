Gate Level Modelling:  (FOR MORE EXPLANATION: https://vlsiverify.com/verilog/data-flow-modeling/)
       The module implementation is similar to the gate-level design description in terms of logic gates and interconnections between them. It is a low-level abstraction that describes design in terms of gates.

Verilog supports some predefined basic gates (commonly knowns as primitives) as follows

Gate_Type        Syntax                 Description
     
AND gate         and g(out,a,b);        Output is High when Two input are High

OR gate          or g(out,a,b);         Output is High when One input are High

NOT gate         not g(out,a);          Output is an ivert of Input

NAND gate        nand g(out,a,b);       Output is invert of AND gate

NOR gate         nor g(Out,a,b);        Output is invert of OR gate

XOR gate         xor g(out,a,b);        Output is High when two Input are differnt

XNOR gate        xnor g(out,a,b);       output is Invert of XOR gate

BUFFER           buf g(out,a);          Input drives to output with some delay

BUFIF1           bufif1 g(out,a,en)     If control 1 input drives to output, if control 0 output will be "Z"

NOTIF1           notif1 g(out,a,en)     If control 1 input drives to output, if control 0 output will be "Z"

BUFIF0           bufif0 g(out,a,en)     If control 0 input drives to output, if control 1 output will be "Z"

NOTIF0           notif0 g(out,a,en)     If control 0 input drives to output, if control 1 output will be "Z"



Delays in Gate level
       In the real world, digital gates have delays involved for inputs propagating to the output with gate operation, and the same delay can be modeled in Verilog. A pin-to-pin delay can also be modeled in Verilog. 

The three types of delays can be specified for delays from inputs to the primitive gate output as the rise, fall, and turn-off delays

Delays           Definition

Rise delay       The delay associated or time is taken for the output of the gate to change to 1 from some value (0, x,                  or z).

Fall delay       The delay associated or time is taken for the output of the gate to change to 0 from some value (1, x,                  or z).

Turn-Off delay	 The delay associated or time is taken for the output of the gate to change to z from some value.

Delay Specification Types

Delay Specification       Used for                                Syntax

One delay                 all three transitions.                  #(delay)

Two delay                 rise and fall transitions.              #(rise, fall)

Three delay               rise, fall, and turn-off transitions.   #(rise, fall, turn-off)
