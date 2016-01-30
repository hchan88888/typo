Feature: Merge Articles
  As an administrator
  I want to be able to merge articles 

  Background:
    Given the blog is set up with an admin and a contributor
    And I am logged into the admin panel
    Given I am on the new article page
    When I fill in "article_title" with "Foobar1"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "Foobar1"
    When I follow "Foobar1"
    Then I should see "Lorem Ipsum"
    
    Given I am on the new article page
    When I fill in "article_title" with "Bullshit"
    And I fill in "article__body_and_extended_editor" with "Bullshit totally!"
    And I press "Publish"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "Foobar1"
    When I follow "Foobar1"
    Then I should see "Lorem Ipsum"
    When I go to the home page
    Then I should see "Bullshit"
    When I follow "Bullshit"
    Then I should see "Bullshit totally!"

  Scenario: Not see merge capability in new article page
    Given I am on the new article page
    Then I should not see "Merge Articles"

  Scenario: See merge capability in new article page
    When I am on the admin content page
    Then I should see "Foobar1"
    When I follow "Foobar1"
    Then I should see "Lorem Ipsum"
    Then I should see "Merge Articles"
    Then I should see "Article ID"