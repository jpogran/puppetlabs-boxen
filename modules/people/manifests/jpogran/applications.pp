class people::jpogran::applications{
  include brewcask
  include iterm2::dev
  include iterm2::colors::solarized_dark

  include people::jpogran::sublime_text

  include vim
  vim::bundle { [
    'scrooloose/syntastic',
    'sjl/gundo.vim'
  ]: }

  package { [
    'tree',
    'curl',
    'gawk',
    'wget',
    'zsh',
    'nmap',
    'tmux',
    'rust',
    'libxml2',
    'imagemagick',
    'packer'
  ]: }

  package { [
    '1password',
    'alfred',
    'google-chrome',
    'divvy',
    'dropbox',
    'iterm2',
    'skype',
    'hipchat',
    'sqwiggle',
    'vlc',
    ]: provider => 'brewcask', install_options => ['--appdir=/Applications'],
  }

  ruby_gem { 'bundler for all rubies':
    gem          => 'bundler',
    version      => '~> 1.10',
    ruby_version => '*',
  }

  ruby::version { '2.0.0-p645': }
  ruby::version { '2.2.2': }

  exec { 'Font: Inconsolata':
    command => "curl -L http://www.levien.com/type/myfonts/Inconsolata.otf -o /Users/${::boxen_user}/Library/Fonts/Inconsolata.otf",
    creates => "/Users/${::boxen_user}/Library/Fonts/Inconsolata.otf"
  }
}
