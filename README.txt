mMD
===

A free software for  molecular-dynamics simulation written by matlab and output vtk files.

Software required：

1.Matlab
2.paraView（A open source software which can be downloaded: www.paraview.org ）

How to use mMD ?

 1.Make sure mMD source file is on the matlab search path.
   >>pathtool
   choose:Add Subfolders 
 
 2.Create your own case.
   >>cd case 
   >>mkdir 'Your_case_name'
   >>cd 'Your_case_name'
   
   create three files: force.m     ( The force funciton bewteen moleculars )   
                       generator.m ( Initialize position and velocity of molecular )
                       parameter.m ( The paramters needed for simulation )
   
 3.>>main.m

 4.After simulation,you will see a vtk file on the current path.
   Now you can open paraview for visualization and you can reference python sricpts(mMD/visualization/). 
   




