node 'demo' {
  class { 'apache': }

  apache::vhost { 'wsgi.example.com':
      port                        => '80',
      docroot                     => '/var/www',
      wsgi_daemon_process         => 'wsgi',
      wsgi_daemon_process_options => { processes => '2', threads => '15', display-name => '%{GROUP}' },
      wsgi_process_group          => 'wsgi',
      wsgi_script_aliases         => { '/' => '/var/www/demo.wsgi' },
    }

}



