`timescale 1ns / 1ps ///testbench for ram design
module task_2_tb;
reg clk;
reg we;
reg [3:0] addr;
reg [7:0] din;
wire [7:0] dout;
task_2 uut(
    .clk(clk),
    .we(we),
    .addr(addr),
    .din(din),
    .dout(dout));
always #5 clk = ~clk;
initial begin
    clk = 0;
    // Write 55 at address 2
    we = 1; addr = 4'd2; din = 8'd55;
    #10;
    // Write 99 at address 5
    we = 1; addr = 4'd5; din = 8'd99;
    #10;
    // Read address 2
    we = 0; addr = 4'd2;
    #10;
    // Read address 5
    we = 0; addr = 4'd5;
    #10;
    $stop;
end
endmodule
