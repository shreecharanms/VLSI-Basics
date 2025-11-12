module tests;
 reg x,clk;
 wire out;

sequence_detector dut(x,clk,out);

initial 
  begin
   $dumpfile("sequence.vcd");
   $dumpvars(0,tests);
   clk = 1'b0;
   #12 x= 0; #10 x= 0; #10 x= 0;#10 x= 1;#10 x= 0;#10 x= 1;#10  x=1;#10 x= 0;#10 x= 1; #10 x= 0;#10 x= 1; 
   #10 $finish;
  end
 always #5 clk = ~clk;
endmodule
 
