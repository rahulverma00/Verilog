module three_up_bitcounter(rst,clk,a);
    input rst,clk;
    output [2:0]a;
    reg [2:0]a;
    always @(negedge rst,posedge clk)
    if (rst==0)
    a=3'b000;
    else 
    a=a+001;
    

endmodule
