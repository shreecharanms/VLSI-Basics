module mux2to1(f,s,in0,in1);
input in1,in0,s;
output f;
wire sbar;
not(sbar,s);
cmos a (f,in0,s,sbar);
cmos b (f,in1,sbar,s);
endmodule
