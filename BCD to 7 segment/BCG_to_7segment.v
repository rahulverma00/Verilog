module BCD_to_7segment(bcd,seg);
    input [0:3]bcd;
    output [0:6]seg;
    reg [0:6]seg;
    always @(bcd)
    case (bcd)
    4'b0000:seg=7'b1111110;//display 0
    4'b0001:seg=7'b0110000;//display 1
    4'b0010:seg=7'b1101101;//display 2
    4'b0011:seg=7'b1111001;//display 3
    4'b0100:seg=7'b0110011;//display 4
    4'b0101:seg=7'b1011011;//display 5
    4'b0110:seg=7'b1011111;//display 6
    4'b0111:seg=7'b1110000;//display 7
    4'b1000:seg=7'b1111111;//display 8
    4'b1001:seg=7'b1110011;//display 9
    default: seg=7'b0000000;
    endcase
    


endmodule
