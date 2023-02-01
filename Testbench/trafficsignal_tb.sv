`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2023 01:00:24
// Design Name: 
// Module Name: trafficsignal_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module trafficsignal_tb();
logic clk, reset, clk_out;
logic [2:0] north_dir, south_dir, east_dir, west_dir;

top_trafficsignal dut(.clk(clk), .reset(reset),.north_dir(north_dir), .south_dir(south_dir), .east_dir(east_dir), .west_dir(west_dir));

initial begin

#1000000000;
clk = 0;
reset = 1;
reset =0;

end

always #0.5 clk = ~clk;
endmodule
