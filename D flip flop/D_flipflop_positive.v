//D flip flop with positive edge trigger.
module D_filpflop_Positive(d,clk,rst,q);
    input d,clk,rst;
    output q;
    reg q;
    always @ (posedge clk,negedge rst)
   
      if (rst==0)
      q=0;
      else 
      q=d;

   
endmodule
