`timescale 1ns / 1ps

module decoder_2bto4(
    input [1:0] dec_in,
    output [3:0] dec_out
    );
    reg [3:0] dec_r;
    assign dec_out = dec_r;
    always @ (dec_in) begin
      case (dec_in)
       2'b00 : dec_r = 4'b0001;  
       2'b01 : dec_r = 4'b0010;  
       2'b10 : dec_r = 4'b0100;  
       2'b11 : dec_r = 4'b1000;
       default : dec_r = 4'b0000;
     endcase   
   end
endmodule
