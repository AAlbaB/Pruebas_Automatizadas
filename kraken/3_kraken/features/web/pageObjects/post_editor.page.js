module.exports = class PostEditorPage{

    constructor(driver) {
        this.driver = driver;
    }

    get elePostTitleField(){
        const postTitleText = this.driver.$(`textarea[class="gh-editor-title ember-text-area gh-input ember-view"]`);
        if(postTitleText != null) {
            return postTitleText;
        } else {
            throw new Error("No existe elemento elePostTitleField")
        }
    }

    get elePostBody(){
        const postBodyText = this.driver.$("/html/body/div[2]/div/main/section/div[1]/div[1]/article/div[1]/div");
        if(postBodyText != null) {
            return postBodyText;
        } else {
            throw new Error("No existe elemento elePostBody")
        }
    }

    get elePublishBtn(){
        const publishBtn = this.driver.$("/html/body/div[2]/div/main/section/header/section/div/div[1]/span");
        if(publishBtn != null) {
            return publishBtn;
        } else {
            throw new Error("No existe elemento elePublishBtn")
        }
    }

    get eleConfirmPublishBtn(){
        const publishBtn = this.driver.$("/html/body/div[1]/div/footer/button[2]/span");
        if(publishBtn != null) {
            return publishBtn;
        } else {
            throw new Error("No existe elemento eleConfirmPublishBtn")
        }
    }

    get elePublishConfirm(){
        const publishConfirm = this.driver.$("/html/body/div[2]/div/aside/article/div");
        if(publishConfirm != null) {
            return publishConfirm;
        } else {
            throw new Error("No existe elemento elePublishConfirm")
        }
    }

    get eleUpdateBtn(){
        const updateBtn = this.driver.$("/html/body/div[2]/div/main/div/section/header/section/div[1]/div[1]/span");
        if(updateBtn != null) {
            return updateBtn;
        } else {
            throw new Error("No existe elemento eleUpdateBtn")
        }
    }

    get eleDeleteBtn(){
        const deleteBtn = this.driver.$("/html/body/div[4]/div[1]/div/div/div/div/div[1]/div/div[1]/div[2]/form/button/span");
        if(deleteBtn != null) {
            return deleteBtn;
        } else {
            throw new Error("No existe elemento eleConfigBtn")
        }
    }

    get eleDeleteConfirmationBtn(){
        const deleteConfirmationBtn = this.driver.$("button.gh-btn.gh-btn-red.gh-btn-icon.ember-view");
        if(deleteConfirmationBtn != null) {
            return deleteConfirmationBtn;
        } else {
            throw new Error("No existe elemento eleDeleteConfirmationBtn")
        }
    }

}