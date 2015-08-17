class people::jpogran (
  $my_username  = $people::jpogran::params::my_username,
  $my_homedir   = $people::jpogran::params::my_homedir,
  $my_sourcedir = $people::jpogran::params::my_sourcedir,
) inherits people::jpogran::params {
  include people::jpogran::applications
  include people::jpogran::repositories
  include people::jpogran::config
  include people::jpogran::puppet
}
