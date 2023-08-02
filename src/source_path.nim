template mySourcePath*(): string =
  ## Return current source path
  currentSourcePath()

template mySourceDir*(): string =
  ## Return parent directory of currnet source path
  currentSourcePath().parentDir()
