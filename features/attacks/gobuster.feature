@slow
Feature: gobuster scan
  Background:
    Given an attack "gobuster" exists
    And I copy the attack files from the "examples/gobuster" folder
    And the following attack files exist:
      | filename         |
      | gobuster.attack  |
    When I run `gauntlt`
    Then it should pass with:
      """
      4 steps (4 passed)
      """