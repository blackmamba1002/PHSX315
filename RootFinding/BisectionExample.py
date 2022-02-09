# BisectionExample.py
#
# Demo root finding with simple function, namely sin(x).
#
import math
import rfArgs
import myPythonCheck

def f(x):                                     # The function, f(x), whose zero we seek
    f = math.sin(x)
    return f
        
# Start of main program

myPythonCheck.Check()                         # Enforce use of python3

a,b,tol = rfArgs.getArguments(None)           # Read command line arguments 
rfArgs.showArgs(a,b,tol)                      # for bracketing interval (a,b) and tolerance |x - x_root|.

# Check the function is bracketed by [a,b]
xmin = a
xmax = b
fmin = f(xmin)
fmax = f(xmax)
fab = fmin*fmax

if fab < 0.0:
   print('Function is bracketed. Yay !',fmin,fmax)
elif fab > 0.0:
   print('Function is not bracketed ... ',fmin,fmax)
else:
   print('One of the end-points likely is a root ...',fmin,fmax)   

# let's try bi-section
dx = xmax - xmin

niterations = 0
errorcode = 0

while abs(dx) > tol:
    fmin = f(xmin)
    fmax = f(xmax)
    xmid = (xmin+xmax)/2.0
    fmid = f(xmid)
    
    if (fmin > 0.0 and fmid < 0.0) or (fmin < 0.0 and fmid > 0.0):
# bracketed 
       xmax = xmid
       dx = xmax - xmin
    elif (fmax > 0.0 and fmid < 0.0) or (fmax < 0.0 and fmid > 0.0):
       xmin = xmid
       dx = xmax - xmin
    else:
       print('Should not get here ?? ',xmin,xmid,xmax,fmin,fmid,fmax)
       
    niterations += 1
    print('Iteration ',niterations,'Updated bracketing interval  ',xmin,xmax,' of length ',dx)
    if niterations >= 100:
       print('Too many iterations - need to run again with looser tolerance requirement - will exit')
       errorcode += 1
       break
        
if errorcode == 0:        
    xmid = (xmin+xmax)/2.0
    print()
    print('Final bracketing interval ',xmin,xmax,' of length ',dx,' with x:',xmid,'f(x):',f(xmid))
    print('Total number of iterations = ',niterations)
else:
    print()
    print('Error occurred: errorcode ',errorcode)    
    print('deviation = estimate - true-value =',xmid - math.pi)
