FastBasic VSCode Starter Project
========================

A sample Atari FastBasic project for Visual Studio Code with a custom build task that compiles and runs the xex in an Atari emulator. I put this together after wanting a quick way to write and test code on Atari emulators. The build task works on both Mac and Windows.  

When you run the build task, it will compile, then, assuming no compile errors, start the xex on an Atari emulator (restarting any previously running emulator).


Prerequisites
------------
 - Install a supported Atari Emulator
    -  Mac: [Atari800MacX](https://www.atarimac.com/atari800macx.php) 
    -  Windows: [Altirra](https://www.virtualdub.org/altirra.html) 
 - Download the latest [FastBasic Release](https://github.com/dmsc/fastbasic/releases/). If running the fastbasic compiler gives you an error (like it did me), you can try downloading the version I compiled formyself [here](https://github.com/EricCarrGH/fastbasic-starterproject/releases/tag/fastbasic-v4.6-macos-x86)
    
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
    
    
