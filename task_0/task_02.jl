using HorizonSideRobots

include("common.jl")

function move_to_border(r::Robot, side::HorizonSide)
    num_of_steps = 0
    while !isborder(r, side)
        move!(r,side)
        num_of_steps += 1
    end
    return num_of_steps
end

function mark_frame_perimetr!(r::Robot)
    x_steps = move_to_border(r,West)
    y_steps = move_to_border(r,Sud)
    println("x_steps=",x_steps, " y_steps=", y_steps)

    putmarkers!(r, Nord)
    putmarkers!(r, Ost)
    putmarkers!(r, Sud)
    putmarkers!(r, West)
end

r=Robot(10, 10, animate=true)

move_robot(r, 3, 4)
mark_frame_perimetr!(r)
move_robot(r, 3, 4)