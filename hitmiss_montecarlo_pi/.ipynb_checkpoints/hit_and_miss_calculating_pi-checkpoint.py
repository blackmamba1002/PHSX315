import seaborn as sb
import matplotlib as plt
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import argparse
# import cprofile
 
def plot():
    sb.set(style='whitegrid', rc={"figure.figsize":(4, 4)})    
    sb.set_palette(['#EF476F', '#62C370'])

    fig = plt.figure()
    x1 = fig.add_subplot(111, projection='3d')

    x1.view_init(45, 45)

    for s in df.in_bounds.unique():
        x1.scatter(df.x[df.in_bounds==s],df.y[df.in_bounds==s],df.z[df.in_bounds==s],label=s)

    # plot/seaborn settings
    x1.set(xlim=(-1.02, 1.02))
    x1.set(ylim=(-1.02, 1.02))
    x1.legend([],[], frameon=False)

    plt.show()

parser = argparse.ArgumentParser()

parser.add_argument("-i", "--iterations", help="Iteration count.", type=int, default=100)
parser.add_argument("-s", "--seed", help="Random generation seed.", type=int, default=2)
parser.add_argument("-p", "--plot", help="Plot Results (True/False).", type=bool, default=False)
args = parser.parse_args()

np.random.seed(args.seed)

df = pd.DataFrame(columns =["x","y","in_bounds","radius","one_minus_radius"])
# Pandas screams at us for not casting the column to a bool type for some reason? This fixes that even though it causes no issues... I miss type safety in rust :(
df["in_bounds"]=df["in_bounds"].astype(bool)

# main loop which:
# 1. produces a point at uniformly random (x,y) coordinates
# 2. calculates the distance from (0,0) to that point, as well as one minus that distance (for style)
# 3. appends a new row to our dataframe, marking it as in or out of bounds
# points which are at a distance greater than 1 (the radius of our circle) are known to be outside the circle
index=0
for e in range(0,  args.iterations):
    x=np.random.uniform(-1,1)
    y=np.random.uniform(-1,1)
    z=np.random.uniform(-1,1)
    
    dist = np.sqrt(x**2 + y**2 + z**2)
    
    row_to_append = pd.DataFrame([{"x":x, "y":y, "z":z, "in_bounds": False if dist > 1 else True, "one_minus_radius": 1-dist, "radius": dist}])
    df = pd.concat([df,row_to_append])
    df = pd.concat([df,row_to_append])
    
    index+=1

mambajamba = df["in_bounds"].value_counts()[False]/ args.iterations
print("Approximation result: ", mambajamba*4)

if args.plot == True:
    plot()