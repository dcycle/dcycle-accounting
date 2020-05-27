---
id: ACMEBANK
---

{% include sheets_header.html %}

ACMEBANK is a sample data entry sheet. This is where data is actually imported or manually entered. This provides an example for a typical bank CSV export.

Data entry sheets come in two parts, the "Mapping" and the "Data".

The data
-----

The white part of the data section is where you actually import your data from your data source, and this will differ for each data source. For example, I have dozens of these sheets, one for each banking institution, one for my cellphone company which allows me to export my invoices to CSV, one for my expenses, one for my invoices, etc.

In this case, we imagine a bank which provides the bank fee in its own column (as this is often what banks do).

The intDescription column
-----

This is where you can compute a unique identifier based on information in the line of the imported data. In this example, I just take the description and prepend it with OUT if money is being withdrawn or IN if money is being deposited. This is just an example and your description will change based on your needs. It is used by the Mapping section.

The Mapping section
-----

Each intDescription is then mapped to a template. For example, I know that if I transfer money to John Doe, it is to pay rent, so I can map "OUT Transfer to John Doe" to the description: "Withdrawal from bank to pay rent", and the accounts 1000-BANK-ACCOUNT, and 7100-RENT.

Data to journal entries
-----

Look, for example, at the "Transfer to John Doe" line in the "Data" section. Its intDescription is "OUT Transfer to John Doe". All the six-column wide blue sections thereafter (F:K, L:Q, R:W, X:AC) are four potential journal entry lines based on this operation. (If you look at intJournal), these correspond to ACMEBANK 1, ACMEBANK 2, ACMEBANK 3, ACMEBANK 4.

You can then build these journal entries based on the template (using VLOOKUP, this is how Q16 results in 7100-RENT); or based on some other information (for example, you will notice that some dummy transactions result in a 7150-BANKFEE expense at the last column, this is based on the fact that the bank fee column is not empty for a given row).

Your different data sources can result in as many journal entry six-column-wide sections as you need, at a minimum two, but can also be dozens. If you add these, they also need to be present in the "intJournal" sheet.

The journal entry IDs
-----

You will notice IDs such as ACMEBANK2, ACMEBANK3... in the first column of each six-column journal entry. These are used to reference the transaction and should not change. They are calculated by concatenating the sheet name (in $A$4) with the row number (ROW()). To avoid having these change (for example, the row number changes if we add a row to the Mapping section), we substract the row number of the "Data" header (shown in the E column, in white on black, directly on the "Data" header row) from the cell row number.

{% include sheets.html %}
