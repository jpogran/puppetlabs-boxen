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
    'curl',
    'gawk',
    'imagemagick',
    'libxml2',
    'nmap',
    'packer',
    'rust',
    'tmux',
    'tree',
    'wget',
    'zsh',
  ]: }

  package { [
    '1password',
    'alfred',
    'divvy',
    'dropbox',
    'google-chrome',
    'hipchat',
    'iterm2',
    'skype',
    'sqwiggle',
    'vlc',
    'font-envy-code-r',
    #'font-inconsolata-for-powerline',
    #'font-meslo-lg-for-powerline',
    #'packer',
    #'vagrant',
    #'vagrant-manager',
    #'virtualbox',
    ]: provider => 'brewcask', install_options => ['--appdir=/Applications'],
  }

  ruby_gem { 'bundler for all rubies':
    gem          => 'bundler',
    version      => '~> 1.10',
    ruby_version => '*',
  }

  ruby_gem { 'stickler':
    gem          => 'stickler',
    version      => '~> 2.4',
    ruby_version => '2.2.2',
  }

  ruby::version { '2.0.0-p645': }
  ruby::version { '2.1.5': }
  ruby::version { '2.1.6': }
  ruby::version { '2.2.2': }

  exec { 'Font: Inconsolata':
    command => "curl -L http://www.levien.com/type/myfonts/Inconsolata.otf -o /Users/${::boxen_user}/Library/Fonts/Inconsolata.otf",
    creates => "/Users/${::boxen_user}/Library/Fonts/Inconsolata.otf"
  }
}
