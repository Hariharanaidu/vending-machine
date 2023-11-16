# vending machine
 
In this project a vending machine is designed using verilog HDL in Intel Quartus Prime software. Lets understand the working of vending machine. 
A vennding machine takes in currency and produces a product(typically beverages in real world) and change if applicable. Now this machine can be designed in verilog with the use of finite state machines( FSM ). Our vending machine takes coins one and two rupees as denominations and produces a product priced at three rupees and change if produced. The machine has three states as follows :
- no amount (s0)
- Rs 1 in account (s1)
- Rs 2 in account (s2)

This is a Mealey state machine as the outputs( product, change ) depend on both present state(state of the machine) and the input (coin). The functionality of the design is verified with a tetstbench.
