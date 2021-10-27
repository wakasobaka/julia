using HorizonSideRobots

include("roblib.jl")

function mark_frame_perimetr!(r::Robot)
    move_robot_to_start!(r)    
    putmarkers!(r, Nord)
    putmarkers!(r, Ost)
    putmarkers!(r, Sud)
    putmarkers!(r, West)
end

r=Robot(10, 10, animate=true)

move_robot_to_start!(r)
move_robot!(r, 3, 4)
mark_frame_perimetr!(r)
move_robot!(r, 3, 4)