//JK flip flop
module JK_flipflop(j,k,clk,rst,q);
    input j,k,clk,rst;
    output q;
    reg q;
    always @ (negedge rst, posedge clk)
    if (rst==0)
    q=0;
    else if(j==0&k==0)
    q=q;
    else if (j==0&k==1)
    q=0;
    else if (j==1&j==0)
    q=1;
    else if (j==1&k==1)
    q=!q;


endmodule
