// Sample 2 — apb4_tb.sv
// From: "SystemVerilog Scheduling Semantics" paper in Docs
// Demonstrates a simple program-block
// repeatedly calls a mock task in the reactive region.
// This example appears in Section IV: Program Blocks vs. Module Blocks in Testbench Scheduling.

`timescale 1 ns/1 ns

program apb4_tb;

    bit pclk=0;
    initial forever #5 pclk = ~pclk;

    initial forever begin
        @(negedge pclk);
        send_apb4_packet();
    end

    task send_apb4_packet;
        $display("This is a mock task");
    endtask: send_apb4_packet
    
    initial #100 $finish;

endprogram : apb4_tb
