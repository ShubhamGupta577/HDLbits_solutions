module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    genvar i;
    wire [99:0]coutt;
    bcd_fadd inst1(a[3:0],b[3:0],cin,coutt[0],sum[3:0]);
    generate
        for(i=4;i<400;i=i+4) begin:addition
            bcd_fadd inst1(a[i+3:i],b[i+3:i],coutt[i/4-1],coutt[i/4],sum[i+3:i]);
        end
    endgenerate
    assign cout=coutt[99];
endmodule
