// Lexical conversation => The lexical tokens used in Verilog and C language are similar. They are specified as numbers, strings, identifiers, comments, delimiters, and keywords.

1] Numbers
      
     he numbers can be specified in two ways
     i] Sized number
       Syntax : <size>'<base><value>
       Parts:
         size → number of bits
         ' → apostrophe
         base → b, o, d, h
         value → actual number
       Example:
         4'b1010     // 4-bit binary
         8'd25       // 8-bit decimal
         16'hA3F2    // 16-bit hexadecimal
         6'o45       // 6-bit octal
      
     ii] Unsized number
         Syntax : '<base><value>
         Example:
          'd15
          'hFF
          'b1010
          => Default size is usually 32 bits (depends on simulator).
          => In case of unsized numbers, if base_format is not specified, then it is treated as a decimal format.

2] Comments => Comments are notes written inside a program to explain the code
   Two types 
   i]Single line comment => Single line comment starts with //
     Example : // writing inside the double slash will be consider as comments
   ii] Multiple lines comment => Multiple lines can be enclosed as comments within /* and */. Multiple lines can not be nested
     Not allowed => /* Outer comment
                       /* Inner comment */
                          Still inside outer
                    */

3] Whitespace
         Verilog whitespace includes blank space(\b), tabs(\t) and newline(\n). They are ignored by Verilog except when it separates the tokens. They are not ignored in the strings. They are used for code indentation(space at the begining) as well.
        Example : $display("Hello   World"); => $display("Hello World"); (Increase readability and code neatness)

4] Operators => Operators are symbols used to perform operations on operands (variables or values).
    Three types 
    i] Unary => Appear before the operand.
     Example : Y = ~x; // ~ is an operator (Which is bitwise not ~4'b0110 => 4'b1001)
    ii] Binary => Appear between two operands.
     Example : Y = x || y // || is an operator between x and y
    iii] Ternary => Two separate operators appear to separate three operands
     Example : Z = (a < b)?x:y;

5] Strings 
      A string is a set of characters that are typically mentioned within double-quotes (” “). Each character in a string requires 1 byte to store. They can not be divided into multiple lines.

Example:"Hello World" // Requires 11 bytes to store 11 characters.

6] Identifiers
     The identifiers are the names given to the objects that can be referenced in the design.

     => They are case-sensitive and made up of alphanumeric characters (A to Z, a to z, 0 to 9), the underscore ( _ ), a        nd the dollar sign ($).
     => They can not start with the dollar sign ($), and numbers.
     => Escaped identifiers begin with backslash \ character and end with whitespace (tab, space, or newline). They are         meant to process literally. Example: \x+y(Usually verilog not support symbol where escaped identifier will slove        this problem) 
        Examples
           value_1  //Valid
           $value_1 // Invalid(using escaped identifier it is valid)
           1_value // Invalid
7] Keywords
     The keywords are special identifiers that are reserved to define the Verilog language construct. They are in lowercase.

      Examples: module, endmodule, initial, always, begin, end, case, wire, while, etc
