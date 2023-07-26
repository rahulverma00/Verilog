`include "mux_2x1_behav.v"
module mux_2x1_behav_tb;
reg [0:1]a, s;
wire z;
mux_2x1_behav uut (.a(a),.s(s),.z(z));
initial
begin
  $dumpfile("mux_2x1_behav_tb.vcd");
  $dumpvars(0, mux_2x1_behav_tb);
  $monitor($time,"a[0]=%b, a[1]=%b, s=%b, z=%b", a[0],a[1],s,z);
   a=2'b01;s=0;
  #5 a=2'b01; s=1;
  #5 a=2'b10; s=0;
  #5 a=2'b10; s=1;
  #5 $finish;
end
endmodule