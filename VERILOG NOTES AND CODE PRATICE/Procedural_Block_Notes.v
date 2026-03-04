Procedural Assignments: (More Explanation : https://chatgpt.com/c/69a125f4-cc50-83aa-9cab-877b24cce494)
   
     In the dataflow modeling, a continuous assignment statement is discussed where LHS expression is always updated for changes in RHS expression. Refer to continuous assignment for more details. In the case of procedural assignment, the LHS variable remains unchanged until the same value is updated by the next procedural statement.

      Syntax : <variable> = <expression or value>

      1.RHS expression can be a value or an expression that evaluates to a value.
      2.LHS expression can be reg, integer, real, time-variable, or memory element.
      3.The procedural assignments can be placed inside procedural blocks like initial and always blocks. They can also       be placed inside tasks and functions. 
      4.The procedural assignments can also be placed directly inside a module while declaring a variable.
      (Ex. reg [3:0] i_data = 4’h7)

There are two types of procedural assignments and both of them are widely used in the designs written in the Verilog language.

    1.Blocking assignments
    2.Non-blocking assignments

Blocking Assignments:
    The blocking assignment statements are executed sequentially by evaluating the RHS operand and finishes the             assignment to LHS operand without any interruption from another Verilog statement. Hence, it blocks other               assignments until the current assignment completes and is named as “blocking assignment”. 

    An equal ‘=’ is used as a symbol for the blocking assignment operator.
   
    Syntax : <variable> = <expression or value>
    => A blocking assignment does not block the execution of a statement in another procedural block. For example, two  initial blocks start execution at the same simulation time. A blocking assignment in the first initial block does not   block execution in another initial block.

Race around condition: A problem with blocking assignment:
     If a variable is used in LHS of blocking assignment in one procedural block and the same variable is used in RHS of another blocking assignment in another procedural block. The race-around condition can occur as an order of execution 
is unknown if both statements are scheduled at the same simulation time.

Non Blocking Proceduaral assignments:

    The non-blocking assignment statement starts its execution by evaluating the RHS operand at the beginning of a time slot and schedules its update to the LHS operand at the end of a time slot. Other Verilog statements can be executed between the evaluation of the RHS operand and the update of the LHS operand. As it does not block other Verilog statement assignments, it is called a non-blocking assignment.

   A less than or equal to ‘<=’ is used as a symbol for the non-blocking assignment operator.

Note:

    => If <= symbol is used in an expression then it is interpreted as a relational operator. 
    => If <= symbol is used in an assignment then it is interpreted as a non blocking operator.

How race around condition is resolved in a nonblocking assignment?
    
    If a variable is used in LHS of blocking assignment in one procedural block and the same variable is used in RHS of another blocking assignment in another procedural block.

   Since procedural blocks (both initial and always) can be executed in any order.

In a non-blocking assignment statement no matter what is the order of execution, both RHS of the assignments (y <= data and data <= y) are evaluated at the beginning of the timeslot and LHS operands are updated at the end of a time slot. 
Thus, race around condition is avoided as there is no dependency on execution order and the order of execution of these two statements can be said to happen parallelly. 

Verilog procedural assignment guidelines:

For a beginner in Verilog, blocking and non-blocking assignments may create confusion.If are used blindly, it may create race conditions or incorrect synthesizable design. Hence, it is important to understand how to use them. To achieve 
synthesized RTL correctly, Verilog coding guidelines for blocking and non-blocking assignments are mentioned below

     1.Use non-blocking assignments for modeling flip flops, latches, and sequential logic.
     2.Use blocking assignment to implement combinational logic in always block.
     3.Use non-blocking assignment to implement sequential logic in always block.
     4.Do not mix blocking and non-blocking assignments in single always block i.e. For the implementation of sequential and combination logic in a single ‘always’ block, use non-blocking assignments.
     5.Do not assign value to the same variable in the different procedural blocks.
     6.Use non-blocking assignments while modeling both combination and sequential logic within the same always block.
     7.Avoid using #0 delay in the assignments.
