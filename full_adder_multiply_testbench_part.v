// Code your testbench here
// or browse Examples
module multiply_tb();
  
  reg [3:0] a;
  reg [3:0] b;
  reg m;
  wire [3:0] s, c;
  wire ov;
 
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
  
  initial
    begin
      a = 4'b0000;
      b = 4'b0000;
      m = 1'b0;
            
      #10 a = 4'b1101;
      	  b = 4'b1101;
      	  m = 1'b0;
      #10 a = 4'b0101;
      	  b = 4'b0101;
      	  m = 1'b1;
      #10 a = 4'b1100;
      	  b = 4'b0101;
     	  m = 1'b1;
      #10 b = 4'b0100;
          a = 4'b1001;
      	  m = 1'b1;
      #10 $finish;
      
    end
  
  rcad u_dut(
    .a(a),
    .b(b),
    .m(m),
    .s(s),
    .c(c),
    .ov(ov)
  );
    
endmodule