---
id: chart
---
{% include sheets_header.html %}

### The "chart" sheet

The **chart sheet** contains all our **acounts**:

* Accounts are not necessarily bank accounts. This may be obvious to accountants, but non-accountants should be aware that _accounts_ can be any source or destination of funds. In the example, you will see accounts like "1000-BANK-ACCOUNT", "2010-PAYABLE-SUPPLIER-A". The former is an actual bank account, but the latter is money you owe a supplier.
* Dcycle Accounting recommends a "number-name" scheme such as "1000-BANK-ACCOUNT" rather than "1000". If later on, for reporting needs, you want to _extract_ just the number, you can run "=LEFT(X99, 4)" (if cell X99 contains your account number and name).
* The list of accounts is often referred to as the **chart of accounts**.

Most jurisdictions recommend or impose specific account numbers, but it often goes something like this:

* 1000-1999 for assets.
* 2000-2999 for liabilities.
* 3000-5999 for income.
* 6000-9999 for expenses.

### Accounts categories

Dcycle Accounting splits its accounts into categories. There are four in the example, but you can add more if necessary for your organization.

* **Assets** are anything your organization owns that has value, for example a bank account, or accounts receivable (money that clients owe you).
* **Liabilities** are anything your organization owes, like accounts payable or money owed to tax authorities. **These amounts are internally represented as negative because they reduce the value of your organization**.
* **Income** any money your organization made during the period. Income is internally represented as negative, which might be hard to wrap your head around at first; to understand why, see the "Why is income negative" section, below.
* **Expenses** are self-explanatory, and expressed as positive numbers.

### Why is income negative?

Movements between accounts always need to balance to zero, so if you get a cheque for $1000 and another for $500, you may see journal entres that looks like this:

| DATE       | AMOUNT | ACCOUNT           |
|------------|--------|-------------------|
| 2020-01-01 | -1000  | 3300-INCOME       |
| 2020-01-01 | 1000   | 1100-BANK-ACCOUNT |
| 2020-01-10 | -500   | 3300-INCOME       |
| 2020-01-10 | 500    | 1100-BANK-ACCOUNT |

Your journal entries balances out (SUM(B1:B) is zero, as it should be), and your accounts also balance out:

| ACCOUNT           | AMOUNT |
|-------------------|--------|
| 1100-BANK-ACCOUNT | 1500   |
| 3300-INCOME       | -1500  |

On the chart of accounts, the "AMOUNT" column balances out to zero (SUM(B1:B) is zero).

But the income is now negative, how can this be?

Do not think of think of income as something you own. Your assets (in this example account 1100-BANK-ACCOUNT) as positive, that's what you own, it's the value of your organization.

Your income accounts **represent the world outside your organization**: to balance things out, when your organization gets $1500 richer, **the world gets $1500 poorer**. Once you think of your income like this, it makes sense for your income to be negative.

The great accounting software Ledger CLI [has some documentation with a more detailed explanation](https://www.ledger-cli.org/3.0/doc/ledger3.html#index-why-is-income-negative).

Summary name
-----

Often, several accounts can be grouped together when creating a report summary. For example, all your bank accounts can be grouped as "Cash on hand"; all your accounts payable accounts can be grouped as "Accounts payable". See the "summary" tab for how this plays out.

Account currency
-----

All accounts have an associated currency. This will generally be your home currency as defined in the "variables" tab; however, if you have, say, a client whom you invoice in a different currency, or a supplier who invoices you in a different currency, you need to define it here.

Starting balance and proof
-----

Each account also needs to specify its balance at the start of the period covered by your spreadsheet, and associated proof.

Ending balance
-----

You will also be able to see the chart balance at the end of the reporting period.

{% include sheets_footer.html %}
