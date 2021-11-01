module top(a,b,c,e,f);
input a,b,c;
output e,f;

andgate and1(a,b,e);
orgate or1(e,c,f);
endmodule