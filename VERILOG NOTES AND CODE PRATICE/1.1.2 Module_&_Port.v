Module 
   A Module is a basic building design block in Verilog and it can be an element that implements necessary functionality   .It can also be a collection of lower-level design blocks. As a part of defining a module, it has a module name, port    interface, and parameters (optional). The port interface i.e. inputs and outputs is used to connect the high-level      module with the lower one and hides internal implementation. 
  Syntax:
        module <module_name> (<port_list>);
          ...
          <implementation>
          ...
        endmodule
        => A module consists of variable declaration, dataflow statements, behavioral blocks, instantiation of lower hie           rarchical modules, tasks, and functions. All of these are optional depending on the requirement statements or           blocks that can be used, but module, endmodule, and module name are mandatory. It is not allowed to have                nested modules; instead, it allows instantiating sub-module to have the module connections.
           // This is illegal to write
           module dut_1;
             ...
              module dut_2;
                ...
              endmodule
           endmodule

Ports
    An interface to communicate with other modules or a testbench environment is called a port.In simple words,the input   /output pins of digital design are known as ports.This interface is termed a port interface or port list.Since the    port list is available for connection,internal design implementation can be hidden from other modules or an environment.

Verilog keywords used for port declaration are as follows:

     Input port => Keyword "input" => To receive signal values from another module
     output port => keyword "output" => To send signal values to another module
     Bidirectional port => keyword "inout" => To send or receive signal values to another module.
     Example:
          module mod(input a, b, output y);
          ...
          endmodule

      => Ports are of wire data type by default.
      => If output ports hold their value, then they must be declared as reg data type.
      => The input and inout ports can not be reg as they can not store values. Input ports pass signals from externally connected signals.

Connection rules in verilog port
      While writing a module, the designer needs to make sure what type of signals have to be connected to the module’s       inputs and outputs and follow the below rules.

      Input port => reg or net(external) => net(internal)
      Output port => net(external) => reg or net(internal)
      inout => net(Both internal and external)

