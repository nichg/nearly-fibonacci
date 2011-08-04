Feature: Greatest Fibonacci Number
  In order to solve this problem
  As a user 
  I want to find the greatest Fibonacci number < a given number 

  Scenario: limit integer is equal to 0
    Given I have entered 0 into the calculator
    When I press calculate
    Then the result should be 0
  Scenario: limit integer is equal to 1
    Given I have entered 1 into the calculator
    When I press calculate
    Then the result should be 1
  Scenario: limit integer is greater than 1
    Given I have entered 156 into the calculator
    When I press calculate
    Then the result should be 144
  Scenario: limit integer is greater than 1
    Given I have entered 99 into the calculator
    When I press calculate
    Then the result should be 89
  # Consider negative integers
  Scenario: limit integer is less than -1
    Given I have entered -156 into the calculator
    When I press calculate
    Then the result should be -144
  Scenario: limit integer is equal to -1
    Given I have entered -1 into the calculator
    When I press calculate
    Then the result should be -1

