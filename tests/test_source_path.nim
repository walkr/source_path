import os
import unittest
import source_path

test "currentSourcePath template inside a template":
    let path = currentSourcePath() # RESULT: The path to tests dir
    let path2 = mySourcePath() # RESULT: The path to tests dir
    check path == path2

    let dir = currentSourcePath().parentDir() # RESULT: The path to tests dir
    let dir2 = mySourceDir() # RESULT: The path to src dir
    check dir == dir2 # Fails

    # Shouldn't dir and dir2 be equal, since `mySourceDir`
    # is simply a template which call `currentSourcePath().parentDir()`.
