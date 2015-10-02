class people::jpogran::puppet(
  $my_sourcedir = $people::jpogran::params::my_sourcedir,
) {

  repository { "${my_sourcedir}/puppetlabs/modules/puppetlabs-acl":
    source => 'puppetlabs/puppetlabs-acl',
  }

  repository { "${my_sourcedir}/puppetlabs/modules/puppetlabs-dsc":
    source => 'puppetlabs/puppetlabs-dsc',
  }

  repository { "${my_sourcedir}/puppetlabs/modules/puppetlabs-powershell":
    source => 'puppetlabs/puppetlabs-powershell',
  }

  repository { "${my_sourcedir}/puppetlabs/modules/puppetlabs-reboot":
    source => 'puppetlabs/puppetlabs-reboot',
  }

  repository { "${my_sourcedir}/puppetlabs/modules/puppetlabs-registry":
    source => 'puppetlabs/puppetlabs-registry',
  }

  repository { "${my_sourcedir}/puppetlabs/modules/puppetlabs-sqlserver":
    source => 'puppetlabs/puppetlabs-sqlserver',
  }

  repository { "${my_sourcedir}/puppetlabs/modules/puppetlabs-stdlib":
    source => 'puppetlabs/puppetlabs-stdlib',
  }

  repository { "${my_sourcedir}/puppetlabs/puppet":
    source => 'puppetlabs/puppet',
  }

  repository { "${my_sourcedir}/puppetlabs/facter":
    source => 'puppetlabs/facter',
  }

  repository { "${my_sourcedir}/puppetlabs/beaker":
    source => 'puppetlabs/beaker',
  }

  repository { "${my_sourcedir}/ferventcoder/vagrant-windows-puppet":
    source => 'ferventcoder/vagrant-windows-puppet',
  }
}
