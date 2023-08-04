`include "grey_to_binary_converter.v"
module grey_to_binary_tb;
    reg g3,g2,g1,g0;
    wire b3,b2,b1,b0;
    grey_to_binary uut(.b3(b3),.b2(b2),.b1(b1),.b0(b0),.g3(g3),.g2(g2),.g1(g1),.g0(g0));
    initial
    begin
      $monitor($time,"g3=%b,g2=%b,g1=%b,g0=%b,b3=%b,b2=%b,b1=%b,b0=%b",g3,g2,g1,g0,b3,b2,b1,b0);
      $dumpfile("grey_to_binary_tb.vcd");
      $dumpvars(0,grey_to_binary_tb);
      #10 g3=0;g2=0;g1=1;g0=1;
      #10 g3=0;g2=1;g1=1;g0=1;
      #10 g3=1;g2=0;g1=1;g0=1;
      #10 g3=0;g2=0;g1=1;g0=1;
      #10 $finish;

    end

endmodule