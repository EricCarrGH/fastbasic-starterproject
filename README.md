FastBasic VSCode Starter Project
========================

A sample Atari FastBasic project for Visual Studio Code with a custom build task that runs the FastBasic cross-compiler to compile, then runs the xex in an Atari emulator. I put this together after wanting a quick way to write and test code on emulators. The build task works on both Mac and Windows.  

When you run the build task, it will compile, then, assuming no compile errors, start the xex on an Atari emulator (restarting any previously running emulator).


Prerequisites
------------
 - Install a supported Atari Emulator
    -  Mac: [Atari800MacX](https://www.atarimac.com/atari800macx.php) 
    -  Windows: [Altirra](https://www.virtualdub.org/altirra.html) 
 - Download the latest FastBasic Release
    - Windows: Download here: [FastBasic Release](https://github.com/dmsc/fastbasic/releases/).
    - Mac: The current version (v4.6) does not work properly on macs, but the author of FastBasic has created an interim build [here](https://github.com/dmsc/fastbasic/files/11000997/fastbasic-v4.6-31-g5004ef1-dirty-macosx.zip) that has been tested on multiple Macs and that I have found to work.
        1. The first time you compile, the Mac will complain that the compiler file is not signed.
        2. After you see the error, you have to go into Mac settings and allow running of the executable. Then, compile again and repeat 3-4 times until compiling finsihes without issue. You only have to do this "trust the files" step once.
    
Setup
------------
1. Download and install [Visual Studio Code](https://code.visualstudio.com/)
2. Download a [zip of this repo](https://github.com/EricCarrGH/fastbasic-starterproject/archive/refs/heads/main.zip)
3. Edit build script paths:

    - Mac:
        1. Open **build** and change the path to your downloaded copy of the fastbasic compiler
        2. Open terminal, go to the project folder, and type the following to make **build** executable:
            
            `chmod +x build`
    
    - Windows:
        1. Open **build.bat**
            1. Change the path to your fastbasic compiler
            2. Change the path to your emulator
 
Now you are ready to build the example file

Build the example file
----------
1. Open the project folder in VS Code
2. Open the example.bas file
3. Build the file
    - Mac: Press `Cmd+Shift+B`
    - Windows: Press `Ctrl+Shift+B`
4. VSCode will open a new terminal window, compile, then start the emulator


Tips / Troubleshooting
-------------------
 - The VSCode terminal will show any Fastbasic compile errors
 - Bind the build task to an easier to press keyboard shortcut in VSCode. I use Cmd+D (Ctrl+D windows)
     - Press `Cmd+K, Cmd+S` ( `Ctrl+K, Ctrl+S` in Windows) to open the VSCode shortcuts window and search for `build task`
 - Look at the terminal for other issues, like the wrong path to the compiler or emulator
    
    
