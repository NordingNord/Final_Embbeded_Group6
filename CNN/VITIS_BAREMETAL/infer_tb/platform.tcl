# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/frank/Documents/Git/Final_Embbeded_Group6/CNN/VITIS_BAREMETAL/infer_tb/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/frank/Documents/Git/Final_Embbeded_Group6/CNN/VITIS_BAREMETAL/infer_tb/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {infer_tb}\
-hw {/home/frank/Documents/Git/Final_Embbeded_Group6/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {/home/frank/Documents/Git/Final_Embbeded_Group6/CNN/VITIS_BAREMETAL}

platform write
platform generate -domains 
platform active {infer_tb}
platform generate
