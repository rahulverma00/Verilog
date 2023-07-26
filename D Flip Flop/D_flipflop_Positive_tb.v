`include "D_flipflop_Positive.v"
module D_flipflop_Positive_tb;
    reg d,clk,rst;
    wire q;
    D_filpflop_Positive uut (.d(d),.clk(clk),.rst(rst),.q(q));
    initial
    $monitor ($time,"d=%b,clk=%b,rst=%b,q=%b",d,clk,rst,q);
    initial
    begin
    $dumpfile ("D_flipflop_Positive_tb.vcd");
    $dumpvars (0, D_flipflop_Positive_tb);
    end
    initial
    begin
      rst =1'b0;
      repeat(4)
      #10 rst=~rst;
    end
    initial
    begin
      clk=1'b0;
      repeat(20)
      #2 clk=~clk;
    end
    initial
    begin
      d=1'b0;
      repeat(10)
      #4 d=~d;

    end
    initial
    #100 $finish;
    


endmodule