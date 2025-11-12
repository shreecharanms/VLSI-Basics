
module test;
reg clk;
wire[2:0]light;

cyclic_lamp dut(light,clk);

initial
  clk = 1'b0;
  
 always 
  #5 clk = ~clk;
 always@(posedge clk)
  $monitor("Light = %b",light);
  
initial
begin
$dumpfile("light.vcd");
$dumpvars(0,test);
#100 $finish; 
end
endmodule
  
