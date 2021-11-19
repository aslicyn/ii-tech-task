Feature: Services

  Scenario:
    * configure driver = { type: 'chrome', headless: true, addOptions: ['--no-sandbox', '--disable-dev-shm-usage']}
    * configure retry = { count: 10, interval: 5000 }
    * driver homePage
    * callonce read ('locators.json')
    * match driver.url == homePage
    * waitFor(Cookie.AcceptBtn).click()
    * waitFor(Services.ServicesBtn).click()
    * waitFor(Services.TradingAccountBtn).click()
    * match driver.url == tradingAccountPage
    * waitFor(TradingAccount.OpenAccount)
    * assert exists(TradingAccount.OpenAccount)
    * match text(TradingAccount.OpenAccount) == "Open an account"
    * screenshot()



