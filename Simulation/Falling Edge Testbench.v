`timescale 1ms / 1us 

module falling_edge_tb; 

reg i_Clk; 
reg i_Button; 
wire o_LED; 

blink_LED UUT(
    .i_Clk(i_Clk),
    .i_Button(i_Button),
    .o_LED(o_LED)
);
 
always #5 i_Clk = ~i_Clk; 

initial begin 
    $dumpfile("waveform_blink_LED.vcd"); 
    $dumpvars(0, falling_edge_tb);

    // initialize signals
    i_Button = 0;
    i_Clk = 0; 
    #25;
    
    // button is pushed, LED not toggled yet
    i_Button = 1;
    #20;

    // button is released, should toggle LED
    i_Button = 0; 
    #20;
    
    $finish; 
end 
endmodule 