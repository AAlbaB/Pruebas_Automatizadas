Feature: My feature

@user1 @web
Scenario: 1 Uno

#
    And I start new escenario
    And I wait for 1 seconds
  #Login
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds

  #Create post
    When I navigate to page "http://localhost:2368/ghost/#/editor/post/"
    And I wait for 2 seconds
    And I write post title "Test Post title"
    And I wait for 1 seconds
    And I write post body "Test Post body"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I check if the post was published
    And I wait for 2 seconds
    And I go back to posts
    And I wait for 2 seconds

  #Edit post
    And I click on last post
    And I wait for 2 seconds
    And I write post title "Test Edited Post title"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds

  #Delete post
    And I go back to posts
    And I wait for 1 seconds
    And I click on last post
    And I wait for 2 seconds
    And I click on delete
    And I wait for 1 seconds
    And I click on confirm delete
    And I wait for 5 seconds

  #Create post
    And I navigate to page "http://localhost:2368/ghost/#/editor/post/"
    And I wait for 2 seconds
    And I write post title "Test Post title"
    And I wait for 1 seconds
    And I write post body "Test Post body"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I check if the post was published
    And I wait for 2 seconds
    And I go back to posts
    And I wait for 2 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I close message
    And I wait for 1 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Verification
    Then I navigate to page "http://localhost:2368/"
    And I wait for 3 seconds
    And I check if the post was published on user page
    And I wait for 3 seconds

#Scenario: 2 Dos

  #Login
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds

  #Delete post
    When I navigate to page "http://localhost:2368/ghost/#/posts"
    And I wait for 2 seconds
    And I click on last post
    And I wait for 2 seconds
    And I click on delete
    And I wait for 1 seconds
    And I click on confirm delete
    And I wait for 5 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Login
    And I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds
    
  #Create post
    And I navigate to page "http://localhost:2368/ghost/#/editor/post/"
    And I wait for 2 seconds
    And I write post title "Test Post title"
    And I wait for 1 seconds
    And I write post body "Test Post body"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I check if the post was published
    And I wait for 2 seconds
    And I go back to posts
    And I wait for 2 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I close message
    And I wait for 1 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Verification
    Then I navigate to page "http://localhost:2368/"
    And I wait for 3 seconds
    And I check if the post was published on user page
    And I wait for 3 seconds

#Scenario: 3 Tres
  #Login
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds

  #Create post
    When I navigate to page "http://localhost:2368/ghost/#/editor/post/"
    And I wait for 2 seconds
    And I write post title "Test Post title"
    And I wait for 1 seconds
    And I write post body "Test Post body"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I check if the post was published
    And I wait for 2 seconds
    And I go back to posts
    And I wait for 2 seconds

  #Delete post
    And I click on last post
    And I wait for 2 seconds
    And I click on delete
    And I wait for 1 seconds
    And I click on confirm delete
    And I wait for 5 seconds

  #Create post
    When I navigate to page "http://localhost:2368/ghost/#/editor/post/"
    And I wait for 2 seconds
    And I write post title "Test Post title"
    And I wait for 1 seconds
    And I write post body "Test Post body"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I check if the post was published
    And I wait for 2 seconds
    And I go back to posts
    And I wait for 2 seconds

  #Edit post
    And I click on last post
    And I wait for 2 seconds
    And I write post title "Test Edited Post title"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I close message
    And I wait for 1 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Verification
    Then I navigate to page "http://localhost:2368/"
    And I wait for 3 seconds
    And I check if the post was published on user page
    And I wait for 3 seconds

#Scenario: 4 Cuatro
  #Login
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds

  #Create post
    When I navigate to page "http://localhost:2368/ghost/#/editor/post/"
    And I wait for 2 seconds
    And I write post title "Test Post title"
    And I wait for 1 seconds
    And I write post body "Test Post body"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I check if the post was published
    And I wait for 2 seconds
    And I go back to posts
    And I wait for 2 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I close message
    And I wait for 1 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Login
    And I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds

  #Edit post
    And I navigate to page "http://localhost:2368/ghost/#/posts"
    And I wait for 2 seconds
    And I click on last post
    And I wait for 2 seconds
    And I write post title "Test Edited Post title"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I go back to posts
    And I wait for 1 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I close message
    And I wait for 1 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Verification
    Then I navigate to page "http://localhost:2368/"
    And I wait for 3 seconds
    And I check if the post was published on user page
    And I wait for 3 seconds

