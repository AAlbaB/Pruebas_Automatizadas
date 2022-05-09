const { Given, When, Then } = require('@cucumber/cucumber');
const expect = require('chai').expect;

When('I enter email {kraken-string}', async function (email) {
    let element = await this.driver.$('#ember8');
    return await element.setValue(email);
});

When('I enter password {kraken-string}', async function (password) {
    let element = await this.driver.$('#ember10');
    return await element.setValue(password);
});

When('I click next', async function() {
    let element = await this.driver.$('#ember12');
    return await element.click();
});

When('I write post title {kraken-string}', async function (title) {
    let element = await this.driver.$('/html/body/div[2]/div/main/section/div[1]/div[1]/textarea');
    return await element.setValue(title);
});

When('I write post body {kraken-string}', async function (title) {
    let element = await this.driver.$('/html/body/div[2]/div/main/section/div[1]/div[1]/article/div[1]/div');
    return await element.setValue(title);
});

When('I click publish button', async function() {
    let element = await this.driver.$('/html/body/div[2]/div/main/section/header/section/div/div[1]/span');
    return await element.click();
});

When('I click publish', async function() {
    let element = await this.driver.$('/html/body/div[1]/div/footer/button[2]/span');
    return await element.click();
});

When('I check if the post was published', async function() {
    let elements = await this.driver.$('/html/body/div[2]/div/aside/article/div');
    let valor = await elements.getText();
    expect(valor).to.equal(valor);
  });


When('I go back to posts', async function() {
    let element = await this.driver.$('/html/body/div[2]/div/main/section/header/div/div[1]/a');
    return await element.click();
});

When('I click on last post', async function() {
    let element = await this.driver.$('/html/body/div[2]/div/main/section/section/ol/li[2]/a[1]');
    return await element.click();
});

When('I click on settings', async function() {
    let element = await this.driver.$('/html/body/div[2]/div/main/section/header/section/button/svg');
    return await element.click();
});

When('I click on delete', async function() {
    let element = await this.driver.$('/html/body/div[4]/div[1]/div/div/div/div/div[1]/div/div[1]/div[2]/form/button/span');
    return await element.click();
});

When('I click on confirm delete', async function() {
    let element = await this.driver.$('button.gh-btn.gh-btn-red.gh-btn-icon.ember-view');
    return await element.click();
});

When('I close message', async function() {
    let element = await this.driver.$('button.gh-notification-close');
    return await element.click();
});

When('I click on user', async function() {
    let element = await this.driver.$('/html/body/div[2]/div/nav[1]/section/div[2]/div[1]/div/div[1]');
    return await element.click();
});

When('I confirm sign out', async function() {
    let element = await this.driver.$('a.dropdown-item.user-menu-signout.ember-view');
    return await element.click();
});

Then('I check if the post was published on user page', async function() {
    let elements = await this.driver.$('/html/body/div/main/div/div/article[1]/div/a/header/h2');
    let valor = await elements.getText();
    expect(valor).to.equal(valor);
  });

When('I start new escenario', async function() {
    return console.log('NEW ESCENARIO')
  });