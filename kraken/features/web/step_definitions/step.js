const { Given, When, Then } = require('@cucumber/cucumber');

//Login
Given('I navigate to page', () => {
    browser.url('http://localhost:2368/ghost/');    
  });

When('I enter email {kraken-string}', async function(email){
    let element = await this.driver.$('//input[@placeholder="jamie@example.com"]')
    return await element.setValue(email);
});

When('I enter password {kraken-string}', async function(password){
    let element = await this.driver.$('//input[@placeholder="•••••••••••••••"]')
    return await element.setValue(password);
});

Then('I click Sign in', async function () {
    let element = await this.driver.$('//button[@tabindex="3"]');
    return await element.click();
});


//Crear post
When('I click in Posts {kraken-string}', async function (href) {
    let element = await this.driver.$('//a[@href="#/posts/"]');
    return await element.click();
});

Then('I click in New Post {kraken-string}', async function(href){  
    let element = await this.driver.$('//a[@href="#/editor/post/"]');
    return await element.click();
});

When('I write in post title {kraken-string}', async function(title){
    let element = await this.driver.$('//textarea[@placeholder="Post title"]')
    return await element.setValue(title);
});

When('I write in description post {kraken-string}', async function(description){
    let element = await this.driver.$('//div[@data-placeholder="Begin writing your post..."]')
    return await element.setValue(description);
});

When('I see the Preview', async function(){
    let element = await this.driver.$('//button[@class="gh-btn gh-editor-preview-trigger"]')
    return await element.click();
});

When('I select publish', async function(){
    let element = await this.driver.$('//div[@tabindex="0"]')
    return await element.click();
});

When('I select set it live now', async function(){
    let element = await this.driver.$('//div[@class="gh-publishmenu-radio active"]')
    return await element.click();
});

When('I expect to publish the post', async function(){
    let element = await this.driver.$('//button[@class="gh-btn gh-btn-black gh-publishmenu-button gh-btn-icon ember-view"]')
    return await element.click();
});

When('I publish the post', async function(){
    let element = await this.driver.$('//button[@class="gh-btn gh-btn-black gh-btn-icon ember-view"]')
    return await element.click();
});


//editar post