#Scenario: 5 Cinco
  #Login
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds

  #Create post
    When I navigate to page "http://localhost:2368/ghost/#/editor/post/"
    And I wait for 2 seconds
    And I write post title "Test Post title"
    And I wait for 1 seconds
    And I write post body "Test Post body"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I check if the post was published
    And I wait for 2 seconds
    And I go back to posts
    And I wait for 2 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I close message
    And I wait for 1 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Login
    And I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds

  #Delete post
    And I navigate to page "http://localhost:2368/ghost/#/posts"
    And I wait for 2 seconds
    And I click on last post
    And I wait for 2 seconds
    And I click on delete
    And I wait for 1 seconds
    And I click on confirm delete
    And I wait for 5 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Verification
    Then I navigate to page "http://localhost:2368/"
    And I wait for 3 seconds
    And I check if the post was published on user page
    And I wait for 3 seconds

#Scenario: 6 Seis
  #Login
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds

  #Edit post
    When I navigate to page "http://localhost:2368/ghost/#/posts"
    And I wait for 2 seconds
    And I click on last post
    And I wait for 2 seconds
    And I write post title "Test Edited Post title"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I go back to posts
    And I wait for 1 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I close message
    And I wait for 1 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Login
    And I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds

  #Delete post
    And I navigate to page "http://localhost:2368/ghost/#/posts"
    And I wait for 2 seconds
    And I click on last post
    And I wait for 2 seconds
    And I click on delete
    And I wait for 1 seconds
    And I click on confirm delete
    And I wait for 5 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Verification
    Then I navigate to page "http://localhost:2368/"
    And I wait for 3 seconds
    And I check if the post was published on user page
    And I wait for 3 seconds

#Scenario: 7 Siete
  #Login
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds

  #Delete post
    When I navigate to page "http://localhost:2368/ghost/#/posts"
    And I wait for 2 seconds
    And I click on last post
    And I wait for 2 seconds
    And I click on delete
    And I wait for 1 seconds
    And I click on confirm delete
    And I wait for 5 seconds
  
  #Create post
    And I navigate to page "http://localhost:2368/ghost/#/editor/post/"
    And I wait for 2 seconds
    And I write post title "Test Post title"
    And I wait for 1 seconds
    And I write post body "Test Post body"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I check if the post was published
    And I wait for 2 seconds
    And I go back to posts
    And I wait for 2 seconds

  #Delete post
    And I navigate to page "http://localhost:2368/ghost/#/posts"
    And I wait for 2 seconds
    And I click on last post
    And I wait for 2 seconds
    And I click on delete
    And I wait for 1 seconds
    And I click on confirm delete
    And I wait for 5 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Verification
    Then I navigate to page "http://localhost:2368/"
    And I wait for 3 seconds
    And I check if the post was published on user page
    And I wait for 3 seconds


#Scenario: 8 ocho
  #Login
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds

  #Delete post
    When I navigate to page "http://localhost:2368/ghost/#/posts"
    And I wait for 2 seconds
    And I click on last post
    And I wait for 2 seconds
    And I click on delete
    And I wait for 1 seconds
    And I click on confirm delete
    And I wait for 5 seconds
  
  #Create post
    And I navigate to page "http://localhost:2368/ghost/#/editor/post/"
    And I wait for 2 seconds
    And I write post title "Test Post title"
    And I wait for 1 seconds
    And I write post body "Test Post body"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I check if the post was published
    And I wait for 2 seconds
    And I go back to posts
    And I wait for 2 seconds

  #Edit post
    And I navigate to page "http://localhost:2368/ghost/#/posts"
    And I wait for 2 seconds
    And I click on last post
    And I wait for 2 seconds
    And I write post title "Test Edited Post title"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I go back to posts
    And I wait for 1 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I close message
    And I wait for 1 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Verification
    Then I navigate to page "http://localhost:2368/"
    And I wait for 3 seconds
    And I check if the post was published on user page
    And I wait for 3 seconds

