#' Buy Bonds
#'
#' @author George Fisher
#'
#' @description Shows the portfolio performance of buying one or more bonds
#'
#' @details What happens to the portfolio if each investment is spent on buying
#' a bond that yields a rate of 'coupon' discounted by 'tax_rate'
#'
#' @examples
#' \dontrun{
#' investment_vector <- seq(1,30)*10
#' withdrawal_vector <- c(investment_vector[1:10]  * 0.15,
#'                    investment_vector[11:20] * 0.35,
#'                    investment_vector[21:30] * runif(10, min=0.01, max=0.90))
#' coupon   <- 0.0261 # 30-year rate in May 2016
#' tax_rate <- 0.14   # Mitt Romney's average rate
#' bond_df <- buy_bonds <- function(investment_vector,
#'                                  withdrawal_vector,
#'                                  coupon,
#'                                  tax_rate)
#' }
#'
#' @return data.frame with summary statistics for each window
#'
#' @param investment_vector a vector of annual investments
#' @param withdrawal_vector a vector of annual withdrawals
#' @param coupon the interest rate
#' @param tax_rate the investor's average tax rate charged on interest payments
#'
#' @export
buy_bonds <- function(investment_vector,
                      withdrawal_vector,
                      coupon,
                      tax_rate) {

    bond_df <- data.frame(inv = investment_vector,
                          wdr = withdrawal_vector,
                          bal = 0)

    bond_df$bal[1] <- bond_df$inv[1] - bond_df$wdr[1]

    for (i in 2:nrow(bond_df)) {
        coupon_pmt     <- (bond_df$bal[i-1] * coupon) * (1 - tax_rate)
        bond_df$bal[i] <- bond_df$bal[i-1] + coupon_pmt + bond_df$inv[i]

        withdrawal <- bond_df$wdr[i]
        if (withdrawal <= bond_df$bal[i]) {
            # we have enough money to make a full withdrawal
            bond_df$bal[i] <- bond_df$bal[i] - withdrawal
        } else {
            # the remaining balance is less than
            # the full withdrawal
            withdrawal     <- bond_df$bal[i-1]
            bond_df$bal[i] <- 0
        }
        bond_df$wdr[i] <- withdrawal
    }

    return(bond_df)

}
