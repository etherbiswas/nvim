local coderunner = require("code_runner")

coderunner.setup({
  mode = 'term',
  focus = true,
  startinsert = true,
  border_hl = "FloatBorder",
  float_hl = "Normal",
  -- put here the commands by filetype
  filetype = {
    java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
    python = "python3 -u",
    typescript = "deno run",
    rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt"
  },
  project_path = "",
  project = {},
})
