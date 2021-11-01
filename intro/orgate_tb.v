`timescale 1ns/1ns
module ogate_tb();
reg a,b;
wire c;
orgate or1(a,b,c);
initial begin
    $dumpfile("orgate.vcd");
    $dumpvars(1);
    a=0;
    b=0;
    #10 
    a=0;
    b=1;
    #10
    a=1;
    b=0;
    #10
    a=1;
    b=1;
    #10
    $finish;

end
endmodule