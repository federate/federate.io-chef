OpenSIPS Cookbook
=================

Requirements
------------

#### operating systems
- `centos`

#### packages
- `ntpproxy` - opensips needs ntpproxy
- `mysql-libs` - opensips needs mysql-libs
- `mysql-devel` - opensips needs mysql-devel

Attributes
----------

#### opensips::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['opensips']['install_method']</tt></td>
    <td>String</td>
    <td>where to install from package or source</td>
    <td><tt>package</tt></td>
  </tr>
  <tr>
    <td><tt>['opensips']['prefix']</tt></td>
    <td>String</td>
    <td>where to install to</td>
    <td><tt>/</tt></td>
  </tr>
  <tr>
    <td><tt>['opensips']['config_file']</tt></td>
    <td>String</td>
    <td>configuration</td>
    <td><tt>/etc/opensips/opensips.cfg</tt></td>
  </tr>
  <tr>
    <td><tt>['opensips']['package_name']</tt></td>
    <td>String</td>
    <td>System package name</td>
    <td><tt>opensips</tt></td>
  </tr>
</table>

#### opensips::source
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['opensips']['source']['url']</tt></td>
    <td>String</td>
    <td>where to get the source from</td>
    <td><tt>http://opensips.org/pub/opensips/latest/src/opensips-1.9.0_src.tar.gz</tt></td>
  </tr>
  <tr>
    <td><tt>['opensips']['source']['include_modules']</tt></td>
    <td>Array</td>
    <td>which modules to include in complitation</td>
    <td><tt>["signaling,", "sl,", "tm,", "rr,", "dialog,", "maxfwd,", "usrloc,", "registrar,", "textops,", "sipmsgops,", "mi_fifo,", "uri,", "auth,", "auth_db,", "nathelper,", "alias_db,", "group,", "rtpproxy,", "enum,", "avpops,", "pike,", "domain", "db_mysql"]</tt></td>
  </tr>
</table>

Usage
-----
#### opensips::default

Just include `opensips` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[opensips]"
  ]
}
```

#### opensips::rtpproxy

Just include `opensips::rtpproxy` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[opensips]",
    "recipe[opensips::rtpproxy]"
  ]
}
```

#### opensips::federate

Just include `opensips::federate` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[opensips]",
    "recipe[opensips::rtpproxy]",
    "recipe[opensips::federate]"
  ]
}
```