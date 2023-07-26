`include "mux_2x1_behavioual_ifelse.v"
module mux_2x1_behavioual_ifelse_tb;
  reg a;
  reg b;
  reg s;
  wire y;
  mux_2x1_behave_ifelse uut (.a(a), .b(b), .s(s), .y(y));

  initial 
  begin
  $dumpfile("mux_2x1_behavioual_ifelse_tb.vcd");
  $dumpvars(0, mux_2x1_behavioual_ifelse_tb);
    $monitor($time, "a=%b, b=%b, s=%s, y=%b", a, b, s, y);
    a = 0; b = 1; s = 0;
    #10 a = 0; b = 1; s = 1;
    #10 a = 1; b = 0; s = 0;
    #10 a = 1; b = 0; s = 1;
    #10 $finish;
  end
endmodule