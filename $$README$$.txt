--------
Jun 2019
--------

This folder contains smartBASIC applications that when loaded in a Pinnacle100 
module will expose an AT interface, that will allow AT commands to be sent 
over the uart interface (@ 115200,N,8,1) to make it do various BLE, NFC or 
GPIO actions.

The functionality is being able to allow communciation with the cellular
modem module and also do various BLE and NFC stuff using the nrf840

     ==============================================================
     The minimum firmware version that you will need is as follows:
     
                        120.4.6.2
          
      The command 'AT I 3<cr>' will return the version number from
      the module
     ==============================================================

The folder contains many smartBASIC source code files which end with the
extension ".sb"

Start testing with file "$autorun$.AT.interface.pinnacle100.sb"

 ------------------------------------------------------------------------
   The application files have filenames with the following pattern ..
   
     $autorun$.AT.interface.pinnacle100.FFF..FFF.sb
     
   Where FFF..FFF are variants with different options
   
------------------------------------------------------------------------

An application is downloaded to a module using a free Laird utility called
UwTerminalX. You can download the utility from ...

    https://github.com/LairdCP/UwTerminalX/releases

Only files that start with "$autorun$" are stand alone.
  DO NOT SELECT ANY FILES TO DOWNLOAD THAT DOES NOT START WITH "$autorun$

All other files are library files which are #included in the stand alone
files and if you try to download them to a module you will get one or
more download errors. 

To make that clear, all library files start with a filename "$LIB$."

When an app is downloaded it will be saved in the module's file system as 
a file called "$autorun$" which means it will automatically run when the
module is reset or powered up.

QUICK START GUIDE
Once an application is downloaded using UwTerminalX, power cycle the module.
Then send the command ATI0<cr> where <cr> is the enter key and you will 
see the module respond with the name of the module and then an "OK" response.
You may instead see the name of the cellular modem on the module depending
on the default host uart bridging.

DOCUMENTATION
There are two main documents that are relevant for this application which
can be found at

  https://www.lairdconnect.com/wireless-modules/cellular-solutions/pinnacle-100-cellular-modem
  
   (1) CS-GUIDE-ATInterface-Pinnacle-100-Module_v1_00.pdf
   (2) AT Interface Quick Start Guide
