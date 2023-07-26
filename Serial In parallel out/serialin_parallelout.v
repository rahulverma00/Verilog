module serialin_parallelout(rst,clk,d,a);
    input rst,clk,d;
    output [2:0]a;
    reg [2:0]a;
    always @(negedge rst,posedge clk)
    if (rst==0)
    a=3'b000;
    else 
    begin
    a[2]<=d;
    a[1]<=a[2];
    a[0]<=a[1];
    end

    

endmodule
