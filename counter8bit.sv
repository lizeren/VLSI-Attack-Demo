module counter8bit (
    input logic clk,
    input logic rst_n,
    output logic [7:0] count
);

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            count <= 8'b0; // Reset counter to 0
        else
            count <= count + 1; // Increment counter
    end

endmodule
