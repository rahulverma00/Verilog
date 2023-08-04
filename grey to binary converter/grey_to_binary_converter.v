module grey_to_binary(g3,g2,g1,g0,b3,b2,b1,b0);
    input g3,g2,g1,g0;
    output b3,b2,b1,b0;
    reg b3,b2,b1,b0;
    always @(g3,g2,g1,g0)
    begin
    b3=g3;
    b2=g3^g2;
    b1=g2^g1;
    b0=g1^g0;
    end
    


endmodule
