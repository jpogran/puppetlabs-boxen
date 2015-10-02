class people::jpogran::repositories (
  $my_sourcedir = $people::jpogran::params::my_sourcedir,
  $my_homedir   = $people::jpogran::params::my_homedir,
  $my_username  = $people::jpogran::params::my_username
) {

  repository { "${my_sourcedir}/my/dotfiles":
    source => 'jpogran/dotfiles',
  }

  repository { "${my_sourcedir}/third/oh-my-zsh":
    source  => 'robbyrussell/oh-my-zsh',
  }

  repository { "${my_sourcedir}/third/oh-my-zsh/custom/plugins/zsh-syntax-highlighting":
    source  => 'zsh-users/zsh-syntax-highlighting',
  }

  File <| title == "/Users/${::boxen_user}/.gemrc" |> {
    source => "${my_sourcedir}/my/dotfiles/.gemrc"
  }

  file { "${my_homedir}/.gitconfig":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/my/dotfiles/.gitconfig",
    require => Repository["${my_sourcedir}/my/dotfiles"],
  }

  file { "${my_homedir}/.zshrc":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/my/dotfiles/.zshrc",
    require => Repository["${my_sourcedir}/my/dotfiles"],
  }

  file { "${my_homedir}/.vimrc":
    ensure => link,
    mode   => '0644',
    target => "${my_sourcedir}/my/dotfiles/.vimrc",
    require => Repository["${my_sourcedir}/my/dotfiles"],
  }

  file { "${my_homedir}/.pryrc":
    ensure => link,
    mode   => '0644',
    target => "${my_sourcedir}/my/dotfiles/.pryrc",
    require => Repository["${my_sourcedir}/my/dotfiles"],
  }

  file { "${my_homedir}/.oh-my-zsh":
    ensure  => link,
    target  => "${my_sourcedir}/third/oh-my-zsh",
    require => Repository["${my_sourcedir}/third/oh-my-zsh"],
  }

  $sublime = "${my_homedir}/Library/Application Support/Sublime Text 3"

  file { "${sublime}/Packages/User/Preferences.sublime-settings":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/my/dotfiles/sublime.preferences",
    require => Repository["${my_sourcedir}/my/dotfiles"],
  }
}
