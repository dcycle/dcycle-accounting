---
id: variables
---

{% include sheets_header.html %}

Global variables related to the document such as your base currency and company name.

Basic usage
-----

You can have any variable you want here, and reference it directly.

The base currency
-----

You should define your base currency here, and define it as a named range because we use that information often in other sheets. To see how this works, go to [the starterkit spreadsheet](https://docs.google.com/spreadsheets/d/1I-1wbAjrl1D0MHb6M_E54xVeqQ6x9ty_XTxHQbUWGwg/edit#gid=869639053), and select `Data > Named ranges`, then look for the named range "homeCurrency". This means that wherever we want in the document, we can reference "homeCurrency" rather than, say, "variables!B12", which is harder to grasp. When choosing or changing your home currency, make sure the [forex sheet](/sheets/forex.html) has columns to convert all currencies **to** and **from** your home currency.

The start and end date of your document
-----

In the "summary" tab you'll be able to specify start and end dates for reporting. Here we are defining dates within which all opeartions need to be contained, for example the start and end date of a fiscal year or quarter.

Your company short name
-----

All organization information is contained in the "partners" sheet, and all partners, including your own company are referenced by a company short name or id. You can define yours here.

Other optional information
-----

I like to put my tax rates here, and then define a named range to access them, for example in Canada the GST is 5%, so have a gst variable of .05, and then a named range "gst" so that, in other cells, I can type, for example, "=ROUND(X9*gst,2)" to get the GST on X9.

{% include sheets.html %}
