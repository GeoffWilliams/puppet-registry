#@PDQTest
registry_key { 'HKLM\System\CurrentControlSet\Services\Puppet':
  ensure => present,
}