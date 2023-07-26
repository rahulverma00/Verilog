//full adder structural model 
module full_adder_str(a,b,cin,s,c);
input a,b,cin;
output s,c;
wire l,m,n;
and a1(l,a,b);
and a2(m,b,cin);
and a3(n,a,cin);
or o1(c,l,m,n);
xor x1(s,a,b,cin);
endmodule