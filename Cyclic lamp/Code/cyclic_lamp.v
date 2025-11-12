// Author - Shicharan MS
// module generates traffic light R G Y one after the other with a clock pulse

module cyclic_lamp(light, clk);
input clk;
output reg[2:0] light;
reg[0:1] state;
parameter S0 = 1, S1 = 2, S2 = 3;
parameter red = 100, yellow = 010, green = 001;

always@(posedge clk) // state change once a clock pulse
 case(state)
   S0 : state <= S1;
   S1 : state <= S2;
   S2 : state <= S0;
   default: state <= S0;
  endcase
  
always@(state) // assigning light corresponds to the state
 case(state)
  S0 : light = red;
  S1 : light = yellow;
  S2 : light = green;
  default : light = red;
 endcase
 
 endmodule
   
