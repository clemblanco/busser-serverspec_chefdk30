# THIS IS A FORK

Forked from [busser-serverspec@0.5.10](https://github.com/test-kitchen/busser-serverspec)

# <a name="title"></a> Busser::RunnerPlugin::ServerspecChefdk30

A Busser runner plugin for Serverspec for EOL Ruby versions 2.3 and ChefDK 3.0 due to the following breaking change from the `bundler` gem:

> ## Breaking changes:
>
>  - Drop support for Ruby 2.3, 2.4, 2.5 and RubyGems 2.5, 2.6, 2.7 [#6107](https://github.com/rubygems/rubygems/pull/6107)

## <a name="installation"></a> Installation and Setup

You can manually install it using `busser` CLI

```
busser plugin install serverspec_chefdk30
```

If you are using this part of a [test-kitchen](https://github.com/test-kitchen/test-kitchen) test suite, there is no need to install anything, naming your folders properly will be enough for `busser` to automatically install it.

## <a name="usage"></a> Usage

Please put test files into `[COOKBOOK]/test/integration/[SUITES]/serverspec_chefdk30/...`

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
