// 2x4 decoder code using structure modelling
module decoder_2x4_str(a,b,en,z);
input a,b,en;
output [0:3]z;
wire abar,bbar;
not n1(abar,a);
not n2(bbar,b);
and a1(z[0],abar,bbar,en);
and a2(z[1],en,abar,b);
and a3(z[2],en,a,bbar);
and a4(z[3],en,a,b);


endmodule