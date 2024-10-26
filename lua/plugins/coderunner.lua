return {
  "CRAG666/code_runner.nvim",
  config = function()
    local coderunner = require("code_runner")

    coderunner.setup({
      mode = 'term',
      focus = true,
      startinsert = true,
      border_hl = "FloatBorder",
      float_hl = "Normal",
      -- put here the commands by filetype
      filetype = {
        python = "python3 -u",
        c = "cd $dir && gcc $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
        go = "cd $dir && go run $fileName",
        javascript = "node $dir/$fileName",
        typescript = "deno run",
        rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
        java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
      },
      project_path = "",
      project = {},
    })
  end,
}
