using CSV
using DataFrames 
using PlotlyJS
using IMinuit

df1 = DataFrame(CSV.File("LowPrecisionPeriodData.csv"))
df2 = DataFrame(CSV.File("HighPrecisionPeriodData.csv"))
data1 = Data(df1.theta, df1.T, df1.dT)
data2 = Data(df2.theta, df2.T, df2.dT)

quad_dist(x, a, b, c) = a*x^2+b*x+c
quad_dist(x, p) = quad_dist(x, p...)

expo_dist(x, a, b) = a^x+b
expo_dist(x, p) = expo_dist(x, p...)

legendere_quad_dist(x, a, b, c) = 1/2((3*a*x^2)-(2*b))+c
legendere_quad_dist(x, p) = legendere_quad_dist(x, p...)

# IMinuit wrapper has a macro for model_fit which automatically does χ² fitting
m1 = @model_fit quad_dist data1 [1,2,0]
migrad(m1)
hesse(m1)
println(m1.values)

m2 = @model_fit quad_dist data2 [1,2,0]
migrad(m2)
hesse(m2)
println(m2.values)

m1_fitted(x) = quad_dist(x, m1.values[1], m1.values[2], m1.values[3])
m2_fitted(x) = quad_dist(x, m2.values[1], m2.values[2], m2.values[3])

# PLOTS
d1 = [
    scatter(df1, x=:theta, y=:T,
    mode="markers", 
    name="Theta [rad] vs T [s] (Low Precision)",
    error_y=attr(type="data", array=:dT, visible=true)
    ),
    scatter(x=0.05:0.01:1.1, y=m1_fitted.(0.05:0.01:1.1),
    name="Fit (Low Precision)"
    )]
d2 = [
    scatter(df2, x=:theta, y=:T,
    mode="markers",
    name="Theta [rad] vs T [s] (High Precision)",
    error_y=attr(type="data", array=:dT, visible=true)
    ),
    scatter(x=0.05:0.01:1.1, y=m2_fitted.(0.05:0.01:1.1),
    name="Fit (High Precision)"
    )]

p = [plot(d1, Layout(title="Low Precision (P. 2)", xaxis_title="Theta [rad]", yaxis_title="Period [s]")) plot(d2, Layout(title="High Precision (P. 2)", xaxis_title="Theta [rad]"))]
display(p)
# savefig(p, "plot.png")