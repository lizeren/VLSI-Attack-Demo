module counter8bit_tb;
    // Testbench signals
    logic clk;
    logic rst_n;
    logic [7:0] count;

    // Instantiate the 8-bit counter
    counter8bit uut (
        .clk(clk),
        .rst_n(rst_n),
        .count(count)
    );

    // Clock generation
    always #5 clk = ~clk; // 100 MHz clock

    initial begin
        // Initialize signals
        clk = 0;
        rst_n = 0;
        
        // Apply reset
        #10 rst_n = 1;

        // Let the counter run for 100 time units
        #100;

        // Finish simulation
        $finish;
    end

    // Enable waveform dumping
    initial begin
        $shm_open("counter8bit.shm");
        $shm_probe("AS");
    end
endmodule
