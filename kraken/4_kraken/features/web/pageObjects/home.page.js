module.exports = class HomePage{

    constructor(driver) {
        this.driver = driver;
    }

    get eleMessage(){
        const message = this.driver.$("/html/body/div[2]/div/aside/article/button");
        if(message != null) {
            return message;
        } else {
            throw new Error("No existe elemento eleMessage")
        }
    }

    get eleUser(){
        const user = this.driver.$("/html/body/div[2]/div/nav[1]/div/section/div[2]/div/div/div[1]/div[1]");
        if(user != null) {
            return user;
        } else {
            throw new Error("No existe elemento eleUser")
        }
    }

    get eleSignOut(){
        const loginBtn = this.driver.$("a.dropdown-item.user-menu-signout.ember-view");
        if(loginBtn != null) {
            return loginBtn;
        } else {
            throw new Error("No existe elemento eleSignOut")
        }
    }
}