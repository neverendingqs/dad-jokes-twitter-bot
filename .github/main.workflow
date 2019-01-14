workflow "New workflow" {
  on = "push"
  resolves = ["build", "test"]
}

action "build" {
  uses = "actions/npm@e7aaefed7c9f2e83d493ff810f17fa5ccd7ed437"
  args = "install"
}

action "test" {
  uses = "actions/npm@e7aaefed7c9f2e83d493ff810f17fa5ccd7ed437"
  needs = ["build"]
  args = "test"
}
