# Assignment 4 : Testing Simple Hypotheses

$$\begin{align*}
\chi^{2}=\sum\limits_{i=1}^{n}\left(\frac{g_{i}-E(g)}{\sigma_{i}}\right)^{2} &&\text{(definition of chi-squared distribution)}
\end{align*}$$

1. $H_0$: Acelleration due to gravity is constant at all heights.
2. $H_a$: Acelleration due to gravity is not constant at all heights.

---
$$\begin{align*}
\chi^{2}=\sum\limits_{i=1}^{n}\left(\frac{g_{i}-9.8}{\sigma_{i}}\right)^{2} &&\text{(chi-squared value as predicted by $H_0$)}
\end{align*}$$

## $H_0$ (Dataset 1):
```
(pvalueArgs.getArgs     ) Found argument list:  Namespace(chsq=15.15, ndof=19)
(pvalueArgs.getArguments) Assigning arguments to program variables
(pvalueArgs.ShowArgs    ) Program has set
chsq:    15.15
ndof:    19
 
Observed chi-squared p-value of 71.30171773569013 % (q-value =  28.698282264309867 %)
```

## $H_0$ (Dataset 2):
```
(pvalueArgs.getArgs     ) Found argument list:  Namespace(chsq=2.781, ndof=29)
(pvalueArgs.getArguments) Assigning arguments to program variables
(pvalueArgs.ShowArgs    ) Program has set
chsq:    2.781
ndof:    29
 
Observed chi-squared p-value of 99.9999999902764 % (q-value =  9.723606808620389e-09 %)
```
$$\begin{align*}
\chi^{2}&=\sum\limits_{i=1}^{n}\left(\frac{g_{i}-G_{earth}( \frac{M_{earth}}{R_{earth}+h_i} )}{\sigma_{i}}\right)^{2} &&\text{(chi-squared value as predicted by $H_a$)}\\
& &&G_{earth}=6.67430\times10^{-11}\\
& &&M_{earth}=5.97219\times10^{24}\\
& &&R_{earth}=6.378\times10^6
\end{align*}$$

## $H_a$ (Dataset 2):
```
(pvalueArgs.getArgs     ) Found argument list:  Namespace(chsq=0.2843, ndof=29)
(pvalueArgs.getArguments) Assigning arguments to program variables
(pvalueArgs.ShowArgs    ) Program has set
chsq:    0.2843
ndof:    29
 
Observed chi-squared p-value of 100.0 % (q-value =  0.0 %)
```
![](https://github.com/phsx315-sp23/assignment4-Mamba-Grant/blob/main/test.png)