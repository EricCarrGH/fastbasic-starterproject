FastBasic VSCode Starter Project
========================

A sample Atari FastBasic project for Visual Studio Code with a custom build task that runs the FastBasic cross-compiler to compile, then runs the xex in an Atari emulator. I put this together after wanting a quick way to write and test code on emulators. There is a build task for both  Windows and Mac.

When you run the build task, it will compile, then, assuming no compile errors, start the xex on an Atari emulator (restarting any previously running emulator). If there ARE compile errors, you will find them in the bottom window of VSCode.


Prerequisites
------------
 - Install a supported Atari Emulator
    -  Windows: [Altirra](https://www.virtualdub.org/altirra.html) 
    -  Mac: [Atari800MacX](https://www.atarimac.com/atari800macx.php) 
 - Download the latest FastBasic Release
    - Windows: [Download the latest FastBasic release here](https://github.com/dmsc/fastbasic/releases/).
    - Mac: [Download INTERIM build here](https://github.com/dmsc/fastbasic/files/11000997/fastbasic-v4.6-31-g5004ef1-dirty-macosx.zip)
        1. **PLEASE NOTE:** The current version (v4.6) does not work properly on macs, but dmsc (the author of FastBasic) has created an interim build that has been tested on multiple Macs and that I personally have found to work.
        2. The first time you compile, the Mac will complain that the compiler file(s) are not signed.
        3. After you see the error, you have to go into Mac settings and allow running of the executable. Then, compile again and repeat 3-4 times (for each compiler executable - there are multiple) until compiling finsihes without issue. You only have to do this "trust the files" step once.
    
Setup
------------
1. Download and install [Visual Studio Code](https://code.visualstudio.com/)
2. Download a [zip of this repo](https://github.com/EricCarrGH/fastbasic-starterproject/archive/refs/heads/main.zip)
3. Edit build script paths:
    
    - Windows:
        1. Open **build.bat**
            1. Change the path to your fastbasic compiler
            2. Change the path to your emulator

            
    - Mac:
        1. Open **build** and change the path to your downloaded copy of the fastbasic compiler
        2. Open terminal, go to the project folder, and type the following to make **build** executable:
            
            `chmod +x build`
 
Now you are ready to build the example file

Build the example file
----------
1. Open the project folder in VS Code
2. Open the example.bas file
3. Build the file
    - Windows: Press `Ctrl+Shift+B`
    - Mac: Press `Cmd+Shift+B`
4. VSCode will open a new terminal window, compile, then start the emulator


Tips / Troubleshooting
-------------------
 - The VSCode terminal will show any Fastbasic compile errors
 - Bind the build task to an easier to press keyboard shortcut in VSCode. I use Ctrl+D (Cmd+D in Mac)
     - Press `Ctrl+K, Ctrl+S` (`Cmd+K, Cmd+S` in Mac) to open the VSCode shortcuts window and search for `build task`
 - Look at the terminal for other issues, like the wrong path to the compiler or emulator
    
    
