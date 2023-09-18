local status, toggleterm = pcall(require, "toggleterm")
if not status then
  print('Error with plugin: ', toggleterm)
  return
end

require('toggleterm').setup{
  size = 10,
  open_mapping = [[gt]],
  direction = 'float',
  border = 'curved',
}
