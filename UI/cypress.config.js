/// <reference types="cypress" />

const { defineConfig } = require("cypress");
const createBundler = require("@bahmutov/cypress-esbuild-preprocessor");
const preprocessor = require("@badeball/cypress-cucumber-preprocessor");
const createEsbuildPlugin = require("@badeball/cypress-cucumber-preprocessor/esbuild");

/**
 * @type {Cypress.PluginConfig}
 */
const fs = require("fs-extra");
const path = require("path");

function getConfigurationByFile(file) {
  const pathToConfigFile = path.resolve(".", "Config", `env.json`);
  return fs.readJson(pathToConfigFile);
}

async function setupNodeEvents(on, config) {
  const file = config.env.fileConfig || "env";
  const envConfig = await getConfigurationByFile(file);

  config.baseUrl = envConfig.baseUrl;
  config.user = envConfig.user;
  config.password = envConfig.password;

  require("cypress-localstorage-commands/plugin")(on, config);
  await preprocessor.addCucumberPreprocessorPlugin(on, config);

  on(
    "file:preprocessor",
    createBundler({
      plugins: [createEsbuildPlugin.default(config)],
    })
  );
  return config;
}

module.exports = defineConfig({
  e2e: {
    setupNodeEvents,
    specPattern: [
      "cypress/e2e/**/*.feature"
    ],
    reporter: "cypress-multi-reporters",
    reporterOptions: {
      configFile: "reporter-config.json"
    },
    video: false,
    chromeWebSecurity: false,
    defaultCommandTimeout: 12000,
    pageLoadTimeout: 60000,
    viewportHeight: 900,
    viewportWidth: 1200,
    testIsolation: false,
    reporter: 'mochawesome',
    reporterOptions: {
      reportDir: 'cypress/results',
      overwrite: false,
      html: false,
      json: true,
    },
  },
});
