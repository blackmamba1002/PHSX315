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

```html
<html>
<head><meta charset="utf-8" /></head>
<body>
<div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-AMS-MML_SVG"></script>
    <script type="text/javascript">
window.PlotlyConfig = {MathJaxConfig: 'local'};
</script>
<script src="https://cdn.plot.ly/plotly-2.3.0.min.js"></script>

    <div
        id=4a27f708-858d-4b51-aefa-2450d49dad97
        class="plotly-graph-div"
        style="height:100%; width:100%;">
    </div>
    <script type="text/javascript">
        
        window.PLOTLYENV = window.PLOTLYENV || {}
        
        if (document.getElementById('4a27f708-858d-4b51-aefa-2450d49dad97')) {
    Plotly.newPlot(
        '4a27f708-858d-4b51-aefa-2450d49dad97',
        [{"mode":"lines","xaxis":"x2","y":[9.8,9.8],"type":"scatter","name":"Prediction (Constant)","yaxis":"y3","x":[0,1900]},{"mode":"markers","xaxis":"x2","y":[9.82,9.829,9.851,9.806,9.756,9.796,9.763,9.848,9.806,9.842,9.744,9.779,9.822,9.709,9.768,9.736,9.771,9.876,9.79,9.751],"type":"scatter","name":"Data (Set 1)","error_y":{"value":0.05,"type":"percent"},"yaxis":"y3","x":[0.0,100.0,200.0,300.0,400.0,500.0,600.0,700.0,800.0,900.0,1000.0,1100.0,1200.0,1300.0,1400.0,1500.0,1600.0,1700.0,1800.0,1900.0]},{"mode":"lines","xaxis":"x","y":[9.8,9.8],"type":"scatter","name":"Prediction (Constant)","yaxis":"y3","x":[0,14500]},{"mode":"markers","xaxis":"x","y":[9.7907,9.7974,9.7931,9.8073,9.7873,9.7949,9.7974,9.7911,9.8071,9.7747,9.7812,9.7759,9.7643,9.7745,9.7794,9.7739,9.7937,9.7727,9.757,9.7583,9.7746,9.7698,9.7619,9.7567,9.7527,9.7504,9.7649,9.754,9.7349,9.7661],"type":"scatter","name":"Data (Set 2)","error_y":{"value":0.01,"type":"percent"},"yaxis":"y3","x":[0.0,500.0,1000.0,1500.0,2000.0,2500.0,3000.0,3500.0,4000.0,4500.0,5000.0,5500.0,6000.0,6500.0,7000.0,7500.0,8000.0,8500.0,9000.0,9500.0,10000.0,10500.0,11000.0,11500.0,12000.0,12500.0,13000.0,13500.0,14000.0,14500.0]},{"mode":"lines","xaxis":"x","y":[9.798741705155923,9.754339479453902],"type":"scatter","name":"Prediction (Newton's)","yaxis":"y","x":[0,14500]},{"mode":"markers","xaxis":"x","y":[9.7907,9.7974,9.7931,9.8073,9.7873,9.7949,9.7974,9.7911,9.8071,9.7747,9.7812,9.7759,9.7643,9.7745,9.7794,9.7739,9.7937,9.7727,9.757,9.7583,9.7746,9.7698,9.7619,9.7567,9.7527,9.7504,9.7649,9.754,9.7349,9.7661],"type":"scatter","name":"Data (Set 2)","error_y":{"value":0.01,"type":"percent"},"yaxis":"y","x":[0.0,500.0,1000.0,1500.0,2000.0,2500.0,3000.0,3500.0,4000.0,4500.0,5000.0,5500.0,6000.0,6500.0,7000.0,7500.0,8000.0,8500.0,9000.0,9500.0,10000.0,10500.0,11000.0,11500.0,12000.0,12500.0,13000.0,13500.0,14000.0,14500.0]}],
        {"xaxis":{"domain":[0.0,0.45]},"xaxis4":{"domain":[0.55,1.0],"anchor":"y4"},"xaxis2":{"domain":[0.55,1.0]},"template":{"layout":{"coloraxis":{"colorbar":{"ticks":"","outlinewidth":0}},"xaxis":{"gridcolor":"white","zerolinewidth":2,"title":{"standoff":15},"ticks":"","zerolinecolor":"white","automargin":true,"linecolor":"white"},"hovermode":"closest","paper_bgcolor":"white","geo":{"showlakes":true,"showland":true,"landcolor":"#E5ECF6","bgcolor":"white","subunitcolor":"white","lakecolor":"white"},"colorscale":{"sequential":[[0.0,"#0d0887"],[0.1111111111111111,"#46039f"],[0.2222222222222222,"#7201a8"],[0.3333333333333333,"#9c179e"],[0.4444444444444444,"#bd3786"],[0.5555555555555556,"#d8576b"],[0.6666666666666666,"#ed7953"],[0.7777777777777778,"#fb9f3a"],[0.8888888888888888,"#fdca26"],[1.0,"#f0f921"]],"diverging":[[0,"#8e0152"],[0.1,"#c51b7d"],[0.2,"#de77ae"],[0.3,"#f1b6da"],[0.4,"#fde0ef"],[0.5,"#f7f7f7"],[0.6,"#e6f5d0"],[0.7,"#b8e186"],[0.8,"#7fbc41"],[0.9,"#4d9221"],[1,"#276419"]],"sequentialminus":[[0.0,"#0d0887"],[0.1111111111111111,"#46039f"],[0.2222222222222222,"#7201a8"],[0.3333333333333333,"#9c179e"],[0.4444444444444444,"#bd3786"],[0.5555555555555556,"#d8576b"],[0.6666666666666666,"#ed7953"],[0.7777777777777778,"#fb9f3a"],[0.8888888888888888,"#fdca26"],[1.0,"#f0f921"]]},"yaxis":{"gridcolor":"white","zerolinewidth":2,"title":{"standoff":15},"ticks":"","zerolinecolor":"white","automargin":true,"linecolor":"white"},"shapedefaults":{"line":{"color":"#2a3f5f"}},"hoverlabel":{"align":"left"},"mapbox":{"style":"light"},"polar":{"angularaxis":{"gridcolor":"white","ticks":"","linecolor":"white"},"bgcolor":"#E5ECF6","radialaxis":{"gridcolor":"white","ticks":"","linecolor":"white"}},"autotypenumbers":"strict","font":{"color":"#2a3f5f"},"ternary":{"baxis":{"gridcolor":"white","ticks":"","linecolor":"white"},"bgcolor":"#E5ECF6","caxis":{"gridcolor":"white","ticks":"","linecolor":"white"},"aaxis":{"gridcolor":"white","ticks":"","linecolor":"white"}},"annotationdefaults":{"arrowhead":0,"arrowwidth":1,"arrowcolor":"#2a3f5f"},"plot_bgcolor":"#E5ECF6","title":{"x":0.05},"scene":{"xaxis":{"gridcolor":"white","gridwidth":2,"backgroundcolor":"#E5ECF6","ticks":"","showbackground":true,"zerolinecolor":"white","linecolor":"white"},"zaxis":{"gridcolor":"white","gridwidth":2,"backgroundcolor":"#E5ECF6","ticks":"","showbackground":true,"zerolinecolor":"white","linecolor":"white"},"yaxis":{"gridcolor":"white","gridwidth":2,"backgroundcolor":"#E5ECF6","ticks":"","showbackground":true,"zerolinecolor":"white","linecolor":"white"}},"colorway":["#636efa","#EF553B","#00cc96","#ab63fa","#FFA15A","#19d3f3","#FF6692","#B6E880","#FF97FF","#FECB52"]},"data":{"barpolar":[{"type":"barpolar","marker":{"line":{"color":"#E5ECF6","width":0.5}}}],"carpet":[{"aaxis":{"gridcolor":"white","endlinecolor":"#2a3f5f","minorgridcolor":"white","startlinecolor":"#2a3f5f","linecolor":"white"},"type":"carpet","baxis":{"gridcolor":"white","endlinecolor":"#2a3f5f","minorgridcolor":"white","startlinecolor":"#2a3f5f","linecolor":"white"}}],"scatterpolar":[{"type":"scatterpolar","marker":{"colorbar":{"ticks":"","outlinewidth":0}}}],"parcoords":[{"line":{"colorbar":{"ticks":"","outlinewidth":0}},"type":"parcoords"}],"scatter":[{"type":"scatter","marker":{"colorbar":{"ticks":"","outlinewidth":0}}}],"histogram2dcontour":[{"colorbar":{"ticks":"","outlinewidth":0},"type":"histogram2dcontour","colorscale":[[0.0,"#0d0887"],[0.1111111111111111,"#46039f"],[0.2222222222222222,"#7201a8"],[0.3333333333333333,"#9c179e"],[0.4444444444444444,"#bd3786"],[0.5555555555555556,"#d8576b"],[0.6666666666666666,"#ed7953"],[0.7777777777777778,"#fb9f3a"],[0.8888888888888888,"#fdca26"],[1.0,"#f0f921"]]}],"contour":[{"colorbar":{"ticks":"","outlinewidth":0},"type":"contour","colorscale":[[0.0,"#0d0887"],[0.1111111111111111,"#46039f"],[0.2222222222222222,"#7201a8"],[0.3333333333333333,"#9c179e"],[0.4444444444444444,"#bd3786"],[0.5555555555555556,"#d8576b"],[0.6666666666666666,"#ed7953"],[0.7777777777777778,"#fb9f3a"],[0.8888888888888888,"#fdca26"],[1.0,"#f0f921"]]}],"scattercarpet":[{"type":"scattercarpet","marker":{"colorbar":{"ticks":"","outlinewidth":0}}}],"mesh3d":[{"colorbar":{"ticks":"","outlinewidth":0},"type":"mesh3d"}],"surface":[{"colorbar":{"ticks":"","outlinewidth":0},"type":"surface","colorscale":[[0.0,"#0d0887"],[0.1111111111111111,"#46039f"],[0.2222222222222222,"#7201a8"],[0.3333333333333333,"#9c179e"],[0.4444444444444444,"#bd3786"],[0.5555555555555556,"#d8576b"],[0.6666666666666666,"#ed7953"],[0.7777777777777778,"#fb9f3a"],[0.8888888888888888,"#fdca26"],[1.0,"#f0f921"]]}],"scattermapbox":[{"type":"scattermapbox","marker":{"colorbar":{"ticks":"","outlinewidth":0}}}],"scattergeo":[{"type":"scattergeo","marker":{"colorbar":{"ticks":"","outlinewidth":0}}}],"histogram":[{"type":"histogram","marker":{"colorbar":{"ticks":"","outlinewidth":0}}}],"pie":[{"type":"pie","automargin":true}],"choropleth":[{"colorbar":{"ticks":"","outlinewidth":0},"type":"choropleth"}],"heatmapgl":[{"colorbar":{"ticks":"","outlinewidth":0},"type":"heatmapgl","colorscale":[[0.0,"#0d0887"],[0.1111111111111111,"#46039f"],[0.2222222222222222,"#7201a8"],[0.3333333333333333,"#9c179e"],[0.4444444444444444,"#bd3786"],[0.5555555555555556,"#d8576b"],[0.6666666666666666,"#ed7953"],[0.7777777777777778,"#fb9f3a"],[0.8888888888888888,"#fdca26"],[1.0,"#f0f921"]]}],"bar":[{"type":"bar","error_y":{"color":"#2a3f5f"},"error_x":{"color":"#2a3f5f"},"marker":{"line":{"color":"#E5ECF6","width":0.5}}}],"heatmap":[{"colorbar":{"ticks":"","outlinewidth":0},"type":"heatmap","colorscale":[[0.0,"#0d0887"],[0.1111111111111111,"#46039f"],[0.2222222222222222,"#7201a8"],[0.3333333333333333,"#9c179e"],[0.4444444444444444,"#bd3786"],[0.5555555555555556,"#d8576b"],[0.6666666666666666,"#ed7953"],[0.7777777777777778,"#fb9f3a"],[0.8888888888888888,"#fdca26"],[1.0,"#f0f921"]]}],"contourcarpet":[{"colorbar":{"ticks":"","outlinewidth":0},"type":"contourcarpet"}],"table":[{"type":"table","header":{"line":{"color":"white"},"fill":{"color":"#C8D4E3"}},"cells":{"line":{"color":"white"},"fill":{"color":"#EBF0F8"}}}],"scatter3d":[{"line":{"colorbar":{"ticks":"","outlinewidth":0}},"type":"scatter3d","marker":{"colorbar":{"ticks":"","outlinewidth":0}}}],"scattergl":[{"type":"scattergl","marker":{"colorbar":{"ticks":"","outlinewidth":0}}}],"histogram2d":[{"colorbar":{"ticks":"","outlinewidth":0},"type":"histogram2d","colorscale":[[0.0,"#0d0887"],[0.1111111111111111,"#46039f"],[0.2222222222222222,"#7201a8"],[0.3333333333333333,"#9c179e"],[0.4444444444444444,"#bd3786"],[0.5555555555555556,"#d8576b"],[0.6666666666666666,"#ed7953"],[0.7777777777777778,"#fb9f3a"],[0.8888888888888888,"#fdca26"],[1.0,"#f0f921"]]}],"scatterternary":[{"type":"scatterternary","marker":{"colorbar":{"ticks":"","outlinewidth":0}}}],"scatterpolargl":[{"type":"scatterpolargl","marker":{"colorbar":{"ticks":"","outlinewidth":0}}}]}},"yaxis3":{"domain":[0.55,1.0]},"margin":{"l":50,"b":50,"r":50,"t":60},"yaxis":{"domain":[0.0,0.45]},"yaxis4":{"domain":[0.55,1.0],"anchor":"x4"}},
        {"editable":false,"responsive":true,"staticPlot":false,"scrollZoom":true},
    )
}

        
    </script>
</div>

</body>
</html>
```
