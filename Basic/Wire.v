module top_module(input in, output out);
    assign out = in;
endmodule

/* Note :
wires are directional in verilog, so "assign in = out" is not equivalent.
*/