dotfiles = [
  '.bash_aliases',
  '.bashrc',
  '.bash_profile',
  '.vimrc',
  '.tmux.conf'
]

dotfiles.each do |f|
  `cp ../#{f} .`
end
