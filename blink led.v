module blink_LED (
    input  i_Clk, 
    input  i_Button,
    output o_LED
); 

    reg r_Button = 1'b0;
    reg r_LED    = 1'b0;

    always @(posedge i_Clk) begin
        r_Button <= i_Button; 
        
        if (r_Button == 1'b1 && i_Button == 1'b0) begin 
            r_LED <= ~r_LED; 
        end 
    end 

    assign o_LED = r_LED; 

endmodule 
