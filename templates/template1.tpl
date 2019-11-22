# output as png image
	set terminal png

	# save file to "benchmark.png"
	set output \"${IMAGE_FILE}.png\"

	# graph a title
	set title \"${HOSTNAME}\"

	# nicer aspect ratio for image size
	set size 1,0.7

	# y-axis grid
	set grid y

	# x-axis label
	set xlabel \"Requests\"

	# y-axis label
	set ylabel \"Response time \(ms\)\"

  #set Loadpath {\"${RESULTS_PATH}\"}
	# plot data from "server1.txt" and "server2.txt" using column 9 with smooth sbezier lines
	#plot "server1.txt" using 9 smooth sbezier with lines title "server1:", \
	#     "server2.txt" using 9 smooth sbezier with lines title "server2:"
  plot ${PLOT_LINES}
