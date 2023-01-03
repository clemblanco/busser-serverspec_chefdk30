Feature: Test command
  In order to run tests written with serverspec_chefdk30
  As a user of Busser
  I want my tests to run when the serverspec_chefdk30 runner plugin is installed

  Background:
    Given a test BUSSER_ROOT directory named "busser-serverspec_chefdk30-test"
    And a sandboxed GEM_HOME directory named "busser-serverspec_chefdk30-gem-home"
    When I successfully run `busser plugin install busser-serverspec_chefdk30 --force-postinstall`
    Given a suite directory named "serverspec_chefdk30"

  Scenario: A passing test suite
    Given a file in suite "serverspec_chefdk30" named "localhost/default_spec.rb" with:
    """
    require 'serverspec'
    set :backend, :exec

    describe command( "echo 'hello'" ) do
      its(:exit_status) { should eq 0 }
      its(:stdout) { should eq "hello\n" }
    end
    """
    When I run `busser test serverspec_chefdk30`
    Then the output should contain:
    """
    2 examples, 0 failures
    """
    And the exit status should be 0

  Scenario: A failing test suite
    Given a file in suite "serverspec_chefdk30" named "localhost/default_spec.rb" with:
    """
    require 'serverspec'
    set :backend, :exec

    describe command( 'which uhoh-whatzit-called' ) do
      its(:exit_status) { should eq 0 }
    end
    """
    When I run `busser test serverspec_chefdk30`
    Then the output should contain:
    """
    1 example, 1 failure
    """
    And the exit status should not be 0
