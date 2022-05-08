Feature: My feature

@user1 @mobile
Scenario: My scenario 1
  Given I wait
  When I send a signal to user 2 containing "hi"

@user2 @web
Scenario: Log in ok
  Given I navigate to page "http://localhost:2368/ghost/"
  And I wait for 5 seconds
  When I enter email "<USERNAME1>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD1>" 
  And I wait for 2 seconds
  Then I click Sign in
  And I wait for 2 seconds

  When I click in Posts "http://localhost:2368/ghost/#/posts/"
  And I wait for 2 seconds
  When I click in New Post "http://localhost:2368/ghost/#/editor/post"
  And I wait for 2 seconds
  And I write in post title "Pet shop"
  And I wait for 2 seconds
  And I write in description post "Amazing pets"
  And I wait for 2 seconds
  When I see the Preview
  And I wait for 2 seconds
  And I select publish
  And I wait for 2 seconds
  When I select set it live now
  And I wait for 2 seconds
  Then I expect to publish the post
  And I wait for 2 seconds
  When I publish the post
  And I wait for 2 seconds
  When I click in Posts "http://localhost:2368/ghost/#/posts/"
  And I wait for 7 seconds

 