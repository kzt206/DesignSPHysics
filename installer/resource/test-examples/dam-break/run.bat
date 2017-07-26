@echo off
echo "------- Autoexported by DesignSPHysics -------"
echo "This script executes GenCase for the case saved, that generates output files in the *_Out dir. Then, executes a simulation on CPU of the case. Last, it exports all the geometry generated in VTK files for viewing with ParaView."
pause
"C:/DualSPHysics/EXECS/GenCase4_win64.exe" C:/Users/ndrs/AppData/Roaming/FreeCAD/Macro/test-examples/dam-break/dam-break_Def C:/Users/ndrs/AppData/Roaming/FreeCAD/Macro/test-examples/dam-break/dam-break_Out/dam-break -save:+all
"C:/DualSPHysics/EXECS/DualSPHysics4_win64.exe" C:/Users/ndrs/AppData/Roaming/FreeCAD/Macro/test-examples/dam-break/dam-break_Out/dam-break C:/Users/ndrs/AppData/Roaming/FreeCAD/Macro/test-examples/dam-break/dam-break_Out -svres -cpu
"C:/DualSPHysics/EXECS/PartVTK4_win64.exe" -dirin C:/Users/ndrs/AppData/Roaming/FreeCAD/Macro/test-examples/dam-break/dam-break_Out -savevtk C:/Users/ndrs/AppData/Roaming/FreeCAD/Macro/test-examples/dam-break/dam-break_Out/PartAll
echo "------- Execution complete. If results were not the exepected ones check for errors. Make sure your case has a correct DP specification. -------"
pause