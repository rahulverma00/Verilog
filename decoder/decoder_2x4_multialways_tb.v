// 2x4 decoder using multiple always block testbench
`include "decoder_2x4_multialways.v"
module decoder_2x4_multialways_tb;
    reg a,b,en;
    wire [0:3]z;
    reg abar,bbar;
    decoder_2x4_multialways uut(.a(a),.b(b),.en(en),.z(z));
    initial
    begin
      $monitor ($time,"a=%b,b=%b,en=%b,z[0]=%b,z[1]=%b,z[2]=%b,z[3]=%b",a,b,en,z[0],z[1],z[2],z[3]);
      $dumpfile("decoder_2x4_multialways_tb");
      $dumpvars(0,decoder_2x4_multialways_tb);
      a=0;b=0;en=1;
      #10 a=0;b=1;en=1;
      #10 a=1;b=0;en=1;
      #10 a=1;b=1;en=1;
      #10 ;

    end

endmodule