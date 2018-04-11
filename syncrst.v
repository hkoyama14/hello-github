module syncrst (
	clk,		// Input clock 16MHz
	rst_a,		// Asynchronus reset
	rst_s		// Synchronus reset
);

input	clk;
input	rst_a;

output	rst_s;

reg	rst_s;

// internal use
reg	rst_i;

//
// Synchronus reset signal
//

always @(posedge clk) begin
	rst_i <= ~rst_a;
	rst_s <= rst_i;
end

endmodule

