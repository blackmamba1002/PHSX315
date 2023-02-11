using CSV
using DataFrames 

@time df = DataFrame(CSV.File("../experiment1.csv"))
df[:,1:3]   