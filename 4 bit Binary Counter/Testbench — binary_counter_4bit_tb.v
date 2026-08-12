```verilog
`timescale 1ns/1ps

module binary_counter_4bit_tb;

    reg clk;
    reg reset;
    wire [3:0] count;

    // Instantiate the 4-bit counter
    binary_counter_4bit uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        // Generate waveform
        $dumpfile("binary_counter_4bit.vcd");
        $dumpvars(0, binary_counter_4bit_tb);

        $display("Time | Reset | Count");
        $display("-------------------");

        // Initial values
        clk = 0;
        reset = 1;

        // Reset counter
        #10;
        $display("%4t |   %b   |  %b", $time, reset, count);

        // Start counting
        reset = 0;

        #10;
        $display("%4t |   %b   |  %b", $time, reset, count);

        #10;
        $display("%4t |   %b   |  %b", $time, reset, count);

        #10;
        $display("%4t |   %b   |  %b", $time, reset, count);

        #10;
        $display("%4t |   %b   |  %b", $time, reset, count);

        #10;
        $display("%4t |   %b   |  %b", $time, reset, count);

        #10;
        $display("%4t |   %b   |  %b", $time, reset, count);

        #10;
        $display("%4t |   %b   |  %b", $time, reset, count);

        #10;
        $display("%4t |   %b   |  %b", $time, reset, count);

        #10;
        $display("%4t |   %b   |  %b", $time, reset, count);

        #10;
        $display("%4t |   %b   |  %b", $time, reset, count);

        #10;
        $display("%4t |   %b   |  %b", $time, reset, count);

        #10;
        $display("%4t |   %b   |  %b", $time, reset, count);

        #10;
        $display("%4t |   %b   |  %b", $time, reset, count);

        #10;
        $display("%4t |   %b   |  %b", $time, reset, count);

        #10;
        $display("%4t |   %b   |  %b", $time, reset, count);

        #10;
        $display("%4t |   %b   |  %b", $time, reset, count);

        $finish;
    end

endmodule
```
