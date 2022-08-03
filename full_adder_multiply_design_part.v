// Code your design here
module full_adder(a,b,m,s,c);
    //I/O
  
    
  output s,c;
  input a,b,m;
  
  assign c = (a & b) | (m & (a ^ b));
  assign s = m ^ (a ^ b);
    
endmodule

module rcad(a,b,m,s,c, ov);
    //I/O
  
  output [3:0] s, c;
  output ov;
  input [3:0] a,b;
  input m;

  //wire c0, c1, c2;

  
  full_adder FA1(.a(a[0]), .b(b[0]), .m(m), .s(s[0]), .c(c[0]));
  full_adder FA2(.a(a[1]), .b(b[1]), .m(c[0]), .s(s[1]), .c(c[1]));
  full_adder FA3(.a(a[2]), .b(b[2]), .m(c[1]), .s(s[2]), .c(c[2]));
  full_adder FA4(.a(a[3]), .b(b[3]), .m(c[2]), .s(s[3]), .c(c[3]));
  
  assign ov = c[2] ^ c[3];
    
endmodule
