`include "T_flipflop.v"
module T_flipflop_tb;
    reg t,clk,rst;
    wire q;
    T_flipflop uut (.t(t),.clk(clk),.rst(rst),.q(q));
    initial
    begin
      $monitor($time,"t=%b,clk=%b,rst=%b,q=%b",t,clk,rst,q);
    end
    initial
    begin
      $dumpfile("T_flipflop_tb");
      $dumpvars(0,T_flipflop_tb);
    end
    initial
    begin
      rst=1'b0;
      repeat(20)
      #40 rst=~rst;
    end
    initial 
    begin
      clk=1'b0;
      repeat (200)
      #2 clk=~clk;
    end
    initial
    begin
      t=1'b0;
      repeat(200)
      #4 t=~t;
    end
    initial
    #200 $finish;


endmodule