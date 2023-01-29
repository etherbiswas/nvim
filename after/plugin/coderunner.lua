local coderunner_status_ok, coderunner = pcall(require, 'code_runner')
if not coderunner_status_ok then
  return
end

coderunner.setup({
  mode = 'toggleterm',
  focus = false,
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
