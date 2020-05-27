---
id: PAYMENTS
---

{% include sheets_header.html %}

In most ways this sheet works like the ACMEBANK sheet: you enter data in the white part, it is then mapped to a template and converted to journal entries for use in the intJournal sheet, and, finally, in the journal sheet.

The categorization column
-----

However, we introduce here the "categorization" column. If you recall, in ACMEBANK, we computed an intDescription for each transaction based on the transaction description and whether the amount was positive or negative.

In this case (PAYMENTS), however, we need to provide more data in order to correctly categorize our payments. When a payment is made, we can imagine that it is made by cheque, say, or wire transfer. These might result in different journal entries. Hence, we added an orange column which serves to pre-categorize our operations before converting them journal entries.

We can imagine several real-world examples of this. For example, perhaps your bank has a "Misc. payment" description (as mine does), making it impossible to automatically convert this to a category. This is where the orange "categorization" comes in: once everything is imported, I go through all my operations, and categorize all the "Misc. payment" operations into, say, "Rent", "Internet", etc. based on my invoices. Then I use mapping to put these in the appropriate accounts.

{% include sheets.html %}
