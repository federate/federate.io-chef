default['opensips']['package_name'] = "opensips"
default['opensips']['install_method'] = "package"
default['opensips']['source']['url'] = "http://opensips.org/pub/opensips/latest/src/opensips-1.9.0_src.tar.gz"
default['opensips']['source']['include_modules'] = ["signaling,", "sl,", "tm,", "rr,", "dialog,", "maxfwd,", "usrloc,", "registrar,", "textops,", "sipmsgops,", "mi_fifo,", "uri,", "auth,", "auth_db,", "nathelper,", "alias_db,", "group,", "rtpproxy,", "enum,", "avpops,", "pike,", "domain", "db_mysql"]
default['opensips']['source']['prefix'] = '/usr/local/opensips'
default['opensips']['federate']['config_file'] = '/usr/local/opensips/etc/opensips/opensips.cfg'
db_url = 'mysql://root:somepass@localhost/proxy'
default['opensips']['federate']['config'] = {
  # This is probably ok to leave
  'debug_level' => 3,
  # CHANGE to whatever you have syslog set up to log
  # for your proxy
  'log_facility' => 'LOG_LOCAL3',

  # CHANGE THIS
  'listen_ip' => '127.0.0.1',

  # CHANGE THIS to match your install prefix
  'module_path' => '/usr/local/opensips/lib64/opensips/modules/',

  # This user and group must exist
  'user' => 'opensips',
  'group' => 'opensips',

  # We set db_url then reference it for all other db_urls
  # since they share a common db.  You can set them individually.
  #
  # This is the format for a mysql db in opensips
  #      dbtype   user pass     host      db
  'db_url' => db_url,
  'group_db_url' => db_url,
  'alias_db_url' => db_url,
  'auth_db_url' => db_url,
  'avp_db_url' => db_url,
  'dialog_db_url' => db_url,
  'usrloc_db_url' => db_url,
  'domain_db_url' => db_url
}