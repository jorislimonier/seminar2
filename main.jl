include("Sequences.jl")
include("PlotlyVisualization.jl")

seq_length = 500 ; seq_lengths = 0:500:2000 ; runs = 2 ; nb_chars = 2
mult_lcs_lengths = Sequences.multiple_lcs_lengths(seq_length, runs, nb_chars)
lcs_av = Sequences.compare_lcs_averages(seq_lengths, runs, nb_chars)

# # plot moving averages
# moving_averages = Sequences.moving_averages(mult_lcs_lengths)
# PlotlyVisualization.average_lcs_length(moving_averages, seq_length)

# compare lcs averages
plot_averages = PlotlyVisualization.plot_average_lengths(lcs_av)