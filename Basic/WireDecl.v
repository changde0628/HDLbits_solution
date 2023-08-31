`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    wires ab,cd,abcd;
    assign {ab,cd} = {a&&b,c&&d};
    assign abcd = ab && cd;
    assign {out,out_n} = {abcd,~abcd};
endmodule
    /*
    Info: Quartus Prime EDA Netlist Writer was successful. 0 errors, 0 warnings
    Info: Peak virtual memory: 668 megabytes
    Info: Processing ended: Thu Aug 31 07:55:37 2023
    Info: Elapsed time: 00:00:00
    Info: Total CPU time (on all processors): 00:00:00
    Info (23030): Evaluation of Tcl script /home/h/hdlbits/compile.tcl was successful
    Info: Quartus Prime Shell was successful. 0 errors, 1 warning
    Info: Peak virtual memory: 482 megabytes
    Info: Processing ended: Thu Aug 31 07:55:38 2023
    Info: Elapsed time: 00:00:04
    Info: Total CPU time (on all processors): 00:00:03
    */