Verilog Operator: (More Explanation : https://chatgpt.com/c/69a00ae3-52d8-83a6-af12-ae35213c0aed)

      The Verilog operators are similar to the C programming language operator that is used to produce results based on the required operation.

1. Arithmetic operators

Operators       Number of Operands      Description

  +                    2                Addition

  -                    2                Subtraction

  *                    2                Multiplication    

  /                    2                Division

  **                   2                Raised to the power

  %                    2                modulus produces the remainder of the division of two numbers.The outcome takes                                         the sign of the first operand. 

2. Logical Operators

Operators       Number of Operands      Description

  !                    2                Logical negation

  &&                   2                Logical and 

  ||                   2                Logical or

3. Equality Operators

Operators       Number of Operands      Description

  ==                   2                Equality

  !=                   2                Inequality

  ===                  2                Case Equality

  !==                  2                Case Inequality
  => The equality and inequality operator compares two operands bit by bit and results to 1 or 0 if true or false respectively. They will return value as ‘x’ if either operand has x or z bits.
  => The case equality and case inequality compares two operands bit by bit even for x and z bits and results in 1 or 0 if true or false respectively. They perform an exact bit-by-bit comparison. If any of the bits is not matched, the result will be 0 (false).
  => For unequal length in operands, it fills zeroes at MSB, and a comparison is performed.
  => The key difference between equality and case equality is in terms of producing results. The case equality never produces an ‘x’ result whereas equality will produce an ‘x’ result if any of the operands has ‘x’ bits.

4.Relational Operators

Operators       Number of Operands       Description

  >                    2                 Greater than

  <                    2                 Less than

  >=                   2                 Greater than or Equal to

  <=                   2                 Less than or Equal to

The relational operation is performed on two operands to returns 1 if the expression is true, otherwise returns 0 if the expression is false.

Note: The ‘z’ is treated as ‘x’ in a relational operation.

5. Bitwise Operators

Operators       Number of Operands       Description

  &                    2                 Bitwise And

  |                    2                 Bitwise Or

  ^                    2                 Bitwise Xor

  ~                    1                 Bitwise negation

  ^~ or ~^             2                 Bitwise Xnor
  => he bitwise operator performs bit by bit operation on one operand and a corresponding bit on the other operand. For any mismatch in length, extra zeros are appended.

  Note: 
      => The ‘z’ is treated as ‘x’ in a bitwise operation.
      => The bitwise operators (&, |, ~) performs bit-by-bit operation whereas logical operator (&&, ||, ! ) performs a          logical operation.

6. Conditional Operator

Operators        Number of Operands      Description

  ?                    3                 Conditional

  Syntax : <result> = <conditional_expression> ? <true_expression> : <false_expression>
  The <conditional_expression> is evaluated first. If the result is
  1.True, then <true_expression> is evaluated.
  2.False, then <false_expression> is evaluated.
  3.X (ambiguous ) then both <true_expression> and <false_expression> are evaluated and their results are compared bit    by bit. Each bit position of outcome is returned as 
  a. bit value if both bits are the same.
  b. X if bit value differs.

7. Shift Operators

Operators       Number of Operands      Description

  <<                  2                 Logical left shift

  >>                  2                 Logical right shift

  <<<                 2                 Arithmetic left shift

  >>>                 2                 Arithmetic right shift

  Logical shift: Logical shift operators shift a vector to left or right by a specified number of bits and fill vacant                   bit positions with zeros.
  Arithmetic shift: Arithmetic shift operators shift a vector to left or right by a specified number of bits and fill va                 cant bit positions with sign bit if an expression is signed and right shift is intended, otherwise with                 zeros
  Note: Shift operators do not wrap around.

8. Reduction Operators

operators      Number of operands       Description

  &                   1                 Reduction And

  |                   1                 Reduction Or

  ^                   1                 Reduction Xor

  ~&                  1                 Reduction Nand

  ~|                  1                 Reduction Nor

  ^~ or ~^            1                 Reduction Xnor
  => The reduction operators give 1-bit output by performing the bitwise operation over a single vector operand.
Note: 
     => Reduction operators work bit by bit from right to left.
     => Results of reduction nand, reduction nor and reduction xnor are inverted versions of results of reduction and, 
        reduction or and reduction xor.

9. Concatenation operators

Operators      Number of operands       Description

  {}               'N'                  Concatenation
  => The multiple operands can be appended using a concatenation operator. The operands have to be written in braces and separate themselves with commas.
  Note:
       => Operands can be vector/scalar registers or nets, sized constants, bit-select.
       => Unsized operands are not allowed because computed result size is dependent on each operand size.

10. Replication operators

Operators      Number of Operands       Description 

 { {} }              'N'                Replication

Note: 
    => It is recommended to use parentheses in the expressions to avoid ambiguity.
    => If parentheses are not used then precedence order is followed as


Arithmetic operator (Highest precedence) -> Relational operator -> equality operator -> reduction operator -> logical operator -> conditional operator (Lowest precedence).
