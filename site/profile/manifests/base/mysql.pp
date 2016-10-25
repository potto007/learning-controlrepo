class profile::base::mysql {
  $remove_default_accounts = hiera(profile::base::mysql::remove_default_accounts, false)
  
  class { '::mysql::server':
    remove_default_accounts => $remove_default_accounts
  }
}
