return{
"rcarriga/nvim-notify",
config = function()
  local status_ok, notify = pcall(require, "notify")
  if not status_ok then
    return
  end
  notify.setup({
    background_colour = "#000000",
  })
  vim.notify = notify
end,
}
