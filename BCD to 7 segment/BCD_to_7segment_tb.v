`include "BCD_to_7segment.v"
module BCD_to_7segment_tb;
    reg [0:3]bcd;
    wire [0:6]seg;
    BCD_to_7segment uut(.bcd(bcd),.seg(seg));
    initial
    begin
      $monitor($time,"bcd[0]=%b,bcd[1]=%b,bcd[2]=%b,bcd[3]=%b,seg[0]=%b,seg[1]=%b,seg[2]=%b,seg[3]=%b,seg[4]=%b,seg[5]=%b,seg[6]=%b",bcd[0],bcd[1],bcd[2],bcd[3],seg[0],seg[1],seg[2],seg[3],seg[4],seg[5],seg[6]);
      $dumpfile("BCD_to_7segment_tb");
      $dumpvars(0,BCD_to_7segment_tb);
      bcd=4'b0000;
      #10 bcd=4'b0001;
      #10 bcd=4'b0010;
      #10 bcd=4'b0011;
      #10 bcd=4'b0100;
      #10 bcd=4'b0101;
      #10 bcd=4'b0110;
      #10 bcd=4'b0111;
      #10 bcd=4'b1000;
      #10 bcd=4'b1001;
      #10 $finish;
    end
endmodule