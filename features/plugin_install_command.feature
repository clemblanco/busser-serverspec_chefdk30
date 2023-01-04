Feature: Plugin install command
  In order to use this plugin
  As a user of Busser
  I want to run the postinstall for this plugin

  Background:
    Given a test BUSSER_ROOT directory named "busser-serverspec_chefdk30-install"
    And a sandboxed GEM_HOME directory named "busser-serverspec_chefdk30-gem-home"

  Scenario: Running the postinstall generator
    When I run `busser plugin install busser-serverspec_chefdk30 --force-postinstall`
    Then the output should match /^Running postinstall\b/
