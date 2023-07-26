module threebit_parallelin_parallelout(rst,clk,q,a);
    input rst,clk;
    input [2:0]q;
    output [2:0]a;
    reg [2:0]a;
    always @(negedge rst,posedge clk)
    if (rst==0)
    a=3'b000;
    else 
    a=q;

    

endmodule
