`include "serialin_parallelout.v"
module serialin_parallelout_tb;
    reg rst,clk,d;
    wire [2:0]a;
    serialin_parallelout uut (.rst(rst),.clk(clk),.d(d),.a(a));
    initial
    begin
      $monitor($time,"rst=%b,clk=%b,d=%b,a[2]=%b,a[1]=%b,a[2]=%b", rst,clk,d,a[0],a[1],a[2]);
    end
    initial
    begin
      $dumpfile("serialin_parallelout_tb");
      $dumpvars(0,serialin_parallelout_tb);
    end
    initial
    begin
      rst=1'b0;
      repeat(40)
      #40 rst=~rst;
    end
    initial 
    begin
      clk=1'b0;
      repeat (100)
      #2 clk=~clk;
    end
    initial
    begin
      #0 d=1'b0;
      #5 d=1'b1;
      #20 d=1'b0;
      #30 d=1'b1;
      

    end
    initial 
    begin
    #200 $finish;

    end

endmodule