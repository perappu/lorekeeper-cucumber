const assert = require('assert');
const { Given, When, Then, After, AfterAll, Status } = require('@cucumber/cucumber');
const { Builder, By, Capabilities, Key } = require('selenium-webdriver');

require("chromedriver");

// driver setup
const capabilities = Capabilities.chrome();
capabilities.set('chromeOptions', { "w3c": false });
const driver = new Builder().withCapabilities(capabilities).build();

Given('I am not logged in', async function () {
  await driver.get(LOREKEEPER_URL);
  // look for a login bottom
  await driver.manage().setTimeouts({ implicit: 500 });
  await driver.findElement(By.xpath('//a[contains(., "Login")]'));
});

When('I open {string} page', async function (string) {

  await driver.manage().setTimeouts({ implicit: 500 });
  await driver.get(LOREKEEPER_URL + string);

});

Then('the page should load successfully and show the title {string}', async function (string) {
  await driver.manage().setTimeouts({ implicit: 500 });
  await driver.findElement(By.xpath('//h1[contains(., "' + string + '")]'));
});

When('I click a link that says {string}', async function (string) {
  await driver.manage().setTimeouts({ implicit: 500 });
  await driver.findElement(By.xpath('//a[contains(., "' + string + '")]'));
});

After(function (scenario) {
  if (scenario.result.status === Status.FAILED) {
      var world = this;
      return webDriver.takeScreenshot().then(function(screenShot, error) {
          if (!error) {
              world.attach(screenShot, "image/png");
          }
      });
  }
});
AfterAll(async function () {
  await driver.quit();
});

