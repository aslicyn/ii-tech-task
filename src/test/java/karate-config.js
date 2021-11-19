function fn() {

    var env = karate.env;
    karate.log('karate.env system property was:', env);
    if (!env) {
        env = 'dev';
    }
    var config = {
        homePage:'https://www.ii.co.uk/',
        tradingAccountPage: 'https://www.ii.co.uk/ii-accounts/trading-account',
        transferMyPensionPage: 'https://www.ii.co.uk/ii-accounts/sipp/transfer-my-pension',
        topfundsPage: 'https://www.ii.co.uk/funds/top-investment-funds'
    }
    // if (env == 'dev') {
    //
    // } else if (env == 'e2e') {
    //
    // }
     return config;
}