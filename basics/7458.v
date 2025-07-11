module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    wire a1,a2,a3,a4;
    
    assign a1 = p1a && p1c && p1b;
    assign a2 = p2a && p2b;
    assign a3 = p2c && p2d;
    assign a4 = p1f && p1e && p1d;
    
    assign p1y = a1 || a4;
    assign p2y = a2 || a3;

endmodule
