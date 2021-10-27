using HorizonSideRobots

function move_robot(r::Robot, x, y)
    for x_pos in 1:x
        move!(r,Ost)
    end

    for y_pos in 1:y
        move!(r,Nord)
    end
end

function inverse(side::HorizonSide)
    #@enum HorizonSide Nord=0 West=1 Sud=2 Ost=3
    return HorizonSide(mod(Int(side)+2, 4))

    #=
    if side == Nord
        return Sud
    elseif side == Sud
        return Nord
    elseif side == West
        return Ost
    elseif side == Ost
        return West        
    end
    =#
end

function putmarkers!(r::Robot, side::HorizonSide)
    while !isborder(r,side)
        move!(r,side)
        putmarker!(r)
    end
end

