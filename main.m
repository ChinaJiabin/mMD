%--------------------------------------------------------------------------
%Molecular dynamics simulation
parameter;
generator;
%--------------------------------------------------------------------------
while time<time_end
    
    %----------------------------------
    show_information;
    out_files;
    time=time+timestep;
    
    %----------------------------------
    %Leapfrog method
    accel;%Update accelerated velocity
    vel=vel+0.5*timestep*vel_accel;

    pos=pos+timestep*vel;

    accel;%Update accelerated velocity
    vel=vel+0.5*timestep*vel_accel;
    %----------------------------------
    
end

show_final_information;
%--------------------------------------------------------------------------
