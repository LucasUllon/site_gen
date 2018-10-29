
import os, strutils, parsecfg

const site_gen = "site_gen"

proc init(targetDir: string) =
  var
    binPath = os.findExe(site_gen)
    baseAppDir: string = ""

  binPath.removeSuffix(site_gen)
  
  if os.existsDir(binPath / "baseapp"):
    baseAppDir = binPath / "baseapp"
  elif os.existsDir(binPath / "src/baseapp/"):
    baseAppDir = binPath / "src/baseapp/"
    
  if baseAppDir != "":
    echo "coping from: $1 to $2" % [baseAppDir, targetDir]
    for kind, path in os.walkDir(baseAppdir):
      let
        splitPath = path.split("/")
        copiedDir = splitPath[len(splitPath) - 1]
        target = targetDir & "/" & copiedDir

      if kind == PathComponent.pcDir:
        os.copyDirWithPermissions(path, target)
      elif kind == PathComponent.pcFile:
        os.copyFileWithPermissions(path, target)

proc build() =
  discard
  echo "TODO: build the website."
  # compile index.nim into public/js/index.js
  # read index.nim in the site
  # include it in the index.nim

when declared(commandLineParams):
  let
    params = commandLineParams()
    initIndx = params.find("init")
    buildIndx = params.find("build")
    
  if initIndx > -1:
    # TODO validate parameters
    init(params[initIndx + 1])
  elif buildIndx > -1:
    build()
  else:    
    echo "Invalid parameters."
    echo " init <path>:     path the target dir where the website will be initialized"
    echo " build:           builds the site."
    