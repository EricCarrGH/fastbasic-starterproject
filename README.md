FastBasic VSCode Starter Project
========================

A sample project for **Visual Studio Code** with a custom build task that will compile using **FastBasic** and run your Atari emulator


Prerequisites
------------
 - Install a Atari Emulator
    -  Mac: [Atari800MacX](https://www.atarimac.com/atari800macx.php) 
    -  Windows: [Altirra](https://www.virtualdub.org/altirra.html) 
 - Download the latest [FastBasic Release](https://github.com/dmsc/fastbasic/releases/)
    
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
    
    
