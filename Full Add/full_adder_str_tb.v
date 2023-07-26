`include "full_adder_str.v"
module full_adder_str_tb;
    reg a_tb; reg b_tb; reg cin_tb; wire s_tb ; wire c_tb;
    full_adder_str uut(.a(a_tb), .b(b_tb), .cin(cin_tb), .s(s_tb), .c(c_tb));
    initial
    begin
    $dumpfile("full_adder_str_tb.vcd");
    $dumpvars(0, full_adder_str_tb);
    $monitor ($time, "a_tb=%b, b_tb=%b, cin_tb=%b, s_tb=%b, c_tb=%b", a_tb,b_tb,cin_tb,s_tb,c_tb);
    a_tb=0;b_tb=0;cin_tb=0;
    #5 a_tb=0;b_tb=0;cin_tb=1;
    #5 a_tb=0;b_tb=1;cin_tb=0;
    #5 a_tb=0;b_tb=1;cin_tb=1;
    #5 a_tb=1;b_tb=0;cin_tb=0;
    #5 a_tb=1;b_tb=0;cin_tb=1;
    #5 a_tb=1;b_tb=1;cin_tb=0;
    #5 a_tb=1;b_tb=1;cin_tb=1;
    #5 $finish;

    end
endmodule