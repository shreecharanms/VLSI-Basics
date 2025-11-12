module parity_checker(x,clk,z);
input clk,x;
output reg z;
reg odd_even;
parameter Odd = 1, Even = 0;

always@(posedge clk)
 case(odd_even)
  Odd: odd_even = x?Even:Odd;
  Even : odd_even = x?Odd:Even;
  default: odd_even = Even;
 endcase

always@(odd_even)
 case(odd_even)
  Odd : z = 1;
  Even : z = 0;
  default: z =0;
 endcase
endmodule
