//Half adder data flow model test bench
`include "Half_adder.v"
module Half_adder_tb;
    reg a,b;
    wire c,s;

    Half_adder uut(a,b,c,s);
    initial
    begin
    $dumpfile("Half_adder_tb.vcd");
    $dumpvars(0, Half_adder_tb);
    a = 0; b =0;
     #10;
    a = 0; b =1;
     #5; 
    a = 1; b =0;
    #5; 
    a = 1; b =1;
    #5 $finish;
    end
  
 
endmodule 