# Script for Synthesize Process of a Design in Xilinx ISE

# This script needs to be opened in Notepad++.


# Suppose your project name is final_pll.xise, follow the next instructions:
# To open the project, you need to provide the full project path name:
# Example: "D:/username/project_name/project_filename.xise"

# project open "path" 


# How to run this script:
# For running the script, you need to put this .tcl file into project folder.
# Run in the Tcl Console of Xilinx ISE:
# To open the Tcl console, open from View > Panels > Tcl Console.
# Then, you can see the "Command > " prompt for Tcl Console at the left bottom corner.
# Then, run this script in that console using: source your_filename.tcl


#Synthesize -XST Settings

#Synthesis Options

project set "Optimization Goal" Speed                
#Possible options for Optimization Goal - Speed / Area
project set "Optimization Effort" Normal
#Possible options for Optimization Effort - Normal / High
project set "Power Reduction" False
#Possible options for Power Reduction - True / False
project set "Use Synthesis Constraints File" True
#Possible options for Use Synthesis Constraints File - True / False
project set "Keep Hierarchy" No
#Possible options for Keep Hierarchy - Yes / Soft / No
project set "Global Optimization Goal" AllClockNets
#Possible options for Global Optimization Goal - AllClockNets / Inpad to Outpad / Offset In Before / Offset Out After / Maximum Delay
project set "Generate RTL Schematic" Yes
#Possible options for Generate RTL Schematic - Yes / No / Only
project set "Write Timing Constraints" False
#Possible options for Write Timing Constraints - True / False
project set "DSP Utilization Ratio" 100
#Possible options for DSP Utilization Ratio - Percentage for DSP Utilization 
project set "Verilog 2001" True
#Possible options for Verilog 2001 - True / False


#HDL Options

project set "FSM Encoding Algorithm" Sequential                
#Possible options for FSM Encoding Algorithm - Auto / One-Hot / Compact / Sequential / Gray / Johnson / User / Speed1 / None
project set "Safe Implementation" Yes
#Possible options for Safe Implementation - Yes / No
project set "Case Implementation Style" None
#Possible options for Case Implementation Style - None / Full / Parallel / Full-Parallel
project set "RAM Extraction" True
#Possible options for RAM Extraction - True / False
project set "RAM Style" Auto
#Possible options for RAM Style - Auto / Distributed / Block
project set "ROM Extraction" True
#Possible options for ROM Extraction - True / False
project set "ROM Style" Auto
#Possible options for ROM Style - Auto / Distributed / Block
project set "Mux Extraction" Yes
#Possible options for Mux Extraction - Yes / No / Force
project set "Mux Style" Auto
#Possible options for Mux Style - MUXF / MUXCY
project set "Decoder Extraction" True
#Possible options for Decoder Extraction - True / False
project set "Priority Encoder Extraction" Yes
#Possible options for Priority Encoder Extraction - Yes / No / Force
project set "Shift Register Extraction" True
#Possible options for Shift Register Extraction - True / False
project set "Logical Shifter Extraction" True
#Possible options for Logical Shifter Extraction - True / False
project set "XOR Collapsing" True
#Possible options for XOR Collapsing - True / False
project set "Resource Sharing" False
#Possible options for Resource Sharing - True / False
project set "Use DSP Block" Auto
#Possible options for Use DSP Block - Auto / Yes / No 

#Xilinx Specific Options

project set "Add I/O Buffers" True                
#Possible options for Add I/O Buffers - True / False
project set "Max Fanout" 10000
#Possible options for Max Fanout - Positive integer denoting the maximum limit for fanout nets 
project set "Register Duplication" True
#Possible options for Register Duplication - True / False
project set "Equivalent Register Removal" True
#Possible options for Equivalent Register Removal - True / False
project set "Register Balancing" No
#Possible options for Register Balancing - No / Yes / Forward / Backward
project set "Pack I/O Registers into IOBs" Auto
#Possible options for Pack I/O Registers into IOBs - Auto / Yes / No
project set "LUT Combining" Auto
#Possible options for LUT Combining - Auto / No / Area
project set "Reduce Control Sets" Auto
#Possible options for Reduce Control Sets - Auto / No
project set "Slice Packing" True
#Possible options for Slice Packing - True / False
project set "Optimize Instantiated Primitives" False
#Possible options for Optimize Instantiated Primitives - True / False


puts "Successful"

process run "Check Syntax"
process run "Generate Post-Synthesis Simulation Model"
process run "Synthesize"


project close
