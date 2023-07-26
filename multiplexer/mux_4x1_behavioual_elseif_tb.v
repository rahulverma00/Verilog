`include "mux_4x1_behavioual_elseif.v"
module mux_4x1_behavioual_elseif_tb;
  reg [0:3]a;
  reg [0:1]s;
  wire y;
  mux_4x1_behave_elseif uut (.a(a), .s(s), .y(y));

  initial 
  begin
  $dumpfile("mux_4x1_behavioual_elseif_tb.vcd");
  $dumpvars(0, mux_4x1_behavioual_elseif_tb);
    $monitor($time, "a[0]=%b,a[1]=%b,a[2]=%b,a[3]=%b, s[0]=%b,s[1]=%b, y=%b", a[0], a[1],a[2],a[3],s[0],s[1], y);
        a=4'b0101;s=2'b00;
    #10 a=4'b0101;s=2'b01;
    #10 a=4'b0101;s=2'b10;
    #10 a=4'b0101;s=2'b11;
    #10 a=4'b1100;s=2'b00;
    #10 a=4'b1100;s=2'b01;
    #10 a=4'b1100;s=2'b10;
    #10 a=4'b1100;s=2'b11;
    
    #10 $finish;
  end
endmodule