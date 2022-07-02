module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire cout,cout1;
    wire [31:0] sub1;
    assign sub1=b^{32{sub}};
    add16 ( a[15:0], sub1[15:0] , sub, sum[15:0],cout1 );
    add16 ( a[31:16], sub1[31:16] ,cout1, sum[31:16],cout );

endmodule
