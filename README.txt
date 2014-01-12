mMD
===

A free software for  molecular-dynamics simulation written by matlab!

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

   You can reference the existen case files: universal gravitation and atom 
   
 3.>>main.m

 4.After simulation,you will see a vtk file on the current path.
   Now you can open paraview for visualization and the python sricpts(mMD/visualization)
   may help you.
   Tips:
   To run the python sricpts in the paraview:Tools——>Python shell——>Run Sricpt
   Do some changes to the python scripts before runing ! 
   
===
Author mail：489509928@qq.com
   




