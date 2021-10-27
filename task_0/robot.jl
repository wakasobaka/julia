using HorizonSideRobots

r=Robot(10, 10, animate=true)

move!(r, Ost)

putmarker!(r)

move!(r, Ost)

move!(r, Ost)

putmarker!(r)

#show(r)

readline()

#while not isborder(r,side)
#    move!(r,side)
#    num_steps+=1
#end
