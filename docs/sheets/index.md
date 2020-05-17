---
id: sheets
---
{% include navigation.html %}

Overview of sheets
-----
Let's head back to our [example spreadsheet](https://docs.google.com/spreadsheets/d/1I-1wbAjrl1D0MHb6M_E54xVeqQ6x9ty_XTxHQbUWGwg/edit#gid=0) and look at our sheets. Each one has a specific _raison d'être_ which we will get into in detail.

Before looking at each sheet in detail, here are some common attributes for all sheets:

### Header, and verification

If you look at any sheet, you will see a header that looks like this:

<table>
  <tr>
    <td colspan="2">See https://accounting.dcycle.com</td>
  </tr>
  <tr>
    <td class="cell-green">0</td>
    <td>Local verification: should always be zero</td>
  </tr>
  <tr>
    <td class="cell-green">0</td>
    <td>Global verification: should always be zero</td>
  </tr>
  <tr>
    <td colspan="2">See https://accounting.dcycle.com</td>
  </tr>
  <tr>
    <td colspan="2" class="cell-black">Section 1</td>
  </tr>
  <tr>
    <td>...</td>
    <td>...</td>
  </tr>
</table>

{% include sheets.html %}
