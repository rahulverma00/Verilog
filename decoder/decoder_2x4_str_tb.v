`include "decoder_2x4_str.v"
module decoder_2x4_str_tb;
reg a,b,en;
wire [0:3]z;
decoder_2x4_str uut(.a(a),.b(b),.en(en), .z(z));
initial
begin
$dumpfile("decoder_2x4_str_tb.vcd");
$dumpvars(0, decoder_2x4_str_tb);
$monitor($time,"a=%b, b=%b, en=%b, z[0]=%b, z[1]=%b, z[2]=%b, z[3]=%b", a,b,en,z[0],z[1],z[2],z[3] );
a=0;b=0;en=1;
#10 a=0;b=1;en=1;
#10 a=1;b=0;en=1;
#10 a=1;b=1;en=1;
#10 a=0;b=0;en=0;
#10 a=0;b=1;en=0;
#10 $finish;
end
endmodule