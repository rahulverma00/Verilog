//Full adder behavioual model
module full_adder_behave(a,b,cin,s,c);
input a,b,cin;
output s,c;
reg l,m,n;
reg s,c;
always @(a,b,c)
begin
l=a&b;
m=b&cin;
n=a&cin;
c=l|m|n;
s=a^b^cin;
end
endmodule



