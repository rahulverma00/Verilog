`include "decoder_case.v"
module decoder_case_tb;
    reg [2:0]a;
    wire [0:3]y;
    decoder_case uut(.a(a),.y(y));
    initial
    begin
    $monitor($time,"a[2]=%b,a[1]=%b,y[0]=%b,y[1]=%b,y[2]=%b,y[3]=%b",a[2],a[1],a[0],y[0],y[1],y[2],y[3]);
      $dumpfile("decoder_case_tb.vcd");
      $dumpvars(0,decoder_case_tb);
      
      a=3'b100;
      #10 a=3'b101;
      #10 a=3'b110;
      #10 a=3'b111;
      #10 a=3'b000;
      #10 $finish;
    end
endmodule