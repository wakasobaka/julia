include("roblib.jl")

function move_by_markers(r::Robot, side::HorizonSide)
    while ismarker(r)
        move!(r,side)
    end
end

function make_cross!(r::Robot)
    for side in [Nord,West,Ost,Sud]
        putmarkers!(r, side)
        move_by_markers(r, inverse(side))
        #=
        while !isborder(r,side)
            move!(r,side)
            putmarker!(r)
        end
        other_side = reverse_side(side)
        while ismarker(r)
            move!(r,other_side)
        end
        =#
    end    
    putmarker!(r)
end

r=Robot(10, 10, animate=true)

move_robot_to_start!(r)
move_robot!(r, 3, 4)
make_cross!(r)

#readline()