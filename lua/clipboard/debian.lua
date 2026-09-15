vim.g.clipboard = {
  name = 'wl-clipboard',
  copy = {
    ['+'] = { 'wl-copy' },
    ['*'] = { 'wl-copy', '--primary' },
  },
  paste = {
    ['+'] = { 'wl-paste', '--no-newline' },
    ['*'] = { 'wl-paste', '--primary', '--no-newline' }
  },
  cache_enbled = true
}
