set logscale x
set format x "10^{%L}"
set ytics 0.1
set mytics 4
set xrange [0.1:1000000]
set yrange [-0.05:1.05]
set xlabel "1+z (= Exp(-N))"
set ylabel "Omega"
set key invert
set key outside
set key box
set size square
set parametric
set trange [-0.05:1.05]
c1 = 1.0
c2 = 3001.0
c3 = 0.68
plot c1, t lc "dark-gray" title "z = 0"
replot c2, t lc "dark-gray" title "z = 3000" 
replot t, c3 lc "dark-gray" title "Omega = 0.68"
replot "rk-step3.dat" using 1:2 w l title "Omega_r"
replot "rk-step3.dat" using 1:4 w l title "Omega_m"
replot "rk-step3.dat" using 1:3 w l title "Omega_{\lambda}"
