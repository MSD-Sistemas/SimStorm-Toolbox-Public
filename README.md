# SimStorm Matlab/Simulink Toolbox

The **SimStorm Toolbox** provides a set of functions designed to streamline the typical tasks on modeling activities in **MATLAB Simulink**.  
These tools automate common tasks as testing (including test execution, reports creation and expected/simulated results comparison), assignment of signal names (to improve model clarity and consistency), signal routing (with Goto/From blocks) and creation of input/output interfaces.
---

## ⚙️ Download and Installation

Just run the following command in MATLAB command window:

```matlab
mkdir C:\MSD_Toolbox
system('git clone https://github.com/MSD-Sistemas/MSD-Toolbox-Public C:\MSD_Toolbox')
addpath(genpath('C:\MSD_Toolbox'))
savepath
```

![Create Goto from Subsystem](./Demo/toolboxInstall.gif)

---

## 🚀 First Use

After installation, you will need a valid license.lic file from MSD SISTEMAS to enable the toolbox.
To obtain a license file, just send an email to daniel.damasceno@msdconsult.com.br or evandson.dantas@msdconsult.com.br with the HASH code generated in MATLAB command window by running:

```matlab
MSD_license_2025
```

You will get an information like this:
![License Hash](./Demo/licenseHash.png)

After receiving your license file, place it into the Toolbox root folder, typically located at:
```
C:\MSD_Toolbox
```

Now you can start to create your models faster using the SimStorm Toolbox.

Just follow the examples below!

And keep in mind you can also integrate these functions to your scripts and Simulink callbacks, or use them with a simple right-click to show the custom context menu.

---

## 🧩 Available Functions

### 1. `setSignalNamesBasedOnSrcBlk(inArgs)`
Sets the signal name according to the **source block**:
- **From blocks:** Signal name = Tag  
- **Other blocks:** Signal name = Block name  

![Sets the signal name from source](./Demo/setNameSrc.gif)

---

### 2. `setSignalNamesBasedOnDestBlk(inArgs)`
Sets the signal name according to the **destination block**:
- **Goto blocks:** Signal name = Tag  
- **Other blocks:** Signal name = Block name  

![Sets the signal name from destination](./Demo/setNameDst.gif)

---

### 3. `fillTagFrom(inArgs)`
Automatically fills the **Tag** of a *From* block using the corresponding *Goto* block tag.

![Fill FROM with same name as GOTO](./Demo/fillFrom.gif)

---

### 4. `createOutputBlocks(inArgs)`
Creates new **Output blocks** according to the selected element:
- For **Subsystems** → one Output per Outport (names inherited)  
- For **Bus Selectors** → one Output per selected signal  
![Create Outputs from Subsystem](./Demo/createOutputs.gif)

---

### 5. `createInputBlocks(inArgs)`
Creates new **Input blocks** according to the selected element:
- For **Subsystems** → one Input per Inport  
- For **Outport blocks** → one From block per output signal  

![Create Inputs from Subsystem](./Demo/createInputs.gif)

---

### 6. `createGotoBlocks(inArgs)`
Generates **Goto blocks** based on selection:
- **Subsystem** → one Goto per Outport (Tag = Outport name)  
- **Inport block** → one Goto per Inport (Tag = Inport name)  
- **Bus Selector** → one Goto per selected signal  

![Create Goto from Subsystem](./Demo/createGoto.gif)

---

### 7. `createFromBlocks(inArgs)`
Generates **From blocks** based on selection:
- **Subsystem** → one From per Inport (Tag = Inport name)  
- **Outport block** → one From per Outport (Tag = Outport name)  

![Create From from Subsystem](./Demo/createFrom.gif)

---

## 👁️‍🗨️ Testing Functions

We also provide a set of testing scripts to support verification and validation.

Our testing scripts include the following features:
a. Test vector acquisition;
a. Test Execution;
b. Expected / Simulated results comparison; and
c. Report Generation.

A sample script is available in the `samples/testVector` folder.

To run the tests, follow these steps shown in the video below:
[Video how to use testVector](./Demo/UsingTestVector.mp4)

## 🧠 Developer Notes

All functions delegate processing to the corresponding internal implementations (e.g., `createFromBlocksFunction(inArgs)`), ensuring a clean separation between the Simulink interface and the logic layer.

Developed by **MSD SISTEMAS**  
📧 *daniel.damasceno@msdconsult.com.br*  
📧 *evandson.dantas@msdconsult.com.br*  
🧾 *Revision 1.0*

---

## 📁 Folder Structure

```
📦 MSD_SimulinkToolbox
 ┣ 📜 setSignalNamesBasedOnSrcBlk.m
 ┣ 📜 setSignalNamesBasedOnDestBlk.m
 ┣ 📜 fillTagFrom.m
 ┣ 📜 createOutputBlocks.m
 ┣ 📜 createInputBlocks.m
 ┣ 📜 createGotoBlocks.m
 ┣ 📜 createFromBlocks.m
 ┣ 📜 README.md
 ┣ 📜 LICENSE
 ┣ 📜 CoreFunctions
      ┣ 📜 setSignalNamesBasedOnSrcBlkFunction.m
      ┣ 📜 setSignalNamesBasedOnDestBlkFunction.m
      ┣ 📜 fillTagFromFunction.m
      ┣ 📜 createOutputBlocksFunction.m
      ┣ 📜 createInputBlocksFunction.m
      ┣ 📜 createGotoBlocksFunction.m
      ┗ 📜 createFromBlocksFunction.m
 ┣ 📜 TestFunctions
      ┣ 📜 test_setSignalNamesBasedOnSrcBlk.m
      ┣ 📜 test_setSignalNamesBasedOnDestBlk.m
      ┣ 📜 test_fillTagFrom.m
      ┣ 📜 test_createOutputBlocks.m
      ┣ 📜 test_createInputBlocks.m
      ┣ 📜 test_createGotoBlocks.m
      ┗ 📜 test_createFromBlocks.m
 ┣ 📜 samples
      ┗ 📜 testVector
         ┣ 📜 runTestVector.m
         ┣ 📜 sampleDesignR2022b.slx
         ┗ 📜 testVector.xlsx
 ┗ 📜 Demo
      ┣ 📜 createFrom.gif
      ┣ 📜 fillFrom.gif
      ┣ 📜 createGoto.gif
      ┣ 📜 createInputs.gif
      ┣ 📜 createOutputs.gif
      ┣ 📜 setNameDst.gif
      ┗ 📜 setNameSrc.gif
```

---

## 🧩 Compatibility

- MATLAB R2020b or newer  
- Simulink required  

---

## 🪪 License

This toolbox is distributed under the [MSD License](LICENSE).  
To remove the disclaimers, renew the license or extend the features, please contact daniel.damasceno@msdconsult.com.br or evandson.dantas@msdconsult.com.br.