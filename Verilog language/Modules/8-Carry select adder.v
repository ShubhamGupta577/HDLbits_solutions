module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire[15:0] sum1,sum2;
    wire cout,cout1,cout2;
     add16 inst1 (a[15:0] ,b[15:0], 0,  sum[15:0],  cout );
      add16 inst2 (a[31:16] ,b[31:16], 0,  sum1,  cout1 );
      add16 inst3 (a[31:16] ,b[31:16], 1,  sum2,  cout2 );
              always @(*)
                begin
                    if(cout==1'b0)
                        sum[31:16]=sum1;
                    else if(cout==1'b1)
                     
                        sum[31:16]=sum2;
                end
endmodule
