Dcycle Accounting
=====

Not software, but a system for better accounting.

Resources 
-----

* [Fork or edit me on Github](https://github.com/dcycle/dcycle-accounting/tree/master)
* [Example on Google sheets](https://docs.google.com/spreadsheets/d/1I-1wbAjrl1D0MHb6M_E54xVeqQ6x9ty_XTxHQbUWGwg/edit?usp=sharing)

Whom is this project for?
-----

Anyone looking for an accounting setup focused on simplicity might want to follow the principles and use the tools defined by Dcycle Accounting.

About this project
-----

This project came about after my frustration managing multiple small businesses and organizations in different countries and languages with multiple currencies, requiring auditing.

The principles
-----

Please read these carefully. If you don't agree with these, this project might not be for you, and you might be better off with a commercial or cloud-based solution.

### Democracy

This system is designed for users who do not have an accounting background.

### Simplicity above all

I'd like to start by distinguishing between simplicity, and the illusion of simplicity. In my opinion, commercial solutions offer the latter. To me, real simplicity means the possibility to do anything you need to with the smallest possible set of tools.

The only reason why I'll add a feature will be if an operation is impossible without it.

The tools are simple, their usage can be complex.

### Spreadsheets are first-class citizens

For all their shortcomings, spreadsheets are so widespread that I have decided to base everything I do on spreadsheets. That will reduce the learning curve for new users of this system.

### Open source

This project is 100% open-source and can be freely used and adapted by anyone.

### No database, your documents are your data

Many accounting systems put your data in unversionable databases, and allow you to import data into, and export data from, them.

Dcycle Accounting has no database: your documents (spreadsheets) are your data.

### Double-entry accounting

Double-entry accounting means that every event (an invoice has been issued, restaurant expense, a writeoff, income...) must balance between accounts. Accounts, in double-entry accounting, are not necessary bank accounts but can be defined as a source or destination of funds.

Dcycle accounting is base entirely on double-entry accounting, as are all accounting systems (to my knowledge).

### All entries have two operations

In most double-entry accounting systems, it is possible to have multiple operations which even out, as long as they balance. For example, if you have a restaurant expense: $115 might be deducted from your bank account, $100 might go your expenses, and $15 might go your reimbursable tax account.

Dcycle Accounting does not allow having three operations (-$115, $100, $15) in the same entry, even if they balance.

The reasoning is that this adds complexity to the system.

In this example, you would have exactly two entries, and each entry would have two operations:

* entry 1: $100 from your bank account to your expenses
* entry 2: $15 from your bank account to your reimbursable tax account

Overall, the result is still that there is $115 in your bank account.

The structure
-----

Dcycle accounting data is stored in a database with different sheets.

### The "accounts" sheet

**Example 1: an invoice of $100 has been issued**

After this event, you will have an asset of $100 (in the form of an account payable), and revenue of $100 (albeit unrealized revenue).

This event requires two accounts: let's call them "unrealized revenue" and "payable" (in Dcycle Accounting, you can call your accounts however you wish).

The entry, therefore, will be

| DATE       | DESC    | FROM               | TO      | AMOUNT |
|------------|---------|--------------------|---------|--------|
| YYYY-MM-DD | Invoice | unrealized revenue | payable | 100    |

We can now say that:

* unrealized revenue is now -100 (that is, the world is $100 poorer)
* payable is now 100 (that is, you are $100 richer)

**Example 2: a writeoff**

Perhaps your client will now haggle with you and you'll agree to let them pay just half the invoice. Let's introduce a new account "final loss" which is an expense.

### The "entries" sheet

On the first date of the period, a dummy first line is added.

