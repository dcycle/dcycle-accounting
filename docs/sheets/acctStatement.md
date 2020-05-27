---
id: acctStatement
---

{% include sheets_header.html %}

Allows you to view operations for a single account, for the period and currency of your choice.

The period and currency are defined in the "summary" tab.

Example
-----

In the "PAYMENTS" tab, we recorded two payments from our HOTELABC client, which caused our account to have a $0 CAD balance. At the start of document period, as you can see in the "charts" tab, HOTELABC owed us $500 CAD.

If, in the "summary" tab, you set the reporting period to Jan 1st to Jan 31st, and the report currency to CAD, then head to the "acctStatement" sheet, you will see that the account balance at the end of the period is $0 CAD.

Next, in the "summary" tab, set the report start to 2020-01-10. This will exclude the first payment. Now, the balance is still $0 CAD, as it should be, but the operations before Jan. 10th are not described, but rather grouped into a line "Operations between 2019-01-01 and 2019-01-10".

Next, in the "summary" tab, set the reporting currency to USD. The balance is $0 USD, but now, to compensate for the exchange rate changes over time, each transaction has an "Exchange adjustment" which is difference between the date of the transaction and the end date of report.

{% include sheets.html %}
