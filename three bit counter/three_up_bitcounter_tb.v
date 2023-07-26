`include "three_up_bitcounter.v"
module three_up_bitcounter_tb;
    reg rst,clk;
    wire [2:0]a;
    three_up_bitcounter uut (.rst(rst),.clk(clk),.a(a));
    initial
    begin
      $monitor($time,"rst=%b,clk=%b,a[2]=%b,a[1]=%b,a[2]=%b", rst,clk,a[0],a[1],a[2]);
    end
    initial
    begin
      $dumpfile("three_up_bitcounter_tb");
      $dumpvars(0,three_up_bitcounter_tb);
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
    #200 $finish;

    end

endmodule