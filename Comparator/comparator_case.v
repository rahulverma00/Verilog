module comparator_case(a,y);
    input [1:0]a;
    output [0:2]y;
    reg [0:2]y;
    always @ (a)
        case (a)
            2'b00:y=3'b100;
            2'b01:y=3'b010;
            2'b10:y=3'b001;
            2'b11:y=3'b100;
            default:y=3'b000;
        endcase

endmodule
