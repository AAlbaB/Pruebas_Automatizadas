const { Before, Given, When, Then } = require('@cucumber/cucumber');
const expect = require('chai').expect;
const properties = require('../../../properties.json');
const fs = require("fs");
const assert = require("assert");
const LoginPage = require("../pageObjects/login.page");
const PostEditorPage = require("../pageObjects/post_editor.page");
var mkdirp = require('mkdirp');
const HomePage = require('../pageObjects/home.page');
const UserPage = require('../pageObjects/user.page');

var incremento = 0;
var featureIncremento = "";

Before({tags:"@desktop"}, () => {
    browser.setWindowSize(1366, 768);
    }); 

Given('I login with {kraken-string} and {kraken-string}', async function (email,password) {
    const loginPage = new LoginPage(this.driver);
    const emailField = loginPage.eleEmailAddressTextField;
    const passwordField = loginPage.elePasswordTextField;
    const button = loginPage.eleLoginBtn;
    await emailField.setValue(email);
    await passwordField.setValue(password);
    await button.click();

});

When('I write a post {kraken-string} and {kraken-string}', async function (title,body) {
    const postEditorPage = new PostEditorPage(this.driver);
    const titleField = postEditorPage.elePostTitleField;
    const bodyField = postEditorPage.elePostBody;
    const button = postEditorPage.elePublishBtn;
    const confirmButton = postEditorPage.eleConfirmPublishBtn;
    await titleField.setValue(title);
    await bodyField.setValue(body);
    await button.click();
    await confirmButton.click();
});

Then('I validate if the post was published', async function () {
    const postEditorPage = new PostEditorPage(this.driver);
    const confirmation = postEditorPage.elePublishConfirm;
    await confirmation.click();
});

When('I edit a post {kraken-string}', async function (title) {
    const postEditorPage = new PostEditorPage(this.driver);
    const titleField = postEditorPage.elePostTitleField;
    const button = postEditorPage.elePublishBtn;
    const confirmButton = postEditorPage.eleConfirmPublishBtn;
    await titleField.setValue(title);
    await button.click();
    await confirmButton.click();
});

When('I delete post', async function () {
    const postEditorPage = new PostEditorPage(this.driver);
    const deleteBtn = postEditorPage.eleDeleteBtn;
    const confirmButton = postEditorPage.eleDeleteConfirmationBtn;
    await deleteBtn.click();
    await confirmButton.click();
});

When('I close message', async function() {
    const homePage = new HomePage(this.driver);
    const message = homePage.eleMessage; 
    await message.click();
});

When('I sign out', async function() {
    const homePage = new HomePage(this.driver);
    const user = homePage.eleUser; 
    const signOut = homePage.eleSignOut;
    await user.click();
    await signOut.click();
});

Then('I check if the post {kraken-string} was published on user page', async function(title) {
    const userPage = new UserPage(this.driver);
    const lastPost = userPage.eleLastPost;
    let valor = lastPost.getText();
    expect(valor).to.include(valor);
  });

When('I click on last post', async function() {
    let element = await this.driver.$('/html/body/div[2]/div/main/section/section/ol/li[2]/a[1]');
    return await element.click();
});

When('I take a screenshot on {kraken-string}', async function (feature){

    if(!fs.existsSync(properties.PATH_SCRENSHOTS)) {
        fs.mkdirSync(properties.PATH_SCRENSHOTS);
    }
    if(!fs.existsSync('${properties.PATH_SCREENSHOTS}/${feature}')) {
        fs.mkdirSync('${properties.PATH_SCRENSHOTS}/${feature}');
    }
    if(featureIncremento == feature){
        incremento = incremento +1;
    } else {
        incremento = 1
        featureIncremento = feature;
    }
    const browser = this.driver;
    await browser.saveScreenshot('${properties.PATH_SCRENSHOTS}/${feature}/${incremento}.png')
});