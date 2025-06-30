`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:53:32 06/30/2025
// Design Name:   traffic_light_controller
// Module Name:   tst.v
// Project Name:  fpga
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: traffic_light_controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tst_v;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [2:0] light_M1;
	wire [2:0] light_S;
	wire [2:0] light_MT;
	wire [2:0] light_M2;

	// Instantiate the Unit Under Test (UUT)
	traffic_light_controller uut (
		.clk(clk), 
		.rst(rst), 
		.light_M1(light_M1), 
		.light_S(light_S), 
		.light_MT(light_MT), 
		.light_M2(light_M2)
	);

	initial begin
		// Initialize Inputs
		    clk=1'b0;
    forever #(10/2) clk=~clk;
end

initial
begin
    rst=0;
    #10;
    rst=1;
    #10;
    rst=0;
    #(10*200);
    $finish;
		// Add stimulus here

	end
      
endmodule

