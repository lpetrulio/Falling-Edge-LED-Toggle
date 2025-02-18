# **Blink LED on Button Press (Falling Edge Triggered)**  

## **Description**  
This Verilog module, `blink_LED`, toggles an LED (`o_LED`) each time a push button (`i_Button`) is released. The LED state changes on the **falling edge** of the button press, meaning when the button transitions from **high (1) to low (0)**.  

## **How It Works**  
1. The module takes in a clock signal (`i_Clk`) and a button input (`i_Button`).  
2. A register (`r_Button`) stores the previous button state.  
3. On each rising edge of the clock:  
   - `r_Button` is updated with the current `i_Button` state.  
   - If `r_Button` was high (`1`) and `i_Button` is now low (`0`), it detects a **falling edge**.  
   - When a falling edge is detected, `r_LED` toggles (`~r_LED`).  
4. The LED output (`o_LED`) is assigned to `r_LED`, meaning the LED changes state each time the button is released.  

## **Usage**  
- Connect `i_Button` to a **push button** (with a pull-up resistor if necessary).  
- Connect `o_LED` to an **LED** to observe the toggling behavior.  
- Ensure `i_Clk` is a **stable clock source** (e.g., FPGA system clock).  

## **Key Features**  
**Falling edge detection** – LED toggles only when the button is released.  
**Debounce-friendly design** – Can be enhanced with a debouncing circuit if needed.  
**Synchronous operation** – Controlled by `i_Clk` for stable behavior.  

## **Potential Improvements**  
- Add **button debouncing** logic for better reliability.  
- Modify logic to support **multiple LEDs or different button actions**.  
