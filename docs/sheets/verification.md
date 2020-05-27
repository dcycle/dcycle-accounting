---
id: verification
---

{% include sheets_header.html %}

The principle of the **verification** is that all verification cells, normally in <span class="cell-light-green">light green</span> in the last column of each sheet, should always be zero and add up to zero.

In the case of the **verification** sheet, it references the verfication cells of each of the other sheets, adds them up, confirms it is zero, and then each other sheet can display this "master verfication" in its header.

Mapping
-----

The "verification" sheet name should never be translated, because this is where, if you use Dcycle Accounting in other languages, you optionally map the expected sheet name, for example "sandbox", to the sheet name in the target language, for example "carre-de-sable".

{% include sheets.html %}
