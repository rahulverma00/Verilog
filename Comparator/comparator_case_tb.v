`include "compatator_case.v"
module comparator_case_tb;
    reg [1:0]a;
    wire [0:2]y;
    comparator_case uut(.a(a),.y(y));
    initial
    begin
      $monitor($time,"a[1]=%b,a[0]=%b,y[0]=%b,y[1]=%b,y[2]=%b",a[1],a[0],y[0],y[1],y[2]);
      $dumpfile("comparator_case_tb.vcd");
      $dumpvars(0,comparator_case_tb);
      #10 a=2'b00;
      #10 a=2'b01;
      #10 a=2'b10;
      #10 a=2'b11;
      #10 $finish;

    end

endmodule