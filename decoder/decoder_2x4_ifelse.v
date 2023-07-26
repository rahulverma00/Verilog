module decoder_2x4(a,y);
    input [2:0]a;
    output [0:3]y;
    reg [0:3]y;
    always @ (a,y)
    if (a==3'b100)
    y=4'b1000;
    else if (a==3'b101)
    y=4'b0100;
    else if (a==3'b110)
    y=4'b0010;
    else if (a==3'b111)
    y=4'b0001;
    else 
    y=4'b0000;



endmodule
