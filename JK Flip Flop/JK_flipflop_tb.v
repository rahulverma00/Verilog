`include "JK_flipflop.v"
module JK_flipflop_tb;
    reg j,k,clk,rst;
    wire q;
    JK_flipflop uut (.j(j),.k(k),.clk(clk),.rst(rst),.q(q));
    initial
    $monitor ($time,"j=%b,k=%b,clk=%b,rst=%b,q=%b",j,k,clk,rst,q);
    initial
    begin
    $dumpfile ("JK_flipflop_tb.vcd");
    $dumpvars (0, JK_flipflop_tb);
    end
    initial
    begin
      rst =1'b0;
      repeat(10)
      #20 rst=~rst;
    end
    initial
    begin
      clk=1'b0;
      repeat(30)
      #2 clk=~clk;
    end
    initial
    begin
      j=1'b0;
      repeat(30)
      #2 j=~j;
    end
    initial
    begin
      k=1'b0;
      repeat(10)
      #3 k=~k;
    end
    initial
    #200 $finish;


endmodule