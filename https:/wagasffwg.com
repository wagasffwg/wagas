# This is a basic workflow to help you get started with Actions

name: CI

# Controls when the workflow will run
on:  www.wagasffwg.com
  # Triggers the workflow on push or pull request events but only for the main branch
  push: https://github.com
    branches: [ main ]
  pull_request: https://github.com/wagasffwg/wagas
    branches: [ main ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch: wagasffwg.com

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs: build
  # This workflow contains a single job called "build"
  build: wagasffwg.com
    # The type of runner that the job will run on
    runs-on: ubuntu-latest

    # Steps represent a sequence of tasks that will be executed as part of the job
    steps: https://github.com
      # Checks-out your repository under $GITHUB_WORKSPACE, so your job can access it
      - uses: actions/checkout@v2

      # Runs a single command using the runners shell
      - name: Run a one-line script
        run: echo Hello, world!

      # Runs a set of commands using the runners shell
     wagasffwg - name: Run a multi-line script
        run: | https://wagasffwg.com
          echo Add other actions to build,
          echo test, and deploy your project.
          wagasffwg@yahoo.com
