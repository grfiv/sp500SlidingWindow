# sp500SlidingWindow 0.2.0

-------------------------------------------------------------------------------
--------

## Release 0.2.0  
    * Removed default vignette
    * fixed plot_ending_bal_distribution.R so it doesn't create a file in the working directory
    * added README
    * pushed to GitHub

## Initial Release 0.1.0   

A sliding window analysis using the S&P500 answers the question of how well a set of investments and withdrawals would have performed in each one of the N-year-wide windows from 1950. So a set of 30-year windows looks at 1950-1979, 1951-1980, etc. up the the partial period ending with the current year.   

This package takes two vectors: investments by year and withdrawals by year plus the width of the window and produces graphs and statistics showing the results in each window. The investment and withdrawal vectors are annual (and are assumed to be made on the first trading day of the year) but the analysis is done on the daily close of the S&P 500 Total Return Index with dividends reinvested.   

The package includes a 'summary' vignette that shows how to use this analysis to answer the question of whether a retiree's nest egg will last under different scenarios.
