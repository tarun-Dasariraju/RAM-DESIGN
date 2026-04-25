`timescale 1ns / 1ps
///ram design
module task_2(
    input clk,
    input we,                 // Write Enable
    input [3:0] addr,         // 16 locations
    input [7:0] din,          // Input Data
    output reg [7:0] dout     // Output Data
);

reg [7:0] mem [15:0];

always @(posedge clk)
begin
    if(we)
        mem[addr] <= din;     // Write operation
    else
        dout <= mem[addr];    // Read operation
end

endmodule
