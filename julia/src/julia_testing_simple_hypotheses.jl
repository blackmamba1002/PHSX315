using CSV
using DataFrames 
using Distributions
using PlotlyBase
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
        global χ²_3 += ((df_2.g[i]-g(e))^2 / df_2.dg[i])
    end

println(χ²_1)
println(χ²_2)
println(χ²_3)

# PLOTTING THINGS
d1 =  [
    scatter(x=[0,1900], y=[9.8,9.8], mode="lines", name="Prediction (Constant)")
    scatter(df_1, x=:Height, y=:g, mode="markers", name="Data (Set 1)", error_y=attr(
        type="percent",
        value=0.05
    ))]

d2 = [
    scatter(x=[0,14500], y=[9.8,9.8], mode="lines", name="Prediction (Constant)")
    scatter(df_2, x=:Height, y=:g, mode="markers", name="Data (Set 2)", error_y=attr(
        type="percent",
        value=0.01
    ))]

d3 = [
    scatter(x=[0,14500], y=[g(0),g(14500)], mode="lines", name="Prediction (Newton's)")
    scatter(df_2, x=:Height, y=:g, mode="markers", name="Data (Set 2)", error_y=attr(
        type="percent",
        value=0.01
    ))]

p1 = plot(d1, Layout(title="subplot 1"))
p2 = plot(d2, Layout(title="subplot 2"))
p3 = plot(d3, Layout(title="subplot 3"))
p4 = plot()

p = [p1 p2; p3 p4]
relayout!(p, height=500, width=700, title_text="Multiple Subplots with Titles")
p

savefig(p, "Plots.png")