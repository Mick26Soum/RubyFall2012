Feature: Pirate Translator
  In order to speak pirate lingo
  As a pirate enthusiasts
  I want to translate plain old english to pirate terminology

  Scenario: Begin Translation
    Given I have Pirate Translator
    And I say "Hello Friend"
    When I hit translate
    Then it prints out 'Ahoh Matey'
    And it prints out 'Shiber Me Timbers Your Scurvey Dogs!!'