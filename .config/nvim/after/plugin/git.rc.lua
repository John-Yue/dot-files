local status, git = pcall(require, 'git')
if (not status) then return end

git.setup({
  keymaps = {
    blame = "<Leader>gb",
    browe = "<Leader>go"
  }
})
