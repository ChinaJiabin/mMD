from paraview.simple import *
from itertools import count
import string
########################################################################################
#Parameter

Radius=0.1;
file_number=1500;   
                                   
filepath='C:\\Users\\jiabin\\Documents\\MATLAB\\MD-atom_1\\universal gravitation\\vtk'
filename = ("%05i.vtk" % i for i in count(1))
image_path='C:\\Users\\jiabin\\Documents\\MATLAB\\MD-atom_1\\universal gravitation\\picture'
image_filename=("%05i.png" % i for i in count(1))

########################################################################################
#Create spheres

while file_number:
     file_number=file_number-1;
     sphere=LegacyVTKReader( FileNames=[filepath+'\\'+next(filename)] )

    # Show(wall)
     Show(sphere)
     sphere_dp = GetActiveSource()
     Glyph_sphere = Glyph( GlyphType="Sphere", GlyphTransform="Transform2" )
     Glyph_sphere.GlyphType.ThetaResolution = 50
     Glyph_sphere.GlyphType.PhiResolution = 50
     Glyph_sphere.GlyphType.Radius = Radius
     Show(Glyph_sphere)
     
     ###############################################################################
     #Color the ball by velocity!

     my_representation = GetDisplayProperties(Glyph_sphere)
     a1_vel_y__PVLookupTable = GetLookupTableForArray( "vel_y_", 1, RGBPoints=[-1.9600000381469727, 0.23, 0.299, 0.754, 0.0, 0.706, 0.016, 0.15] )
     my_representation.ColorArrayName = ('POINT_DATA', 'vel_y_')
     my_representation.LookupTable = a1_vel_y__PVLookupTable

    
     #########################################################################################
     #View adjust

     RenderView = GetRenderView();
     RenderView.OrientationAxesVisibility = 0;
     RenderView.CenterAxesVisibility = 0;

     RenderView.CameraFocalPoint = [0.12777962543203641, 0.4263201496512285, 0.0]
     RenderView.CameraPosition = [0.12777962543203641, 0.4263201496512285, 4.093659549002253]
     RenderView.CameraParallelScale = 4.6571715853039395

     ################################################################################
     Render()

     WriteImage(image_path+'\\'+next(image_filename))
     #Delete(sphere)
     Delete(Glyph_sphere)

#########################################################################################
