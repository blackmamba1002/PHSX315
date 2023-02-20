using CSV
using DataFrames 
using Distributions
using PlotlyJS



const G_earth = 6.67430e-11
const mass_earth = 5.97219e24
const radius_earth = 6378e3
g(h) = G_earth*(mass_earth/((radius_earth+h)^2))

df_1 = DataFrame(CSV.File("experiment1.csv"))
df_2 = DataFrame(CSV.File("experiment2.csv"))


χ²_1 = sum((df_1.g.-9.8).^2 ./ df_1.dg.^2)
χ²_2 = sum((df_2.g.-9.8 ).^2 ./ df_2.dg)
χ²_3 = 0.0
    for (i,e) in enumerate(df_2.Height)
        global χ²_3 += ((df_2.g[i]-f(e))^2 / df_2.dg[i])
    end

println(χ²_1)
println(χ²_2)
println(χ²_3)

# plot([trace1, trace2])
# plot([trace3,trace4])
data =  [
    # scatter(x=1:3, y=2:4),
    # scatter(x=20:10:40, y=fill(5, 3), xaxis="x2", yaxis="y"),
    # scatter(x=2:4, y=600:100:800, xaxis="x", yaxis="y3"),
    # scatter(x=4000:1000:6000, y=7000:1000:9000, xaxis="x4", yaxis="y4")
    scatter(x=[0,1900], y=[9.8,9.8], mode="lines", name="Prediction (Constant)", xaxis="x2", yaxis="y3")
    scatter(df_1, x=:Height, y=:g, mode="markers", name="Data (Set 1)", xaxis="x2", yaxis="y3", error_y=attr(
        type="percent",
        value=0.05
    ))
    
    scatter(x=[0,14500], y=[9.8,9.8], mode="lines", name="Prediction (Constant)", xaxis="x", yaxis="y3")
    scatter(df_2, x=:Height, y=:g, mode="markers", name="Data (Set 2)", xaxis="x", yaxis="y3", error_y=attr(
        type="percent",
        value=0.01
    ))

    scatter(x=[0,14500], y=[f(0),f(14500)], mode="lines", name="Prediction (Newton's)", xaxis="x", yaxis="y")
    scatter(df_2, x=:Height, y=:g, mode="markers", name="Data (Set 2)", xaxis="x", yaxis="y", error_y=attr(
        type="percent",
        value=0.01
    ))
    ]
layout = Layout(
    xaxis_domain=[0, 0.45],
    yaxis_domain=[0, 0.45],
    xaxis4=attr(domain=[0.55, 1.0], anchor="y4"),
    xaxis2_domain=[0.55, 1],
    yaxis3_domain=[0.55, 1],
    yaxis4=attr(domain=[0.55, 1], anchor="x4")
)
plot(data, layout)