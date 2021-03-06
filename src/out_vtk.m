%fid=fopen([file_path,'vtk/particle_', file_str_count,'.vtk'],'w');
fid=fopen(['vtk/data',file_str_count,'.vtk'],'w');
%--------------------------------------------------------------------------
%Header
fprintf(fid,'%s\n','# vtk DataFile Version 3.1 ');
fprintf(fid,'%s\n','Visualization for particles movement');
fprintf(fid,'%s\n','ASCII');
fprintf(fid,'%s\n','DATASET UNSTRUCTURED_GRID');

%--------------------------------------------------------------------------
%Mesh information
fprintf(fid,'\n%s\n',['POINTS ',num2str(N),' float']);
fprintf(fid,'%f    %f    %f\n',pos');

fprintf(fid,'\n%s\n',['CELLS ',num2str(N),' ',num2str(2*N)]);
fprintf(fid,'%d    %d \n',[ones(N,1),(0:N-1)']');

fprintf(fid,'\n%s\n',['CELL_TYPES ',num2str(N)]);
fprintf(fid,'%d ',ones(N,1));

%--------------------------------------------------------------------------
%Point information
fprintf(fid,'\n\n%s\n\n',['POINT_DATA ',num2str(N)]);
velocity_name=[
                'vel_x_';  'vel_y_'; 'vel_z_';
               ];
for i=1:3
fprintf(fid,'%s\n',['SCALARS ',velocity_name(i,:), ' float']);
fprintf(fid,'%s\n','LOOKUP_TABLE default');
fprintf(fid,'%e\n',vel(:,i)');
fprintf(fid,'\n');
end

%--------------------------------------------------------------------------
fclose(fid);
