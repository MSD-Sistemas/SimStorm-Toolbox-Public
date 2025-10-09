# MSD Simulink Toolbox

The **MSD Simulink Toolbox** provides a set of productivity functions designed to streamline modeling workflows in **MATLAB Simulink**.  
These tools automate common tasks such as creating Goto/From blocks, generating input/output interfaces, and assigning signal names intelligently — improving model clarity and consistency.

---

## ⚙️ Installation

1. **Extract** all the toolbox files to a folder of your choice.  
2. **Add the main folder and all subfolders** to your MATLAB path:  
   ```matlab
   addpath(genpath('C:\path\to\MSD_SimulinkToolbox'))
   savepath
   ```
3. (Optional) Restart MATLAB to ensure the functions are recognized.

---

## 🚀 Usage

After installation, the functions can be called directly from MATLAB or integrated into Simulink callbacks, model scripts, or custom context menus.

Each function expects an `inArgs` structure with the required Simulink block references and context information.

Example:
```matlab
createGotoBlocks(inArgs);
```

---

## 🧩 Available Functions

### 1. `setSignalNamesBasedOnSrcBlk(inArgs)`
Sets the signal name according to the **source block**:
- **From blocks:** Signal name = Tag  
- **Other blocks:** Signal name = Block name  

---

### 2. `setSignalNamesBasedOnDestBlk(inArgs)`
Sets the signal name according to the **destination block**:
- **Goto blocks:** Signal name = Tag  
- **Other blocks:** Signal name = Block name  

---

### 3. `fillTagFrom(inArgs)`
Automatically fills the **Tag** of a *From* block using the corresponding *Goto* block tag.

---

### 4. `createOutputBlocks(inArgs)`
Creates new **Output blocks** according to the selected element:
- For **Subsystems** → one Output per Outport (names inherited)  
- For **Bus Selectors** → one Output per selected signal  

---

### 5. `createInputBlocks(inArgs)`
Creates new **Input blocks** according to the selected element:
- For **Subsystems** → one Input per Inport  
- For **Outport blocks** → one From block per output signal  

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

---

## 🧠 Developer Notes

All functions delegate processing to corresponding internal implementations (e.g., `createFromBlocksFunction(inArgs)`), ensuring a clean separation between the Simulink interface and the logic layer.

Developed by **MSD SISTEMAS**  
📧 *daniel.damasceno@msdconsult.com.br*  
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
 ┗ 📜 Demo
      ┗ 📜 createGoto.gif
```

---

## 🧩 Compatibility

- MATLAB R2020b or newer  
- Simulink required  

---

## 🪪 License

This toolbox is distributed under the [MSD License](LICENSE).  
A request of lincense is required for commercial use.