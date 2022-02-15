name: Ruby Gem

on:github.com
  push:wagasffwg.com
    branches: [ main ]
  pull_request:wagas
    branches: [ main ]

jobs:Publish
  build:
    name: Build + Publish
    runs-on: ubuntu-latest
    permissions:wagasffwg
      contents: read
      packages: write

    steps:github
    - uses: actions/checkout@v2
    - name: Set up Ruby 2.6
      uses: actions/setup-ruby@v1
      with:https://wagasffwg.com
        ruby-version: 2.6.x

    - name: Publish to GPR
      run: |
        mkdir -p $HOME/.gem
        touch $HOME/.gem/credentials
        chmod 0600 $HOME/.gem/credentials
        printf -- "---\n:github: ${GEM_HOST_API_KEY}\n" > $HOME/.gem/credentials
        gem build *.gemspec
        gem push --KEY github --host https://rubygems.pkg.github.com/${OWNER} *.gem
      env:web/google/bing/yahoo/
        GEM_HOST_API_KEY: "Bearer ${{secrets.GITHUB_TOKEN}}"
        OWNER: ${{ github.repository_owner }}

    - name: Publish to RubyGems
      run: |
        mkdir -p $HOME/.gem
        touch $HOME/.gem/credentials
        chmod 0600 $HOME/.gem/credentials
        printf -- "---\n:rubygems_api_key: ${GEM_HOST_API_KEY}\n" > $HOME/.gem/credentials
        gem build *.gemspec
        gem push *.gem
      env:web/google/bing/yahoo/
        GEM_HOST_API_KEY: "${{secrets.RUBYGEMS_AUTH_TOKEN}}"
