module sequence_detector(x,clk,out); //Detects the sequence "01101"
 input x,clk;
 output reg out;
 reg[2:0] state;
 parameter s0 = 0, s1 = 1, s2 = 2, s3 = 3, s4 = 4;

always@(posedge clk)
 case(state)
  s0 : begin state = x?s0:s1; out = 0; end
  s1 : begin state = x?s2:s1; out = 0; end
  s2 : begin state = x?s3:s1; out = 0; end
  s3 : begin state = x?s1:s4; out = 0; end
  s4 : begin state = x?s0:s1; out = 1; end // Sequence detected
  default : begin state = s0; out = 0; end
 endcase
endmodule
 
