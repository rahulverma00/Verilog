`include "threebit_parallelin_parallelout.v"
module threebit_parallelin_parallelout_tb;
    reg rst,clk;
    reg [2:0]q;
    wire [2:0]a;
    threebit_parallelin_parallelout uut (.rst(rst),.clk(clk),.q(q),.a(a));
    initial
    begin
      $monitor($time,"rst=%b,clk=%b,q[2]=%b,q[1]=%b,q[2]=%b,a[2]=%b,a[1]=%b,a[2]=%b", rst,clk,q[0],q[1],q[2],a[0],a[1],a[2]);
    end
    initial
    begin
      $dumpfile("threebit_parallelin_parallelout_tb");
      $dumpvars(0,threebit_parallelin_parallelout_tb);
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
      #10 q=3'b000;
      #10 q=3'b001;
      #10 q=3'b010;
      #10 q=3'b011;
      #10 q=3'b100;
      #10 q=3'b101;
      #10 q=3'b110;
      #10 q=3'b111;

    end
    initial 
    begin
    #200 $finish;

    end

endmodule