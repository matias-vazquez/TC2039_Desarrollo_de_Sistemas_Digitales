<div align="right">
<img src="img/teclogo.png">
</div>

# TC2039 - Desarrollo de Sistemas Digitales
## Actividad 2.1 - Introducción y características de VHDL

## Contents

## [1. Quartus Prime 21.1 Lite Installation](#1-quartus-prime-211-lite-installation)
## [2. New Project Wizard](https://github.com/matias-vazquez/TC2039_Desarrollo_de_Sistemas_Digitales/tree/main/Module01/Activity_2.1#2-new-project-wizard)
## [3. Switch to LED](https://github.com/matias-vazquez/TC2039_Desarrollo_de_Sistemas_Digitales/tree/main/Module01/Activity_2.1#3-switch-to-led)

## 1. Quartus Prime 21.1 Lite Installation

### Background
A field-programmable gate array, or FPGA, is a digital semiconductor that can be used to build a wide variety of electronic functions. These data center accelerators, wireless base stations and industrial motor controllers to name but a few common applications. This is because FPGAs can be infinitely reconfigured to perform different digital hardware functions, which also makes for an
excellent learning platform.

To configure an FPGA, first you describe your digital electronics with either a Hardware Description Language (HDL), such as Verilog or VHDL, or a schematic. Then you assign the “pins” of your FPGA based on how the Printed Circuit Board (PCB) connects the FPGA to various peripheral components on your board. Some examples of peripherals are switches, LEDS, memory devices and various connectors. Finally, you “compile” your design and program the FPGA to perform the function you have specified in the HDL or schematic.

This training class assumes you have some prerequisite knowledge of how computers and digital electronics work, but by no means do you need an electrical engineering degree to follow along this introductory course.

### Installation

