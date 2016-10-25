class profile::base {
  $hiera_filename = hiera(profile::base::filename, 'notfound')

  class { 'test':
    filename => $hiera_filename
  }
}
