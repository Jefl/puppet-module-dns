class dns::server::service inherits dns::server::params {

  service { 'bind9':
    name       => $::dns::service_name,
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => Class['dns::server::config']
  }

}
