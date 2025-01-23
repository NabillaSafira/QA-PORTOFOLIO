const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    baseUrl:"https://magento.softwaretestingboard.com/",
    setupNodeEvents(on, config) {
      // implement node event listeners here
    },
    defaultCommandTimeout : 4000,
    viewportHeight : 800,
    viewportWidth : 1100
  },
});
