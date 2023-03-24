using CSV
using DataFrames 
using PlotlyJS

df1 = DataFrame(CSV.File("LowPrecisionPeriodData.csv"))
df2 = DataFrame(CSV.File("HighPrecisionPeriodData.csv"))

# using PyCall
# ENV["PYTHON"] = "/usr/bin/python"

# x_data = df1.theta
# y_data = df1.T
# yerr_data = df1.dT

# println(x_data)
# println(y_data)

# min = pyimport("iminuit")

# quadradic_model(x, a, b, c) = a*x^2 + b*x + c
# function chisq(a, b, c)
#     ym = quadradic_model(x_data, a, b, c)
#     z = (y_data - ym)/yerr_data
#     return sum(z^2)
# end

# m = min.Minuit(chisq, a=0, b=0, c=0)
# m.errordef = 1.0
# m.migrad()
# m.hesse()


# PLOTS
layout = Layout(title="Problem 2")

plot_data = [
    scatter(df1, x=:theta, y=:T,
    mode="markers", 
    name="Theta [rad] vs T [s] (Low Precision)",
    error_y=attr(type="data", array=:dT, visible=true)
    ),
    scatter(df2, x=:theta, y=:T,
    mode="markers",
    name="Theta [rad] vs T [s] (High Precision)",
    error_y=attr(type="data", array=:dT, visible=true)
    )]

plot(plot_data, layout)
savefig(plot(plot_data, layout), "plot.svg")