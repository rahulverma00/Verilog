//t flip flop
module T_flipflop(t,clk,rst,q);
    input t,clk,rst;
    output q;
    reg q;
    always @ (negedge rst, posedge clk)
    if (rst==0)
    q=0;
    else if (t==0)
    q=q;
    else if (t==1)
    q=!q;

endmodule
