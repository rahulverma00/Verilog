// 2x1 
module mux_2x1_behav(a,s,z);
    input [0:1]a, s;
    output z;
    reg sbar,l,m;
    reg z;
    always @(a,s)
    begin
    sbar=!s;
    l=a[0]&sbar;
    m=a[1]&s;
    z=l|m; 
    end
endmodule