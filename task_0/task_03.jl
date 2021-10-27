using HorizonSideRobots

include("roblib.jl")

function mark_all!(r::Robot)
    move_robot_to_start!(r)

    side = Nord
    while !isborder(r,Ost)
        putmarkers!(r, side)
        side = inverse(side)
        move!(r,Ost)
    end
end

r=Robot(5, 5, animate=true)

move_robot_to_start!(r)
move_robot!(r, 2, 3)
mark_all!(r)
move_robot_to_start!(r)
move_robot!(r, 2, 3)
