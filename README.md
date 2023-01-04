# THIS IS A FORK

Forked from [busser-serverspec@0.5.10](https://github.com/test-kitchen/busser-serverspec)

# <a name="title"></a> Busser::RunnerPlugin::ServerspecChefdk30

A Busser runner plugin for Serverspec for EOL Ruby versions 2.3 and ChefDK 3.0 due to the following breaking change:

> ## Breaking changes:
>
>  - Drop support for Ruby 2.3, 2.4, 2.5 and RubyGems 2.5, 2.6, 2.7 [#6107](https://github.com/rubygems/rubygems/pull/6107)

## <a name="installation"></a> Installation and Setup

Please read the Busser [plugin usage][plugin_usage] page for more details.

## <a name="usage"></a> Usage

Please put test files into [COOKBOOK]/test/integration/[SUITES]/serverspec_chefdk30/

```cookbook
`-- test
    `-- integration
        `-- default
            `-- serverspec_chefdk30
                |-- Gemfile
                |-- localhost
                |   `-- httpd_spec.rb
                `-- spec_helper.rb
```

`Gemfile` is optional. You can specify installing Serverspec version and install gems you need.
