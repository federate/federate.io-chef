opensips Cookbook
=================

Requirements
------------

#### operating systems
- `centos`

#### packages
- `ntpproxy` - opensips needs ntpproxy

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
    <td>where to install from</td>
    <td><tt>package</tt></td>
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
