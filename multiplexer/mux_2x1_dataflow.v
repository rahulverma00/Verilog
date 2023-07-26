module mux_2_1_str(a,s,z);
    input [0:1]a, s;
    output z;
    wire sbar,l,m;
    not gate1(sbar, s);
    and gate2(l,a[0],sbar);
    and gate3(m,a[1],s);
    or gate4(z,l,m);
endmodule
