Feature: Pensions

  Scenario:
    * configure driver = { type: 'chrome', headless: true, addOptions: ['--no-sandbox', '--disable-dev-shm-usage']}
    * configure retry = { count: 10, interval: 5000 }
    * driver homePage
    * callonce read ('locators.json')
    * waitFor(Cookie.AcceptBtn).click()
    * waitFor(Pensions.PensionsBtn).click()
    * waitFor(Pensions.TransferMyPension.TransferMyPensionBtn).click()
    * match driver.url == transferMyPensionPage
    * waitFor(Pensions.TransferMyPension.HowToTransfer)
    * assert exists(Pensions.TransferMyPension.HowToTransfer)
    * match text(Pensions.TransferMyPension.HowToTransfer) == "How to transfer"
    * screenshot()