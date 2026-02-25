Data Types
  A storage format having a specific range or type is called data type. They can be divided into two groups.
  Two types
  i] Net data Types:
       The net-type group represents physical connections between digital circuits. Ex. wire, wand, wor, etc
  ii] variable data types 
        The variable type group represents the storage of values in digital circuits. They are used as variables.Ex.reg,        integer

Types of logic values
         Verilog supports 4 types of logic values as

         i] 0(Zero) - logic "0", False condition
         ii] 1(one) - logic "1", True condition
         iii] x(unknown) - unknown value (maybe 0 or 1)
         iv] z(High imp) - High impedence (no driver is connected)

Net type
     Nets represent physical connections between the digital circuits. They are declared using keyword wire.The term net     is not a keyword, it is a group of data types such as wire, wand, wor, tri, etc.
      example: wire a; //one-bit value as a single net.
               wire [5:0] a; //net as a vector
              => Default value of wire is "z" Because if a wire is not driven by anything, it is floating. 

Register type
     The registers represent data storage elements. It retains value till it is overridden. The registers are like a        placeholder, so they do not require a driver. Keyword used to declare a register data type is reg.
      example : reg a; // single bit register
                reg [5:0] a; // 6 bit register as a vector
               => Default value of reg is "x" Because a reg represents a storage element, and if it is not initialized,                   its value is unknown.

Scalar and Vector
 i] Scalar: Single bit wire or register is known as a scalar.
       Example : wire a;
                 reg a;
               => The default value for a scalar (1-bit signal) depends on its data type.
 
 ii] Vector: The nets or registers can be declared as vectors to represent multiple bit widths. If bit width is not                  specified, it is a scalar.
       Example: wire [5:0] a;
                reg [5:0] a;
               => The default value depends on the data type, not whether it is scalar or vector.

Constants : The value of constants can not be changed. It is read-only in nature.
       Example: Numeric literals(These are fixed numbers written directly in code. Ex. <Size>'<base_format><value>)
                Parameters(Used to define constant values inside a module Ex: parameter WIDTH = 8;)
                Localparams(Similar to parameter but cannot be overridden.Ex: localparam SIZE = 4;)
                `define (macro constants)(Preprocessor constant. Ex:`define DATA_WIDTH 8)

Interger data type
       The integers are general-purpose 32-bit register data types. They are declared by the ‘integer’ keyword.
       integer is a 32-bit signed data type used mainly for simulation and calculations.
       => Default value of integer = "x"
       => Synthesizable? Mostly No (used in testbench)

Real
      The real data types can be constants or real register data types. They are declared using the ‘real’ keyword.
      The real value is rounded off if they are assigned to integer data type,
      Example : real data = 3.14;
     => It is not synthesizable for hardware logic.(Because rtl design will be work binary bit.So floating point is not 
       synthesizable )
     => Default value of real is "0.0"

String 
     An ordered collection of characters is called a string. They can be stored in reg data type. Each character in a 
     string requires 1 byte (8 bits) for storage and is typically mentioned within double-quotes (” “).
     Example: reg [8*11:0] name = "Hello World"; // String "Hello World"
                                 //requires 11 bytes space


Time
    Verilog provides a time register to store simulation time. A time register is declared using the ‘time’ keyword and     it has a width of at least 64 bits depending on the simulator and machine used.
    => Default value for time is "x"

Arrays
    Verilog allows arrays of reg, time, integer, and vector register data types.
    => Verilog does not allow the use of multidimensional arrays.
    => Arrays for real variables are also not allowed in Verilog.

Memories 
    Verilog provides a facility to model register memories like ROM or RAM as an array of registers. Each array element     in an array is called a word.
    Example: reg mem [0:511]; // Memory mem with 512 1-bit word.
             reg [3:0] mem [0:511]; // Memory mem with 512 4-bit words
