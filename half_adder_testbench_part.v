// Code your testbench here
// or browse Examples
module tb_half_adder();
reg A , B ;
wire S , Cout;


  half_adder c(A,B,S,Cout);

initial
  begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
  end
  
initial 
begin
	A = 1'b0;
	B = 1'b0;
	#15
	A = 1'b1; 
	B = 1'b0;
	#15
	A = 1'b0; 
	B = 1'b1;
	#15
	A = 1'b1; 
	B = 1'b1;


end 
endmodule