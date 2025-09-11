module test;
wire f;
reg sel,in0,in1;
integer k;
mux2to1 uut(f,sel,in0,in1);
always
 begin
  for(k=0; k<8;k=k+1)
    begin
      #5 {sel,in0,in1} = k;
      $display("In0 = %b, In1 = %b, Sel = %b, Out = %b",in0,in1,sel,f);
    
  $dumpfile("mux.vcd");
  $dumpvars(0,test);
  end
  #100 $finish;
   end
endmodule
