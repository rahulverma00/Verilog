module binary_to_grey(b3,b2,b1,b0,g3,g2,g1,g0);
    input b3,b2,b1,b0;
    output g3,g2,g1,g0;
    reg g3,g2,g1,g0;
    always @(b3,b2,b1,b0)
    begin
    g0=b1^b0;
    g1=b2^b1;
    g2=b3^b2;
    g3=b3;
    end
    


endmodule
