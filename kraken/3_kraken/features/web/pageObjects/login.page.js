module.exports = class LoginPage{

    constructor(driver) {
        this.driver = driver;
    }

    get eleEmailAddressTextField(){
        const emailAddressText = this.driver.$("input[name='identification']");
        if(emailAddressText != null) {
            return emailAddressText;
        } else {
            throw new Error("No existe elemento eleEmailAddressTextField")
        }
    }

    get elePasswordTextField(){
        const passwordText = this.driver.$("input[name='password']");
        if(passwordText != null) {
            return passwordText;
        } else {
            throw new Error("No existe elemento elePasswordTextField")
        }
    }

    get eleLoginBtn(){
        const loginBtn = this.driver.$("//span[text()[normalize-space()='Sign in']]");
        if(loginBtn != null) {
            return loginBtn;
        } else {
            throw new Error("No existe elemento eleLoginBtn")
        }
    }
}