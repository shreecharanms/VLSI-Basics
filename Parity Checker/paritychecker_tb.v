module testp;
reg clk,x;
wire z;

parity_checker dut(.clk(clk), .x(x), .z(z) );

initial 
 begin 
  clk = 1'b0;
  repeat(2) begin
  #2 x =1; #10 x = 0; #10 x = 1; #10 x = 1; end
 end

always #5 clk = ~clk;

initial 
 begin
  $dumpfile("parity.vcd");
  $dumpvars(0,testp);
  #100 $finish;
  end
endmodule
  
