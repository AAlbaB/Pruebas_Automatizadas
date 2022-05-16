module.exports = class UserPage{

    constructor(driver) {
        this.driver = driver;
    }

    get eleLastPost(){
        const lastPost = this.driver.$("/html/body/div/main/div/div/article[1]/div/a/header/h2");
        if(lastPost != null) {
            return lastPost;
        } else {
            throw new Error("No existe elemento eleLastPost")
        }
    }

}