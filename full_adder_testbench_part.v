// Code your testbench here
// or browse Examples
module full_adder_tb; 
 
reg A,B,Cin;
wire S, Cout;

initial
  begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
  end
 
  fulladder c(A,B,Cin,S,Cout);
 
initial
begin
A =0;
B =0;
Cin =0;
#20; A =1;
#20; B =1;
#20; A =0;
#20; Cin =1;
#20; B=0;
#20; A=1; 
#20; B=1;
#20;
end
  
endmodule