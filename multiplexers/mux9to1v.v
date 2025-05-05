module top_module( 
    input [15:0] a, b, c, d, e, f, g, h, i,
    input [3:0] sel,
    output [15:0] out );
	
    assign out = ((sel == 1'b0)? a : 
                 ((sel == 1'b1)? b : 
                 ((sel == 2'b10)? c: 
                 ((sel == 2'b11)? d: 
                 ((sel == 3'b100)? e: 
                 ((sel == 3'b101)? f: 
                 ((sel == 3'b110)? g: 
                 ((sel == 3'b111)? h: 
                 ((sel == 4'b1000)? i: 
                 16'hffff
                 )))))))));
    
    // prefiro switch case.
    // always @(*) begin
    // out = '1; caso default
    // case (sel) o case so funciona em um always
    // 1'b0: out = a;
    // 1'b1: out = b;
    // ....
    // endcase
    // end
endmodule
