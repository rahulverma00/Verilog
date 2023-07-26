// half_adder behaviour model
module Half_adder_behave(a, b, c, s);
    input a,b;
    output c,s;
    reg c,s;
    always @(a,b)
    begin
    c=a^b;
    s=a&b;
    end
endmodule
