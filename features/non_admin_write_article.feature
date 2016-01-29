Feature: User Write Articles
  As a blogger
  In order to share my thoughts with the world
  I want to be able to add articles to my blog without authorization to merge articles

  Background:
    Given the blog is set up with an admin and a contributor
    And I am logged into the contributor panel
    And I am on the new article page
    When I fill in "article_title" with "Foobar1"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"

  Scenario: See no merge capability on New article page
    Given I am on the new article page
    Then I should not see "Merge Articles"
    
  Scenario: See no merge capability on Edit article page
    When I go to the home page
    Then I should see "Foobar1"
    When I follow "Foobar1"
    Then I should see "Lorem Ipsum"
    Then I should not see "Merge Articles"
