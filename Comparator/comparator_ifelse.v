module comparator_ifelse(a,b,y);
    input a,b;
    output [0:2]y;
    reg [0:2]y;
    always @ (a,b)
    if (a==b)
    y=3'b100;
    else if (a<b)
    y=3'b010;
    else if(a>b)
    y=3'b001;


endmodule