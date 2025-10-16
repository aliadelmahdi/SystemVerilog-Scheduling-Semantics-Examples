// Sample 1 — mini_regions.sv
// From: "SystemVerilog Scheduling Semantics" paper in Docs
// Demonstrates visibility across scheduler regions (ACTIVE, INACTIVE, POSTPONED)
// This example appears in Section III: Illustrative Example

`timescale 1 ns/1 ns
module mini_regions();

bit clk=0, a=0;
initial forever #5 clk = ~clk;

always_ff @(posedge clk) a <= ~a;

always @(posedge clk) begin
  $display("%0t ACTIVE a=%0b", $time, a);
  #0 $display("%0t INACTIVE a=%0b", $time, a);
end

always @(posedge clk) $strobe("%0t POSTPONED a=%0b", $time, a);

initial #100 $finish;

endmodule : mini_regions
