Dataflow Modeling: (More details : https://vlsiverify.com/verilog/data-flow-modeling/ & https://chatgpt.com/c/699fbcd4-9ef4-83a9-a0fe-f9adeba749c2)

     Though gate-level modeling is easy to implement for the designs when the number of gates becomes more in the design, it becomes difficult for the implementation. Hence, higher-level abstraction is required for design implementation.

The data flow modeling provides a way to design circuits depending on how data flow between the registers and how data 
is processed

Continuous assignment

      In data flow modeling, a continuous assignment is used to drive a value to a net or wire. A continuous assignment statement is represented by an ‘assign’ statement.
       Syntax : assign <drive_strength> <expression or net> = <delay> <constant value or expression>

Note: 

    => The drive_strength and delay both are optional to use. The R.H.S. expression is evaluated and assigned to the 
       L.H.S. expression.
    => Since ‘assign’ statements are always active, they are known as continuous assignments.
    => In an implicit continuous assignment, Verilog provides flexibility to combine net declaration and assign                statement. Both regular and implicit continuous assignments have no difference in terms of outcome

Rules and characteristics of continuous assignment
    => The L.H.S. of an assignment must be always a vector or scalar net or a concatenation of vector or scalar nets. It       can not be a vector or scalar register.
    => The R.H.S. of an assignment can be registers or nets or function calls. Here, registers or nets can be vectors or       scalars.
    => Since continuous assignments are always active, as soon as the R.H.S. operand has any changes, it assigns to the        L.H.S. operand.

         assign LHS = RHS

LHS must be: i]Vector or scalar net ii]Concatenation of vector or scalar net
RHS can be: i]Vector or scalar register ii]Function call

Delays in continuous assignment

The delay value specified in the ‘assign’ statement controls the timing effect on the L.H.S. operand when the R.H.S. operand has any changes.

Verilog allows specifying delays in three ways and all of them have the same effect.

A. Regular assignment delay
wire result;
assign #5 result = i1 ^ i2;

B. Implicit continuous assignment delay
wire #5 result = i1 ^ i2;

C. Net declaration delay
wire #5 result;
assign result = i1 ^ i2;

