
 module matrix(A,B,C,sum);
 input [71:0] A;
 input [71:0] B;
 output [71:0] C;
 output [7:0]sum;
 reg [7:0]sum;
 reg [71:0] C;
 reg [7:0] A1 [0:2][0:2];
 reg [7:0] B1 [0:2][0:2];
 reg [7:0] Res1 [0:2][0:2];
 integer i,j;
 reg [7:0]k;
 always@ (*)
 begin
 //convert the 1D arrays into 2D
 {A1[0][0],A1[0][1],A1[0][2],A1[1][0],A1[1][1],A1[1][2],A1[2][0],A1[2][1],A1[2][2]} = A;
 {B1[0][0],B1[0][1],B1[0][2],B1[1][0],B1[1][1],B1[1][2],B1[2][0],B1[2][1],B1[2][2]} = B;
 {Res1[0][0],Res1[0][1],Res1[0][2],Res1[1][0],Res1[1][1],Res1[1][2],Res1[2][0],Res1[2][1],Res1[2]
 [2]} = 144'd0;
 k[7:0] = 8'd0;
 i=0; j=0;
 //$display ("Multiplying");
 for(i=0;i<3;i=i+1)
 begin
 for(j=0;j<3;j=j+1)
 begin
 Res1[i][j]=A1[i][j]*B1[i][j];
 k = k+Res1[i][j];
 end
 end
C=
 {Res1[0][0],Res1[0][1],Res1[0][2],Res1[1][0],Res1[1][1],Res1[1][2],Res1[2][0],Res1[2][1],Res1[2]
 [2]};
 //sum =
 Res1[0][0]+Res1[0][1]+Res1[0][2]+Res1[1][0]+Res1[1][1]+Res1[1][2]+Res1[2][0]+Res1[2][1]+Re
 s1[2][2];
 sum = k;
 end
 endmodule
Test bench
 module test_bench;
 reg [71:0] A;
 reg [71:0] B;
 wire [71:0] C;
 wire [7:0]sum;
 matrix test(.A(A), .B(B), .C(C), .sum(sum));
 initial begin
 //Initial inputs
 A={8'b00000101,8'b00000101,8'b00000101,8'b00000010,8'b00000010,8'b00000010,8'b000000
 01,8'b00000001,8'b00000001};


 B={8'b00000101,8'b00000101,8'b00000101,8'b00000010,8'b00000010,8'b00000010,8'b000000
 01,8'b00000001,8'b00000001};
 end
 endmodul
