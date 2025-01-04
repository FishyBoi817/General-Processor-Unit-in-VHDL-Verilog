# General-Processor-Unit-in-VHDL-Verilog
GPU with ALU and FSM - Verilog Implementation
This project involves the design and implementation of a simple yet functional General Processor Unit (GPU) that incorporates several key components for arithmetic operations, control logic, and display. Originally completed as a university course assignment in VHDL, I later converted the entire design to Verilog to gain proficiency in another hardware description language (HDL) and further my understanding of digital design. The final implementation was developed and tested using Quartus II with waveform simulation for verification.

Project Features and Components:
General Processor Unit (GPU):
Two 8-bit latches: These latches hold 8-bit binary values and are connected to the Arithmetic Logic Unit (ALU) for further processing.
Arithmetic Logic Unit (ALU): The project includes three ALUs (ALU1, ALU2, ALU3), each responsible for performing different arithmetic operations.
Control Logic:
A Finite State Machine (FSM) - Mealy: This state machine controls the flow of the GPU, directing the operations based on the current state and input conditions.
4-to-16 Decoder: Used for address decoding, enabling the system to select different states or operations based on the input.
Output Display:
A Seven-Segment Display: Outputs the results of the operations for easy visualization.
Key Highlights:
VHDL to Verilog Conversion: The core achievement of this project was the transition from VHDL to Verilog. By converting the original VHDL code into Verilog, I was able to enhance my understanding of HDL syntax, design flow, and the distinct features of both languages.
Learning Experience: This project was not only an opportunity to apply theoretical knowledge from my coursework but also to explore different HDL tools and techniques. By re-implementing the design in Verilog, I developed a deeper understanding of hardware programming and the tradeoffs involved in different language constructs.
Simulation and Verification: I used Quartus II to design and implement the Verilog version of the GPU. The functionality of the design was verified through waveform simulation, ensuring that all components operated as expected, including the latches, ALUs, FSM, and output display.
Report Documentation: The original course report, which is based on the VHDL implementation, is also included in the repository, providing additional context and insights into the initial design and objectives.
Technologies Used:
VHDL (Original Version)
Verilog (Final Version)
Quartus II (for synthesis and simulation)
Waveform Simulation (for verification)
Objective:
This project showcases my ability to design and implement complex digital systems and to adapt to different hardware description languages. The transition from VHDL to Verilog has greatly enhanced my skills in hardware design and deepened my understanding of FPGA programming.
