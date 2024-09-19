using JuMP
using Gurobi

# model
model = Model(Gurobi.Optimizer)

# variables
@variable(model, a1>=0)
@variable(model, a2>=0)
@variable(model, a3>=0)
@variable(model, a4>=0)
@variable(model, a5>=0)
@variable(model, a6>=0)
@variable(model, a7>=0)
@variable(model, a8>=0)
@variable(model, a9>=0)
@variable(model, a10>=0)
@variable(model, a11>=0)
@variable(model, a12>=0)

# objective function
@objective(model, Min, 17*a1+24*a2+15*a3+16*a4+20*a5+28*a6+23*a7+18*a8+12*a9+17*a10)

# contraints
@constraint(model, 4.9*a1+2.5*a2+3.7*a3+4.2*a4+3.1*a5+4.6*a6+3.3*a7+4.7*a8+2.6*a9+4.5*a10-a11==4)
@constraint(model, 3.8*a1+4.0*a2+3.6*a3+4.1*a4+3.9*a5+4.1*a6+4.3*a7+3.9*a8+3.1*a9+3.1*a10-a12==4)
@constraint(model, a1+a2+a3+a4+a5+a6+a7+a8+a9+a10==1)

# optimize
optimize!(model)
println("optimal value of a1: ", value(a1))
println("optimal value of a2: ", value(a2))
println("optimal value of a3: ", value(a3))
println("optimal value of a4: ", value(a4))
println("optimal value of a5: ", value(a5))
println("optimal value of a6: ", value(a6))
println("optimal value of a7: ", value(a7))
println("optimal value of a8: ", value(a8))
println("optimal value of a9: ", value(a9))
println("optimal value of a10: ", value(a10))
println("optimal value of a9: ", value(a11))
println("optimal value of a10: ", value(a12))
println("objective value: ", objective_value(model))