#Scenario: 9 nueve
  #Login
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds

  #Create post
    When I navigate to page "http://localhost:2368/ghost/#/editor/post/"
    And I wait for 2 seconds
    And I write post title "Test Post title"
    And I wait for 1 seconds
    And I write post body "Test Post body"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I check if the post was published
    And I wait for 2 seconds
    And I go back to posts
    And I wait for 2 seconds

  #Delete post
    And I click on last post
    And I wait for 2 seconds
    And I click on delete
    And I wait for 1 seconds
    And I click on confirm delete
    And I wait for 5 seconds

  #Create post
    And I navigate to page "http://localhost:2368/ghost/#/editor/post/"
    And I wait for 2 seconds
    And I write post title "Test Post title"
    And I wait for 1 seconds
    And I write post body "Test Post body"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I check if the post was published
    And I wait for 2 seconds
    And I go back to posts
    And I wait for 2 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I close message
    And I wait for 1 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Verification
    Then I navigate to page "http://localhost:2368/"
    And I wait for 3 seconds
    And I check if the post was published on user page
    And I wait for 3 seconds

#Scenario: 10 diez
  #Login
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds

  #Create post
    When I navigate to page "http://localhost:2368/ghost/#/editor/post/"
    And I wait for 2 seconds
    And I write post title "Test Post title"
    And I wait for 1 seconds
    And I write post body "Test Post body"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I check if the post was published
    And I wait for 2 seconds
    And I go back to posts
    And I wait for 2 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I close message
    And I wait for 1 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Login
    And I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Verification
    Then I navigate to page "http://localhost:2368/"
    And I wait for 3 seconds
    And I check if the post was published on user page
    And I wait for 3 seconds

#Scenario: 11 once
  #Login
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds

  #Create post
    When I navigate to page "http://localhost:2368/ghost/#/editor/post/"
    And I wait for 2 seconds
    And I write post title "Test Post title"
    And I wait for 1 seconds
    And I write post body "Test Post body"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I check if the post was published
    And I wait for 2 seconds
    And I go back to posts
    And I wait for 2 seconds

  #Edit post
    And I click on last post
    And I wait for 2 seconds
    And I write post title "Test Edited Post title"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds

  #Delete post
    And I go back to posts
    And I wait for 1 seconds
    And I click on last post
    And I wait for 2 seconds
    And I click on delete
    And I wait for 1 seconds
    And I click on confirm delete
    And I wait for 5 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I close message
    And I wait for 1 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Verification
    Then I navigate to page "http://localhost:2368/"
    And I wait for 3 seconds
    And I check if the post was published on user page
    And I wait for 3 seconds

#Scenario: 12 Doce
  #Login
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds

  #Create post
    When I navigate to page "http://localhost:2368/ghost/#/editor/post/"
    And I wait for 2 seconds
    And I write post title "Test Post title"
    And I wait for 1 seconds
    And I write post body "Test Post body"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I check if the post was published
    And I wait for 2 seconds
    And I go back to posts
    And I wait for 2 seconds

  #Edit post
    And I click on last post
    And I wait for 2 seconds
    And I write post title "Test Edited Post title"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I close message
    And I wait for 1 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Verification
    Then I navigate to page "http://localhost:2368/"
    And I wait for 3 seconds
    And I check if the post was published on user page
    And I wait for 3 seconds

#Scenario: 13 trece
  #Login
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds

  #Edit post
    When I navigate to page "http://localhost:2368/ghost/#/posts"
    And I wait for 2 seconds
    And I click on last post
    And I wait for 2 seconds
    And I write post title "Test Edited Post title"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I go back to posts
    And I wait for 1 seconds

  #Create post
    And I navigate to page "http://localhost:2368/ghost/#/editor/post/"
    And I wait for 2 seconds
    And I write post title "Test Post title"
    And I wait for 1 seconds
    And I write post body "Test Post body"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I check if the post was published
    And I wait for 2 seconds
    And I go back to posts
    And I wait for 2 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I close message
    And I wait for 1 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Verification
    Then I navigate to page "http://localhost:2368/"
    And I wait for 3 seconds
    And I check if the post was published on user page
    And I wait for 3 seconds

#Scenario: 14 catorce
  #Login
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds

  #Delete post
    When I navigate to page "http://localhost:2368/ghost/#/posts"
    And I wait for 2 seconds
    And I click on last post
    And I wait for 2 seconds
    And I click on delete
    And I wait for 1 seconds
    And I click on confirm delete
    And I wait for 5 seconds
  
  #Create post
    And I navigate to page "http://localhost:2368/ghost/#/editor/post/"
    And I wait for 2 seconds
    And I write post title "Test Post title"
    And I wait for 1 seconds
    And I write post body "Test Post body"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I check if the post was published
    And I wait for 2 seconds
    And I go back to posts
    And I wait for 2 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I close message
    And I wait for 1 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Verification
    Then I navigate to page "http://localhost:2368/"
    And I wait for 3 seconds
    And I check if the post was published on user page
    And I wait for 3 seconds

