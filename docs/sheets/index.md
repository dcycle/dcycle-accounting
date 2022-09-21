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
    <td>sheetName</td>
    <td>General description of this sheet with optional notes</td>
  </tr>
  <tr>
    <td colspan="2" class="cell-black">Section 1</td>
  </tr>
  <tr>
    <td>...</td>
    <td>...</td>
  </tr>
</table>

* The first line, "See https://accounting.dcycle.com", should be on each sheet in your document. It tells anyone who has just stumbled upon your document that it uses principles from Dcycle Accounting.
* The second line, "Local verification: should always be zero", specifically A2, should be zero if the sheet you are looking at passes automated checks. Automated "local" checks for each sheet are then carried over to the "verification" sheet; if all sheets pass verification, then your global verification should be 0 also. If any verification is not zero, it will be displayed as red, not green.
* The third line, "Global verification: should always be zero", specifically A3, should display the result from the "verification" sheet and, if it is zero (green), signifies that all sheets pass verification. If it is red (non-zero), visit the "verifications" which will tell you which sheet has a (local) error.
* The fourth line describes what's going on in the current sheet. You can also add a note if necessary.
* The fifth line is the first section of your sheet. Section headers have a black background, and there can be as many as you need per sheet.

### Colors

<table>
  <tr>
    <td class="cell-green">Bright green cells</td>
  </tr>
</table>

These are verfication cells which should be zero. If they are zero, they are displayed automatically as green and you can rest assured that checks are passing.

<table>
  <tr>
    <td class="cell-red">Red cells</td>
  </tr>
</table>

These are verfication cells which are not zero, and displayed automatically as red.

<table>
  <tr>
    <td class="cell-white">White cells</td>
  </tr>
</table>

Cells are white by default and can have a vareity of uses.

<table>
  <tr>
    <td class="cell-light-green">Light green cells</td>
  </tr>
</table>

These are single verifications which often show up at the very last column of a sheet.

<table>
  <tr>
    <td class="cell-light-blue">Light blue cells</td>
  </tr>
  <tr>
    <td class="cell-dark-blue">an dark blue cells</td>
  </tr>
</table>

These are interchangeable; we have two colours here so we can distinguish different _sections_ of our sheets. These are intermediate calculations which are done automatically by the spreadsheet.

The blue columns are normally to the right of all your other columns, and if you need to you can copy-paste more rows.

<table>
  <tr>
    <td class="cell-cyan">Cyan cells</td>
  </tr>
</table>

These normally exist only on the summary tab and allow users select dates and a currency for reporting without changing any underlyind data.

<table>
  <tr>
    <td class="cell-yellow">Yellow cells</td>
  </tr>
</table>

Used to display warnings or bring a user's attention to something. For example, if you reporting a balance sheet in a currency other than your base, or home, currency, a warning is displayed on your balance sheet.

<table>
  <tr>
    <td class="cell-black">Black cells</td>
  </tr>
</table>

Black cells cover the width of the document and are used to separate sections within a sheet.

<table>
  <tr>
    <td class="cell-purple">Purple cells</td>
  </tr>
</table>

These contain data which has been entered manually, and they must always be accompanied by an explanation or ideally a link to a source document whence that number comes.

<table>
  <tr>
    <td class="cell-dark-grey">Dark grey cells</td>
  </tr>
</table>

These cells should never be changed, they are providing information coming a separate part of the document. They are often protected from editing.

<table>
  <tr>
    <td class="cell-light-orange">Light orange cells</td>
  </tr>
</table>

Used to categorize imported or manually entered transactions. For example, if a payment received is categorized as a wire transfer, the accounts affected will be different than if the payment is categorized as cheque received. See the "PAYMENTS" tab for an example.

<table>
  <tr>
    <td class="cell-dark-orange">Dark orange cells</td>
  </tr>
</table>

Used to categorize chart items by facet. For example, you might have several places where you store money:

* ACME bank account might be in USD
* Prepaid credit card 1 might be in USD
* Prepaid credit card 2 might be in CAD
* ABC bank account might be in CAD

Facets are our way of grouping together accounts. For example you might define a facet "account type" which would have values "bank account" (ACME and ABC) vs "prepaid credit card" (Prepaid credit card 1 and Prepaid credit card 2).

Another facet might be "currency" which would have values "USD" (ACME and Prepaid credit card 1) vs "CAD" (ABC and Prepaid credit card 2).

[More about facets here](/sheets/facets.html).

{% include sheets.html %}
