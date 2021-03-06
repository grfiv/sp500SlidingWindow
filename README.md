
<!-- README.md is generated from README.Rmd. Please edit that file -->
sp500SlidingWindow
==================

A sliding window analysis using the S&P500 answers the question of how well a set of investments and withdrawals would have performed in each one of the N-year-wide windows from 1950. So a set of 30-year windows looks at 1950-1979, 1951-1980, etc. up the the partial period ending with the current year.

This package takes two vectors: investments by year and withdrawals by year plus the width of the window and produces graphs and statistics showing the results in each window. The investment and withdrawal vectors are annual (and are assumed to be made on the first trading day of the year) but the analysis is done on the daily close of the S&P 500 Total Return Index with dividends reinvested.

The package includes a 'summary' vignette that shows how to use this analysis to answer the question of whether a retiree's nest egg will last under different scenarios:

    * invest in cash
    * invest in a 30-year Treasury
    * invest in the S&P 500 Total Return index

This is a useful and popular analysis but this package has applicability to all portfolio analyses that have investment and withdrawal streams over long periods.
