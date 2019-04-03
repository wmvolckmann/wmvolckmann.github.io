clear all			//erases data already in Stata
input x				//inputs the following data as variable x
4
3
6
5
4
3
5
4
6
2
1
end

sum x, d			//detailed summary statistics of x
tab x				//frequency data of x
graph pie, over(x) plabel(_all name) title("X") name(xpie)
hist x, width(.5) name(xhistogram)

//giving graphs distinct names allow them all to appear on screen simultaneously
