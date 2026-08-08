`timescale 1ns/1ps

module ram_tb;

reg clk;
reg we;
reg [3:0] addr;
reg [7:0] data_in;
wire [7:0] data_out;

ram uut (
    .clk(clk),
    .we(we),
    .addr(addr),
    .data_in(data_in),
    .data_out(data_out)
);

always #5 clk = ~clk;

initial
begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, ram_tb);

    clk = 0;

    // Write data
    we = 1; addr = 4'd0; data_in = 8'd25; #10;
    we = 1; addr = 4'd1; data_in = 8'd50; #10;
    we = 1; addr = 4'd2; data_in = 8'd100; #10;

    // Read data
    we = 0; addr = 4'd0; #10;
    we = 0; addr = 4'd1; #10;
    we = 0; addr = 4'd2; #10;

    $finish;
end

initial
begin
    $monitor("Time=%0t WE=%b Addr=%d DataIn=%d DataOut=%d",
              $time, we, addr, data_in, data_out);
end

endmodule
