module mux_4x1_behave_elseif(a,s,y);
    input [0:3]a;
    input [0:1]s;
    output y;
    reg y;
    always @ (a,s)

    if (s==2'b00)
    y=a[0];
    else if (s==2'b01)
    y=a[1];
    else if (s==2'b10)
    y=a[2];
    else if (s==2'b11)
    y=a[3];

endmodule