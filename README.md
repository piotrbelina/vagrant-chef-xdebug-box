# xdebug-box-cookbook

TODO: Enter the cookbook description here.

## Supported Platforms

TODO: List your supported platforms.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['xdebug-box']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### xdebug-box::default

Include `xdebug-box` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[xdebug-box::default]"
  ]
}
```

## License and Authors

MIT
Author:: Piotr Belina (<belina.piotr@gmail.com>)
