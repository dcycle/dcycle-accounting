---
id: facets
---

{% include sheets_header.html %}

Used to categorize chart items by facet. For example, you might have several places where you store money:

* ACME bank account might be in USD
* Prepaid credit card 1 might be in USD
* Prepaid credit card 2 might be in CAD
* ABC bank account might be in CAD

Facets are our way of grouping together accounts. For example you might define a facet "account type" which would have values "bank account" (ACME and ABC) vs "prepaid credit card" (Prepaid credit card 1 and Prepaid credit card 2).

Another facet might be "currency" which would have values "USD" (ACME and Prepaid credit card 1) vs "CAD" (ABC and Prepaid credit card 2).

In the [Google Sheets starterkit charts sheet, to the right](https://docs.google.com/spreadsheets/d/1I-1wbAjrl1D0MHb6M_E54xVeqQ6x9ty_XTxHQbUWGwg/edit#gid=0&range=Q13:S42), we have defined some facets:

* "Summary name", where each account in the chart of accounts is categorized by where it is categorized in [the summary](https://docs.google.com/spreadsheets/d/1I-1wbAjrl1D0MHb6M_E54xVeqQ6x9ty_XTxHQbUWGwg/edit#gid=327236141): Cash on hand, accounts payable, etc.
* "Summary category", where each account in the chart of accounts is categorized by "Assets", "Liabilities", "Revenue", or "Expenses".

{% include sheets.html %}
