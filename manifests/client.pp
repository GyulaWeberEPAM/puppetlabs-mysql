#
class mysql::client (
  $bindings_enable = $mysql::params::bindings_enable,
  $install_options = undef,
  $package_ensure  = $mysql::params::client_package_ensure,
  $package_manage  = $mysql::params::client_package_manage,
  $package_name    = $mysql::params::client_package_name,
) inherits mysql::params {


  if $bindings_enable {
    class { 'mysql::bindings':
      java_enable   => true,
      perl_enable   => true,
      php_enable    => true,
      python_enable => true,
      ruby_enable   => true,
    }
  }

}
