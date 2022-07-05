module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
	genvar i;
    add inst1(a[0],b[0],cin,cout[0],sum[0]);
    generate
        for(i=1;i<100;i=i+1) begin:addition
            add inst2(a[i],b[i],cout[i-1],cout[i],sum[i]);
        end
    endgenerate
endmodule

module add(input x,input y,input z,output coutt, output summ);
    assign summ=x^y^z;
    assign coutt=x&y|z&(x^y);
endmodule
    

