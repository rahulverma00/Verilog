`include "comparator_ifelse.v"
module comparator_ifelse_tb;
    reg a; reg b;
    wire [0:2]y;
    comparator_ifelse uut(.a(a),.b(b),.y(y));
    initial
    begin
      $dumpfile("comparator_ifelse_tb.vcd");
      $dumpvars(0,comparator_ifelse_tb);
      $monitor($time,"a=%b,b=%b,y[0]=%b,y[1]=%b,y[2]=%b",a,b,y[0],y[1],y[2]);
      a=0;b=0;
      #10 a=0;b=1;
      #10 a=1;b=0;
      #10 a=1;b=1;
      #10 $finish;
      
    end

endmodule