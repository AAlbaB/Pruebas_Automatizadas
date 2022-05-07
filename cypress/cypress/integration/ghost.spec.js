import { createAPost, deleteAPost, login, updateAPost } from "../support/utils";
import { password, userName, baseUrl } from "../support/constants";

describe('Testing basic post creation', () => {
    beforeEach(() => {
       login(userName, password);
    })
    
    it('Create a new post and check if was created correctly', () => {
        createAPost("This is a new post", "This is the description")
        deleteAPost()
    })
});