Go to the [Intel FPGA software download site](https://fpgasoftware.intel.com/?edition=lite). Make sure to select Lite edition, version 21.1, and your corresponding Operating System (only available for Windows and Linux).

<div align="center">
<img src="img/download01.png">
</div>

Download the Quartus Prime installer, along with the MAX 10 FPGA device support file and save both files on the same folder. 

<div align="center">
<img src="img/download02.png">
</div>

Run the `QuartusLiteSetup[...].exe` file to initiate the IDE installation. The Setup Wizard will show up with a welcome screen, as shown below. Just click Next.

<div align="center">
<img src="img/install_01.png">
</div>

Accept the software License Agreenment and click Next.

<div align="center">
<img src="img/install_02.png">
</div>

If you opt to install the software on a different folder than the default installation directory, change the installation path on the Installation directory window. If not, just click Next.

<div align="center">
<img src="img/install_03.png">
</div>

If you saved the Quartus Prime Lite installation file and the MAX 10 FPGA device support file on the same folder, on the Select Components window you should be able to see and select the MAX 10 FPGA support pack to install alongside the Quartus Prime software installation. Make sure that both, Quartus Prime Lite Edition and MAX 10 FPGA (under Devices branch) options are checked for installation and click Next. 

<div align="center">
<img src="img/install_04.png">
</div>

A Summary window will show the installation folder, as well as the available and required disk space for installation. Double check the installation folder and make sure you have enough disk space for installation. If so, click Next to proceed with the installation. 

<div align="center">
<img src="img/install_05.png">
</div>

Once the installation is completed in your system, a notification window will appear showing some pre-selected options by default. Keep the checked boxes as is,and click Next.

The Device Driver Installation Wizard window must show up, asking to install the Altera JTAG cables driver. Click on Install to proceed. 

<div align="center">
<img src="img/install_part2_02.png">
</div>

Once installation is complete, a Ready-to-use notification window must show that the Altera JTAG cables driver is installed and ready to be used. Click in Finish.

<div align="center">
<img src="img/install_part2_03.png">
</div>


## 2. New Project Wizard
This is a short lab that completes the basic project setup. At the end of this lab, you will be able to start a new project using New Project Wizard in Quartus Prime Software. There are other related tutorial links provided for you to learn more about the software.

### Navigation of Quartus Prime Lite
The first time you open Quartus Prime, a software licensing window will ask on acquiring a license. Select the Run the Quartus Prime software option, as shown below, and click Ok. After this, the main window will be shown. 

The Quartus Prime main window is composed of the following sections:

* __Project Navigator__ shows your project hierarchy, source files, design units, IP and design revisions in your project.
* __Tasks__ window shows the status of the design and can be used to run or re-run parts of the
design flow 
* __Messages__ window outputs messages from each process of the run.
* __Files__ window has tabs for the report browser, open design files and any other file opened by the user.
* __IP Catalog__ window is open by default and is used to generate IP functions that are to be
used in your design.

### New Project Wizard
In the main toolbar of Quartus, navigate to the File drop down menu and New Project Wizard.

<div align="center">
<img src="img/Quartus04.png">
</div>

__Pane 1: Introduction.__ There is nothing to configure on this pane. Click Next to continue.

<div align="center">
<img src="img/Quartus05.png">
</div>

__Pane 2: Directory, Name, Top-Level Entity.__

* Fill in with a directory of your choice. It is recommended to be a personal directory, and not a directory under Quartus installation which is the default.

* Call the project switch_to_led and the top level entity switch_to_led.
The name of the top-level design entity is case-sensitive so ensure that you type the name in all lower-case. See Figure 4 below for a completed Pane 2.

*Note: the screen shots will have a different directory than what you will use
for your project. This is fine!*

<div align="center">
<img src="img/Quartus06.png">
</div>

__Pane 3: Project Type.__ Select **Empty project.** Click **Next.**

<div align="center">
<img src="img/Quartus07.png">
</div>

__Pane 4: Add Files.__ Click __Next.__ We will add project source files later.

<div align="center">
<img src="img/Quartus08.png">
</div>

__Pane 5: Family, Device, and Board Settings.__

* Family should be set to MAX 10. Make sure the tab is set to Device.

* The part number for the FPGA chip you will use is __10M50DAF484C7G__. You need to type this number in the Name filter bar.

<div align="center">
<img src="img/Quartus09.png">
</div>

__Pane 6: EDA Tool Settings.__ Skip this section and click __Next__. This section is only needed if you are using other development software besides Quartus Prime.

<div align="center">
<img src="img/Quartus10.png">
</div>

__Pane 7: Summary.__ Pane 7 should look similar to the image seen in Figure 5.

*Note: you now have a project called switch_to_led, and top-level entity called switch_to_led, no files selected (yet) and are using a Cyclone III device.*

Click __Finish__.

<div align="center">
<img src="img/Quartus11.png">
</div>

You should now see something similar to Figure 6 (__The Tool View Window__ may just have a gray Quartus Prime screen. This is fine.)

<div align="center">
<img src="img/Quartus03.png">
</div>

Some windows may not be shown by default. To customize what windows are shown, click on the View tab and look under the Utility Windows drop down as seen in Figure 7.

<div align="center">
<img src="img/Quartus12.png">
</div>

If you navigate in Windows Explorer to your project directory, you will see some files and directories created by the New Project Wizard as part of the setup process.

## 3. Switch to LED
### 3.1 Summary
This lab will step you through the process of a simple design from generating your first Verilog file to synthesize and compile. Synthesis converts your Verilog language file to an FPGA specific “netlist” that programs the programmable FPGA lookup tables into your desired function. Compilation figures out the location of the lookup table cells used in the FPGA and generates a
programming image that is downloaded to your Intel FPGA Development kit. At the end of this lab, you will be able to test the functionality of the example digital electronic circuits by toggling the switches and observing the LEDs for proper circuit operation.

### 3.2 Creating a New File
Create a Verilog HDL file. Go the File dropdown menu and select New. 

A window, shown in Figure 8, should pop up. Click on Verilog HDL File and then Ok.

<div align="center">
<img src="img/Quartus13.png">
</div>

### 3.3 Adding Verilog Code
Create a simple module in your Verilog HDL file copying/pasting this code from the file
switch_to_led.v.

The code you will use is displayed below. Do not cut and paste from here as sometimes cut and paste from a GitHub pdf or downloaded pdf introduces some illegal characters.

``` verilog
module switch_to_led(SW, LEDR); //create module switch_to_led
input [9:0] SW; // input declarations: 10 switches
output [9:0] LEDR; // output declarations: 10 red LEDs
assign LEDR = SW; // connect switches to LEDs
endmodule
``` 

Make sure carriage returns and new lines are in the right location or your code will not
compile properly! Verilog treats all blank space (spaces or tabs) the same.

__BRAIN EXERCISE:__ Check your syntax carefully! Can you explain what this circuit does?

Click on File, name the file as switch_to_led (ensuring case-sensitivity), and click
Save As… to save your Verilog file.

Next you will run Analysis and Elaboration. Analysis and Elaboration checks the syntax of your Verilog code, resolves references to other modules and maps to FPGA logic. If you see any errors during the Analysis and Elaboration step, carefully review your Verilog code for syntax errors and re-run this step. 

To run Analysis and Elaboration, click the Play button with a green check mark,
shown in Figure 9 below.

<div align="center">
<img src="img/Quartus14.png">
</div>

### 3.4 Assigning Pins
By default, Quartus Prime does not know how the FPGA pins on the DE10-Lite development board are connected to the switches and LEDs used in this circuit. Because our FPGA is already on a PCB, we need to tell Quartus what pins to use. Although Quartus allows you to select a development board with a predefined pinout, this lab shows you how to define your own pinout as an exercise.

<div align="center">
<img src="img/Quartus15.png">
</div>

The next steps will assign the switches and LED signals in your code to the appropriate pins.

Using the main toolbar at the top of the Quartus window, navigate to the Assignments dropdown menu as shown above in Figure 10. Click on Pin Planner and a window similar to the image in Figure 11 should open.

<div align="center">
<img src="img/Quartus16.png">
</div>

We can see the I/O pins have not been assigned to any locations yet. To make the right pin assignments, refer to the table below.

*Note: The switch_to_led lab does not require the CLOCK_50 signal but it will be used in
the final lab and will resolve when you run that lab.*

| Node name | Location | I/O Standard |
|---|---|---|
| LEDR[9] | PIN_B11 | 3.3 LVTTL |
| LEDR[8] | PIN_A11 | 3.3 LVTTL |
| LEDR[7] | PIN_D14 | 3.3 LVTTL |
| LEDR[6] | PIN_E14 | 3.3 LVTTL |
| LEDR[5] | PIN_C13 | 3.3 LVTTL |
| LEDR[4] | PIN_D13 | 3.3 LVTTL |
| LEDR[3] | PIN_B10 | 3.3 LVTTL |
| LEDR[2] | PIN_A10 | 3.3 LVTTL |
| LEDR[1] | PIN_A9  | 3.3 LVTTL |
| LEDR[0] | PIN_A8  | 3.3 LVTTL |
| SW[9]   | PIN_F15 | 3.3 LVTTL |
| SW[8]   | PIN_B14 | 3.3 LVTTL |
| SW[7]   | PIN_A14 | 3.3 LVTTL |
| SW[6]   | PIN_A13 | 3.3 LVTTL |
| SW[5]   | PIN_B12 | 3.3 LVTTL |
| SW[4]   | PIN_A12 | 3.3 LVTTL |
| SW[3]   | PIN_C12 | 3.3 LVTTL |
| SW[2]   | PIN_D12 | 3.3 LVTTL |
| SW[1]   | PIN_C11 | 3.3 LVTTL |
| SW[0]   | PIN_C10 | 3.3 LVTTL |
| CLOCK_50 | PIN_P11 | 3.3 LVTTL |

__TO ASSIGN PINS__

Match the Signal Name (1st column) with the FPGA Pin # (2nd column) in the table above. Assign LEDR[9] to PIN_B11 by typing PIN_B11 in the Location column in the Pin Planner.

___Note:__ the signal names in your code and names in the manual don’t have to match. As long as you connect the names in your design to the proper pin location, your design will be connected properly. In this lab, we have named the signals as a vector so pin names are of the form LEDR[0], LEDR[1], and so on._

An alternate method is to left click on the Node Name in the Pin Planner and drag the pin on top of the ball grid map location assigned in the table. Release the pin on the proper location. Hit the escape key and move to the next pin. Assign LEDR[8] to PIN_W21 using this method.

When you finish, you can just close the window – the Pin Planner does not have a Save button, but it will save anyways. This switch_to_led lab does not require the CLOCK_50 signals so you can ignore these for the time being. The clock signal is required for the Knight Rider lab, so you will need to assign it prior to compiling that lab.

Last, we will assign the remaining pins using a TCL command. In Quartus, proceed to View → Utility Windows → TCL Console. You should see a window across the bottom of your Quartus window as shown in Figure 12. If it doesn’t show up, try the command again as this toggle the window on and off.

<div align="center">
<img src="img/Quartus17.png">
</div>

Open this file that contains the TCL pin placement commands: DE10_Lite_pins.tcl.

Copy the commands from the file and enter them in the TCL Console window. Note that if you reassign pins that have already been assigned in the pin planner, this will not cause a problem, as long as the pin locations are correct. Make sure that carriage returns are properly copied over from these TCL commands into the TCL utility window. If all the lines in the DE1SOC_pins.tcl show up on one line, try another editor (eg vi seems to merge all the lines and notepad includes the carriage returns). If all 21 TCL commands show up as a single continuous line, you will need to copy and paste each command one at a time or copy from a different editor. The beginning of each line starts with set_location_assignment.

___Note:__ Make sure you enter the last carriage return entered in the TCL command
window to pick up the last line CLOCK_50 pin location._

Now the remaining pins have been assigned for you by the script. To check what has been  assigned, you can return to the Pin Planner application or alternatively open the Assignment Editor Window (Assignments → Assignment Editor) to check that the TCL commands have properly set the pinout for your Switch to LED design. Try both methods to familiarize yourself with different techniques to manage and observe pin constraints. Note the direction of the ports since they match your switch_to_led design. CLOCK_50 port is indicated with a question mark since it doesn’t exist in your design, but will be used in a subsequent lab.

<div align="center">
<img src="img/Quartus18.png">
</div>

### 3.5 Compiling Your Code
Click the Start Compilation button, located at the top of the main Quartus window, to start the full compilation of your code. You can also go to: Processing → Start Compilation.

After roughly 1 to 2 minutes depending on your machine type and amount of RAM, the compilation should complete and there should be 0 errors. (You can ignore warnings.)

<div align="center">
<img src="img/Quartus19.png">
</div>

### 3.6 Driver Installation and FPGA Programming
A successful compilation will produce an SRAM object file, which configures the interconnect and logic of the FPGA to implement your RTL. This file is produced in the output_files folder of your Quartus project directory. We need to tell Quartus to program this file to our FPGA. Additionally, we need the Quartus Programmer tool to know what devices are on the JTAG chain. In this case the DE1-SoC has an additional ARM hard processor. To program the FPGA the proper drivers must also be installed. Perform the following steps to configure drivers and program the DE1-SoC using the Quartus Prime Programmer tool.
1. Ensure the USB cable is connected from the DE10-Lite to the host computer. This should automatically power on the development kit.
2. Open your Device Manager by hitting the Windows Key and typing Device Manager.
3. Navigate to the Other Devices section of the Device Manager and expand to reveal the USB-Blaster device, if it is in another device category, the drivers may have previously been installed.

<div align="center">
<img src="img/drivers01.png">
</div>

4. Right-click on USB-Blaster to select Update Driver and choose to browse your computer for driver software and navigate to the following directory path: `%QUARTUS_ROOTDIR%\intelFPGA_lite\18.0\quartus\drivers` where `%QUARTUS_ROOTDIR%` is the installation directory of Quartus Prime Lite.

<div align="center">
<img src="img/drivers02.png">
</div>

5. Once you have the proper file path selected, click on Next and the driver for the USB Blaster should be installed.

<div align="center">
<img src="img/drivers03.png">
</div>

6. With the drivers installed we may now program the FPGA on the DE10-Lite. First, open the programmer tool from Quartus by navigating Tools → Programmer.

<div align="center">
<img src="img/programmer01.png">
</div>

7. If drivers were successfully installed, next to the “Hardware Setup…” button, you should see "USB_Blaster [USB-XX]" indicating an SoC-type DE development kit has been detected.
a. If not, you may need to click Hardware Setup and from the Currently selected hardware dropdown menu select USB_Blaster [USB-XX] and press Close.
8. Click Auto Detect.
9. Finally check the Program/Configure box for the 10M50DAF484 FPGA device and press Start.
10. Verify that the Progress bar indicates “100% (successful)”. Now you can play with the board switches and see what happens.

<div align="center">
<img src="img/programmer02.png">
</div>

