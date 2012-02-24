clear
set more off

set obs 200
gen x = uniform()
gen y = invnorm(uniform())

gen e = 2 * invnorm(uniform())

reg y x e
xi: reg y x e i.x, robust
