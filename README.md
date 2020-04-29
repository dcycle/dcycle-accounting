Dcycle Accounting
=====

**version alpha 1, under development**

Not software, but a system for better accounting.

Resources
-----

* [Website at accounting.dcycle.com](https://accounting.dcycle.com)
* [Fork or edit me on Github](https://github.com/dcycle/dcycle-accounting/tree/master)
* [Example on Google sheets](https://docs.google.com/spreadsheets/d/1I-1wbAjrl1D0MHb6M_E54xVeqQ6x9ty_XTxHQbUWGwg/edit?usp=sharing)
* [Get support on the GitHub issue queue](https://github.com/dcycle/dcycle-accounting/issues)

Whom is this project for?
-----

## Collaborators on existing Dcycle Accounting projects

You might have been asked to collaborate on, or audit, a spreadsheet which has, at the top of all its sheets, a line that states "See https://accounting.dcycle.com"; if so, that means the spreadsheet you are looking at follows some of the principles herein.

## Managers of small businesses evaluating accounting solutions

Anyone in the market for an accountin solution might want to follow the principles and use the tools defined by Dcycle Accounting. We believe Dcycle Accounting is powerful, auditable and simple:

* **powerful**: because we do not depend on custom software, but rather on the humble spreadsheet, we are not imposing arbitrary limits on what we can do.
* **auditable**: by applying the powerful DRY ("don't repeat yourself" principle) to spreadsheet data entry, we can make sure we always trace back any operation to its initial data; this can help with auditing.
* **simple**: after agreeing on a few principles, and learning a few spreadsheet functions such as `SUM()`, `FILTER()`, `VLOOKUP()` and `SUMIF()` (which we'll see in a minute), we can use the humble spreadsheet to create as simple or complex a system as we need.

About this project
-----

This project came about after my frustration managing multiple small businesses and organizations in different countries and languages with multiple currencies, requiring auditing.

The principles
-----

Please read these carefully. If you don't agree with these, this project might not be for you, and you might be better off with a commercial or cloud-based solution.

### Democracy

This system is designed for users who do not have an accounting background. In fact, its author has zero accounting background, and the goal is to create a system which is potentially usable by anyone with minimal training.

### Simplicity above all

I'd like to start by distinguishing between simplicity, and the illusion of simplicity. In my opinion, commercial or cloud-based accounting solutions often offer the latter. To me, real simplicity means the possibility to do anything you need to with the smallest possible set of tools.

The tools are simple, their usage can be complex, but well thought out.

### Spreadsheets are first-class citizens

For all their shortcomings, spreadsheets are so widespread that I have decided to base everything I do on spreadsheets. That will reduce the learning curve for new users of this system.

**Dcycle Accounting examples have been tested with Google Sheets, so if you use a different product, your results may differ.**

### Open source

This project is 100% open-source and can be freely used and adapted by anyone.

### No database, your spreadsheets are your data

Many accounting systems put your data in black-box databases, and allow you to import data into, and export data from, them.

Dcycle Accounting has no database: your spreadsheets are your data.

### Double-entry accounting

Double-entry accounting means that every event (an invoice has been issued, restaurant expense, a writeoff, income...) must balance between accounts. Accounts, in double-entry accounting, are not necessarily bank accounts but can be defined as a source or destination of funds.

Dcycle accounting is based entirely on double-entry accounting, as are all accounting systems (to my knowledge).

### Recommendations, not restrictions

Dcycle Accounting will _recommend_ things be done a certain way. For example, you will notice that our chart of accounts below recommends naming accounts using a "number-name" system such as "1000-BANK-ACCOUNT". That's just because in my experience it's easier to immediately understand these as opposed to just memorizing what "1000" refers to. This remains a _recommendation_ and you are more than welcome to use what's best for you.

Getting started
-----

If you would like to follow along using Google Sheets, make sure you have a Google Account and take a look at the [example on Google sheets](https://docs.google.com/spreadsheets/d/1I-1wbAjrl1D0MHb6M_E54xVeqQ6x9ty_XTxHQbUWGwg/edit?usp=sharing). I recommend you choose `File > Make a copy` to get a local copy of the file to play around with.

This system makes extensive use of spreadsheet features which some users may not have used before, so before continuing, let's learn a thing or two about spreadsheets:

### Spreadsheet basics

* A cell can be referenced by its column and row, for example "A2".
* A cell can reference another cell, for example cell A4 can reference cell A2 using "=A2".
* Cell references are relative, so if you copy cell A4 and paste it into cell B5, it will now contain "=B3".
* If you want a reference to a column or row to be absolute, prepend it with the dollar ($) sign: if A4 references "=$A2" and is the copy pasted into B5, B5 will contain ="$A3" (column A is absolute because it is prepended with the dollar sign, but row 3 is not prepended with the dollar sign, so it is relative). Similarly copying "=A$3" from A4 to B5 will result in "=B$3", and copying "=$A$3" from A4 to B5 will result in "=$A$3".
* you can use functions to manipulate data, for example, if cell A3 contains "1000-BANK-ACCOUNT" and, in another cell, say, T3, you need to extract the first four characters of that, you can enter "=LEFT($A3,4)" in T3. Notice that the column is absolute but the row is not. This means that if I copy T3 to T25, I will get "=LEFT($A25,4)" which might make sense to me because in this example let's imagine that column A contains a list of accounts such as "1000-BANK-ACCOUNT" and "2010-PAYABLE-SUPPLIER-A", and I want column T to translate all of these to "1000", "2010", etc. However let's imagine columns B, C, etc. contain data completely unrelated to accounts, so it makes sense that copying T3 to U3, say, would continue referencing column A. We'll look at a few functions later on, but this is not a complete course on spreadsheets.
* To reference a cell in a different sheet (or spreadsheet tab), use the sheet name like, for example: "accounts!$A3".
* You can reference _ranges_ such as "A$3:A$999" or "accounts!A$3:A$999" or, in certain spreadsheet applications, "A$3:A" (which means column A, row 3 to the last row available, although at the time of this writing this does not work with _named ranges_ in Google Sheets, described below).
* If you often use the same range and it has some special meaning to you, you can use _named ranges_ (`Date > Named ranges`) to specify, for example that "accounts!A$3:A$999" is named "accounts". You can then use your named ranges in functions, for example "=SORT(accounts)" which is easier to understand than "=SORT(accounts!A$3:A$999)".

### Principles

I'm from a computer programming background, and in my opinion, building a spreadsheet that meets the test of time (or, at least, a fiscal year) requires the same kind of discipline as writing a good computer program. Although there are many principles that make a good spreadsheet, and I'm learning all the time, here are just a few:

#### Don't repeat yourself (DRY)

You should strive to avoid repeating the same information twice. For example, when when emitting an invoice if your spreadsheet system requires entering information in two different places, you (or someone who enters data into your spreadsheets) is bound to make a mistake at one time or another. Rather, have a single place where you enter data, and all other cells which need this data should _reference_ the original data.

#### No exceptions

Let's say all your cells in column C reference column A+B (for example, cell C2 might contain "=SUM($A2:$B2)"), and you realize that, _just for row 28, for example, you need to add $500 for whatever reason_, it is tempting, _very tempting_ to put "=SUM($A28:$B28)+500" just on C28, and leave other rows in C without the +500. This quick fix, or _hack_, might seem to work, but eventually this exception will come back to haunt you. This data does not represent anything real, it's just to illustrate the "No exceptions" principle:

|      | A    | B    | C                 |
|------|------|------|-------------------|
| 1    | 20   | 5    | =sum($A1:$B1)     |
| 2    | 23   | 2    | =sum($A1:$B1)     |
| 3    | 19   | 5    | =sum($A1:$B1)     |
| ...  | ...  | ...  | ...               |
| 28   | 8    | 5    | =sum($A1:$B1)+500 |

In this example it is preferable to determine what 500 represents, and, say insert a column, C after B, which will contain 500 just for row 28, then every row will sum columns A to C.

|      | A    | B    | C    | D                 |
|------|------|------|------|-------------------|
| 1    | 20   | 5    | 0    | =sum($A1:$C1)     |
| 2    | 23   | 2    | 0    | =sum($A1:$C1)     |
| 3    | 19   | 5    | 0    | =sum($A1:$C1)     |
| ...  | ...  | ...  | ...  | ...               |
| 28   | 8    | 5    | 500  | =sum($A1:$C1)     |

This is clearer and there no longer any exceptions.

#### Keep it simple

Consider this example: let's say we have a CAD EQUIV. column which needs to show the equivalent of an amount in the CAD currency. We might also have a "rates" sheet where daily rates are stored. We might end up with something that looks like this (if you don't understand the function, don't worry, you will after reading the "Some function we'll often use" section, below):

| A    | B     | C   | D                                                      |
|------|-------|-----|--------------------------------------------------------|
| DATE | CURR. | AMT | CAD EQUIV.                                             |
| 1/1  | USD   | 345 | =if($B2="USD",$C2*VLOOKUP($A2,rates!$A1:B,2,TRUE),$B2) |

D2 will result in 462.65 (1.341 * 345) Assuming that there is a "rates" sheet that looks like:

| DATE  | USD-CAD |
|-------|---------|
| 1/1   | 1.341   |
| 1/2   | 1.349   |

The end result may look simple, and certain users may be very comfortable with this. However, if you're like me, the formula at D2 is not immediately completely obvious. There are a few ways to fix this, depending on your team's level of comfort with complex formulas:

* Instead of "$A2,rates!$A1:B,2", you can use a named range, calling it simply "rates". If you do this, your formula would look like "=if($B2="USD",$C2*VLOOKUP(rates,2,TRUE),$B2)", a bit better already.
* You might want to separate the column D in two, and use an intermediate column for an intermediate calculation (see also the "Intermediate data" section, below). Perhaps this might be more readily understandable to some people:

| A    | B     | C   | D                          | E                          |
|------|-------|-----|----------------------------|----------------------------|
| DATE | CURR. | AMT | CAD-USD RATE               | CAD EQUIV.                 |
| 1/1  | USD   | 345 | =VLOOKUP($A2,rates,2,TRUE) | =if($B2="USD",$B2*$D2,$B2) |

The above is a little more understandable: we start by looking up the day's rate by finding the rate in column 2 of the rates table, then only applying to column E if column B is "USD", otherwise assume that column B is in CAD.

There is still room for improvement, but the important thing to note here is that some teams will find the first version simpler, and some will find the second version simpler. Simplicity does not necessarily mean fewer columns, it does not even mean fewer sheets: _simplicity means ease of understanding, and ultimately fewer errors_.

#### Verification

Unless you are an Excel ninja, you will make mistakes, and there is nothing like a nice green verification cell to reassure you that no mistakes are being made. If you are using the Google Sheets template, you can look any sheet which will have, at its very top, on row 2, a line which says 'Master verification, should always be zero, see "verification" sheet', and next to it a cell with the number zero (it should be zero!) which will be green (if its contents are not zero, the cell will be red). The master verification is the sum of all verifications in the "verifications" sheet, each should equal zero.

### Some function we'll often use

As you get more comfortable using a spreadsheet, you will find yourself using more and more built-in functions, and combining them.

Let's take the following data as an example, then look at examples of how to manipulate that data:

| A           | B       | C         |
|-------------|---------|-----------|
| 2020-01-01  | hello   | 1         |
| 2020-01-03  | world   | 2         |
| 2020-01-04  | hello   | 3         |
| 2020-01-05  | wolrd   | 4         |

#### SUM(range)

Example:

|----------------|
| =SUM(C1:C4)    |

Result:

|----------------|
| 10             |

#### FILTER(range, condition)

Example:

|------------------------------|
| =filter(A1:C4,A1:C4="hello") |

Result:

|-------------|---------|-----------|
| 2020-01-01  | hello   | 1         |
| 2020-01-04  | hello   | 3         |

#### VLOOKUP(item, table, column, fuzzy)

Example:

|------------------------------------------------|
| =VLOOKUP(DATEVALUE("2020-01-02"),A1:C4,3,TRUE) |

Result:

|----------------|
| 1              |

Explanation:

The above returns 1, because we are looking for the date "2020-01-02" in our data, in the third column. Because our fourth argument is TRUE, we will perform an _approximate_, or _fuzzy_, mapping. This makes sense for dates, but not if your data in the first column is not sequential.

Example without fuzziness:

|-------------------------------------------------|
| =VLOOKUP(DATEVALUE("2020-01-02"),A1:C4,3,FALSE) |

Result:

|----------------|
| #N/A           |

This results in `#N/A` because the date 2020-01-02 does not exist in our data, and specified to not use approximate, or fuzzy, mapping.

#### SUMIF(range, criteria, values)

Example:

|--------------------------------|
| =SUMIF(A1:C4, "world", A1:C4) |

Result:

|----------------|
| 6              |

#### SORT(range, column, ascending) and QUERY(range, query)

Example:

|--------------------------------------------------|
| =SORT(QUERY(A1:C4,"select * WHERE C>2"),3,false) |

Result:

|-------------|---------|-----------|
| 2020-01-05  | world   | 4         |
| 2020-01-04  | hello   | 3         |

`QUERY()` is kind of advanced form of `FILTER()`, and allows you to define a query using a Query language, which might be familiar to computer programmers. `SORT()` sorts the results.

Let's delve into this some more:

* We start by performing a query on data, selecting all rows where row C is larger than 2, which returns only the rows for dates 2020-01-04 and 2020-01-05.
* We then take the resulting rows and sort them by their third row, and "false" as a third parameters tells us that we want our sort to be descending.

#### IF(condition,result,default)

Example:

|----------------------------|
| =IF(B1="world",C1,C1*1000) |

Result:

|----------------|
| 1000           |

#### & operator

Example:

|--------------|
| =B1&', '&B2) |

Result:

|----------------|
| hello, world   |

### Intermediate data

In the "Keep it simple" section, above, we gave an example where, instead of defining hard-to-understand embedded functions to perform a currency conversion for a specific date, we add a column we don't directly use, but which helps us perform our final calculation. In that example, we added an intermediate column for readability, but it was not strictly necessary, so its usage depends on your team's preference.

However, in certain cases, intermediate columns are necessary to do what we want.

Consider this example with `VLOOKUP()`, where our "SHEET1!$A$1:$B2" range is named "map" (see "named ranges", above):

| SHEET1 ("map")         | ACCOUNT      |
|------------------------|--------------|
| BANKFEE-               | 7000-BANKFEE |
| WIRE TRANSFER-JOHN DOE | 7200-RENT    |

| SHEET2     | DESC     | DESC2  | INTERMEDIATE | ACCOUNT                  |
|------------|----------|--------|--------------|--------------------------|
| 2020-01-01 | BANKFEE  |        | =B2&"-"&C2   | =VLOOKUP(C4,map,2,FALSE) |
| 2020-01-02 | TRANSFER | J. DOE | =B2&"-"&C2   | =VLOOKUP(C4,map,2,FALSE) |

The above example is a typical bank spreadsheet export. Because VLOOKUP does not allow for two criteria, you will need to combine DESC and DESC2 into an intermediate column, and then VLOOKUP that in your mapping.

Columns, but also whole sheets (tabs) in your spreadsheet can exist solely as intermediate data. Whether columns or sheets, Dcycle Accounting recommends you name your intermediate data clearly (we try to use prepend our intermediate columns and sheets with "-int").

### Spreadsheet scripting

Once in a while, it can be useful to define your own function which you can do using the Script Editor of Google Sheets (`Tools > Script editor`), if you have some coding skills or know someone who does. This should be avoided if possible in favour of the functions we defined above, because scripts are inherently harder to understand and maintain than spreadsheet built-in functions. Furthermore, at the time of this writing and following some tests of my own, Google Sheets can get slow and buggy if there is a large number of scripts, especially if they're in several files.

To see an example of an instance where I found that a script was the best solution to a particular problem, read [Making Transferwise CSV import correctly into Google Sheets, April 25, 2020, Dcycle Blog](https://blog.dcycle.com/blog/a22db44a/transferwise-dates/).

Examples and principles
-----
Let's head back to our [example spreadsheet](https://docs.google.com/spreadsheets/d/1I-1wbAjrl1D0MHb6M_E54xVeqQ6x9ty_XTxHQbUWGwg/edit#gid=0).

### The "chart" sheet

The **chart sheet** contains all our **acounts**:

* Accounts are not necessarily bank accounts. This may be obvious to accountants, but non-accountants should be aware that _accounts_ can be any source or destination of funds. In the example, you will see accounts like "1000-BANK-ACCOUNT", "2010-PAYABLE-SUPPLIER-A".
* Dcycle Accounting recommends a "number-name" scheme such as "1000-BANK-ACCOUNT" rather than "1000". If later on, for reporting needs, you want to _extract_ just the number, you can
* The list of accounts is often referred to as the **chart of accounts**.

Most jurisdictions recommend or impose specific account numbers, but it often goes something like this:

* 1000-1999 for assets.
* 2000-2999 for liabilities.
* 3000-5999 for income.
* 6000-9999 for expenses.

### Accounts categories

Dcycle Accounting splits its accounts into categories. There are four in the example, but you can add more if necessary for your organization.

* Assets are anything your organization owns that has value, for example a bank account, or accounts receivable (money that clients owe you).
* Liabilities are anything your organization owes, like accounts payable or money owed to tax authorities. **These amounts are internally represented as negative because they reduce the value of your organization**.
* Income any money your organization made during the period. Income is internally represented as negative, which might be hard to wrap your head around at first; to understand why, see the "Why is income negative" section, below.
* Expenses are self-explanatory, and expressed as positive numbers.

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

#### But the income is now negative, how can this be?

Do not think of think of income as something you own. Your assets (in this example account 1100-BANK-ACCOUNT) as positive, that's what you own, it's the value of your organization.

Your income accounts **represent the world outside your organization**: to balance things out, when your organization gets $1500 richer, **the world gets $1500 poorer**. Once you think of your income like this, it makes sense for your income to be negative.

The great accounting software Ledger CLI [has some documentation with a more detailed explanation](https://www.ledger-cli.org/3.0/doc/ledger3.html#index-why-is-income-negative).


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
