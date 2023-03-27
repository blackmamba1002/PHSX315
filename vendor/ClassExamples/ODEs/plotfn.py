# plotfn.py
from matplotlib import pyplot as plt

def PlotCustomize():
    SMALL_SIZE = 20
    MEDIUM_SIZE = 26
    BIGGER_SIZE = 32
    plt.rc('font', size=MEDIUM_SIZE)          # controls default text sizes
    plt.rc('axes', titlesize=MEDIUM_SIZE)     # fontsize of the axes title
    plt.rc('axes', labelsize=MEDIUM_SIZE)     # fontsize of the x and y labels
    plt.rc('xtick', labelsize=SMALL_SIZE)     # fontsize of the tick labels
    plt.rc('ytick', labelsize=SMALL_SIZE)     # fontsize of the tick labels
    plt.rc('legend', fontsize=SMALL_SIZE)     # legend fontsize
    plt.rc('figure', titlesize=BIGGER_SIZE)   # fontsize of the figure title

def PlotData(ifigure, x, y, title, xlabel, ylabel):
    plt.figure(ifigure)
    plt.plot(x, y)
    plt.title(title)
    plt.xlabel(xlabel)
    plt.ylabel(ylabel)

def PlotDataWithErrors(ifigure, x, y, dy, title, xlabel, ylabel):
    plt.figure(ifigure)
    plt.errorbar(x, y, dy, fmt="o",color='blue',solid_capstyle='projecting',capsize=0,markersize=4)
    plt.title(title)
    plt.xlabel(xlabel)
    plt.ylabel(ylabel)    
    
def PlotDataModel(ifigure, x, y, dy, ymodel, title, xlabel, ylabel, mycolor='red'):
    plt.figure(ifigure)
    plt.errorbar(x, y, dy, fmt="o",color='blue',solid_capstyle='projecting',capsize=0,markersize=4)
    plt.plot(x, ymodel, color=mycolor)    
    plt.title(title)
    plt.xlabel(xlabel)
    plt.ylabel(ylabel)    
