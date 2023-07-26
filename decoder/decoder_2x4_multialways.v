// 2x4 decoder using multiple always block
module decoder_2x4_multialways(a,b,en,z);
    input a,b,en;
    output [0:3]z;
    reg abar,bbar;
    reg [0:3]z;
    always @ (a)
    abar= ~a;

    always @ (b)
    bbar= ~b;

    always @(abar,bbar,en)
    begin
      z[0]=abar&bbar&en;
      z[1]=abar&b&en;
      z[2]=a&bbar&en;
      z[3]=a&b&en;
    end

endmodule