#Scenario: 15 quince
  #Login
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds

  #Edit post
    When I navigate to page "http://localhost:2368/ghost/#/posts"
    And I wait for 2 seconds
    And I click on last post
    And I wait for 2 seconds
    And I write post title "Test Edited Post title"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I go back to posts
    And I wait for 1 seconds

  #Delete post
    And I navigate to page "http://localhost:2368/ghost/#/posts"
    And I wait for 2 seconds
    And I click on last post
    And I wait for 2 seconds
    And I click on delete
    And I wait for 1 seconds
    And I click on confirm delete
    And I wait for 5 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Verification
    Then I navigate to page "http://localhost:2368/"
    And I wait for 3 seconds
    And I check if the post was published on user page
    And I wait for 3 seconds

#Scenario: 16 dieciseis
  #Login
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds

  #Create post
    When I navigate to page "http://localhost:2368/ghost/#/editor/post/"
    And I wait for 2 seconds
    And I write post title "Test Post title"
    And I wait for 1 seconds
    And I write post body "Test Post body"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I check if the post was published
    And I wait for 2 seconds
    And I go back to posts
    And I wait for 2 seconds

  #Delete post
    And I click on last post
    And I wait for 2 seconds
    And I click on delete
    And I wait for 1 seconds
    And I click on confirm delete
    And I wait for 5 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I close message
    And I wait for 1 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Verification
    Then I navigate to page "http://localhost:2368/"
    And I wait for 3 seconds
    And I check if the post was published on user page
    And I wait for 3 seconds

#Scenario: 17 diecisiete
  #Login
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds

  #Edit post
    When I navigate to page "http://localhost:2368/ghost/#/posts"
    And I wait for 2 seconds
    And I click on last post
    And I wait for 2 seconds
    And I write post title "Test Edited Post title"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I go back to posts
    And I wait for 1 seconds

  #Delete post
    And I navigate to page "http://localhost:2368/ghost/#/posts"
    And I wait for 2 seconds
    And I click on last post
    And I wait for 2 seconds
    And I click on delete
    And I wait for 1 seconds
    And I click on confirm delete
    And I wait for 5 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Verification
    Then I navigate to page "http://localhost:2368/"
    And I wait for 3 seconds
    And I check if the post was published on user page
    And I wait for 3 seconds

#Scenario: 18 dieciocho
  #Login
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds

  #Create post
    When I navigate to page "http://localhost:2368/ghost/#/editor/post/"
    And I wait for 2 seconds
    And I write post title "Test Post title"
    And I wait for 1 seconds
    And I write post body "Test Post body"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I check if the post was published
    And I wait for 2 seconds
    And I go back to posts
    And I wait for 2 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I close message
    And I wait for 1 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Verification
    Then I navigate to page "http://localhost:2368/"
    And I wait for 3 seconds
    And I check if the post was published on user page
    And I wait for 3 seconds

#Scenario: 19 diecinueve
  #Login
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds

  #Edit post
    When I navigate to page "http://localhost:2368/ghost/#/posts"
    And I wait for 2 seconds
    And I click on last post
    And I wait for 2 seconds
    And I write post title "Test Edited Post title"
    And I wait for 1 seconds
    And I click publish button
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I go back to posts
    And I wait for 1 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I close message
    And I wait for 1 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Verification
    Then I navigate to page "http://localhost:2368/"
    And I wait for 3 seconds
    And I check if the post was published on user page
    And I wait for 3 seconds

#Scenario: 20 veinte
  #Login
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 3 seconds
    And I enter email "<USERNAME1>"
    And I wait for 1 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 1 seconds
    And I click next
    And I wait for 5 seconds

  #Delete post
    When I navigate to page "http://localhost:2368/ghost/#/posts"
    And I wait for 2 seconds
    And I click on last post
    And I wait for 2 seconds
    And I click on delete
    And I wait for 1 seconds
    And I click on confirm delete
    And I wait for 5 seconds

  #Logout
    And I navigate to page "http://localhost:2368/ghost/#/site"
    And I wait for 3 seconds
    And I click on user
    And I wait for 2 seconds
    And I confirm sign out
    And I wait for 2 seconds

  #Verification
    Then I navigate to page "http://localhost:2368/"
    And I wait for 3 seconds
    And I check if the post was published on user page
    And I wait for 3 seconds