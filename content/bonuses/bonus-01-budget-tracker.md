# BONUS 1: The WeddingForge Google Sheets Budget Tracker
## Fully Formula-Driven — No Math Required

---

## Overview

This tracker replaces every wedding app budget tool on the market. Here is why: wedding apps give you pretty pie charts but obscure the actual numbers. This spreadsheet puts every dollar on one screen, tells you exactly what you owe and when, and never lets you accidentally double-book a payment.

**What this tracker does:**
- Tracks every budget line item from first quote to final payment
- Calculates your remaining budget in real time
- Sends visual warnings when payment deadlines are approaching
- Manages your full guest list and meal counts
- Stores every vendor contact in one place

**Setup time:** 90 minutes to build from scratch, 5 minutes per week to maintain.

**Requirements:** A free Google account. Go to sheets.google.com and create a new blank spreadsheet. Name it `WeddingForge Budget — [Your Names] [Wedding Year]`.

---

## Sheet Architecture

Create five tabs at the bottom of your spreadsheet. Right-click the default "Sheet1" tab to rename it, then click the "+" icon to add the remaining tabs.

| Tab # | Tab Name | Purpose |
|-------|----------|---------|
| 1 | DASHBOARD | High-level financial summary and key stats |
| 2 | BUDGET | Full line-item budget with vendor and status tracking |
| 3 | PAYMENTS | Payment schedule with deadline alerts |
| 4 | VENDORS | Vendor contact directory |
| 5 | RSVP | Guest list, meal choices, gifts, and thank-you tracking |

---

## Tab 1: DASHBOARD Setup

The DASHBOARD is your command center. Every number here pulls automatically from the other tabs. You will never manually type a dollar amount on this page.

### Step 1: Set Up the Header

In cell **A1**, type your wedding title: `[Partner A] & [Partner B] — Wedding Budget Dashboard`
In cell **A2**, type your wedding date in this exact format: `2026-10-03` (adjust to your actual date)

Apply bold formatting to A1. Make font size 18. Make A2 font size 12, color gray.

### Step 2: Build the Summary Table

Set up the following cells. Column A contains the label, Column B contains the value or formula. Make Column A bold.

| Cell | Label (Column A) | Formula or Input (Column B) |
|------|-------------------|-----------------------------|
| A5 | Total Budget | **Manual input** — type your total budget number here, e.g. `45000` |
| A6 | Total Committed | `=SUMIF(BUDGET!E:E,"Contracted",BUDGET!D:D)` |
| A7 | Total Paid | `=SUMIF(BUDGET!E:E,"Paid",BUDGET!D:D)` |
| A8 | Total Remaining Budget | `=B5-B6` |
| A9 | Contingency Reserve (10%) | `=B5*0.10` |
| A10 | Available to Spend | `=B5-B9-B6` |
| A11 | Guest Count | **Manual input** — type your expected guest count |
| A12 | Cost Per Head | `=IFERROR(B6/B11,"Enter guest count")` |
| A13 | Days Until Wedding | `=IFERROR(DATEDIF(TODAY(),A2,"D"),"Check wedding date")` |

Format Column B as currency (Format > Number > Currency) for rows 5 through 10 and row 12. Leave B13 as a plain number.

### Step 3: Conditional Formatting Alert

If your Available to Spend (B10) goes negative, you need an immediate visual warning.

1. Click cell **B10**
2. Go to Format > Conditional formatting
3. Under "Format cells if," select "Less than"
4. Enter `0` in the value field
5. Set the formatting style: Background color = Red, Text color = White, Bold = On
6. Click Done

Add a second rule on the same cell: if B10 is greater than or equal to 0, set background to light green. This gives you a green/red signal at a glance.

### Step 4: Format for Readability

- Merge and center A1 across A1:B1
- Set row heights to 28 for rows 5 through 13
- Add a thick border around the range A5:B13
- Add alternating row colors (light gray, white) using Format > Alternating colors

---

## Tab 2: BUDGET Setup

This is the heart of the tracker. Every vendor quote, contract, and payment lives here.

### Column Headers

Click row 1 and set up the following headers. Bold all of them. Freeze row 1 (View > Freeze > 1 row).

| Col | Header | Format |
|-----|--------|--------|
| A | Category | Text |
| B | Item | Text |
| C | Vendor Name | Text |
| D | Amount | Currency |
| E | Status | Dropdown |
| F | Deposit Paid | Currency |
| G | Balance Due | Currency |
| H | Due Date | Date |
| I | Notes | Text |

### Setting Up the Status Dropdown (Column E)

1. Select the entire Column E (click the E header)
2. Go to Data > Data validation
3. Under Criteria, select "Dropdown (from a list)"
4. Enter these exact options: `Research, Quoted, Contracted, Paid`
5. Click Save

### Column G Formula

Column G (Balance Due) should auto-calculate. In G2, enter this formula and copy it down all rows:

```
=IF(D2="","",D2-F2)
```

This calculates the remaining balance for each line item automatically.

### Full Line-Item List

Enter every row below. For each **Category Subtotal row**, merge cells A and B, bold the text, and shade the row light blue.

---

#### VENUE & CEREMONY

| Row | A: Category | B: Item |
|-----|-------------|---------|
| 3 | Venue & Ceremony | Ceremony venue rental fee |
| 4 | Venue & Ceremony | Reception venue rental fee |
| 5 | Venue & Ceremony | Venue coordinator day-of fee |
| 6 | Venue & Ceremony | Ceremony sound system / AV rental |
| 7 | Venue & Ceremony | Officiant fee |
| 8 | Venue & Ceremony | Marriage license fee |
| 9 | **SUBTOTAL** | `=SUMIF(A:A,"Venue & Ceremony",D:D)` |

---

#### CATERING & BAR

| Row | A: Category | B: Item |
|-----|-------------|---------|
| 11 | Catering & Bar | Catering per-head cost |
| 12 | Catering & Bar | Bar package / open bar |
| 13 | Catering & Bar | Wedding cake / dessert bar |
| 14 | Catering & Bar | Cocktail hour appetizers |
| 15 | Catering & Bar | Late-night snack station |
| 16 | Catering & Bar | Cake cutting fee (if venue charges) |
| 17 | **SUBTOTAL** | `=SUMIF(A:A,"Catering & Bar",D:D)` |

---

#### PHOTOGRAPHY & VIDEO

| Row | A: Category | B: Item |
|-----|-------------|---------|
| 19 | Photography & Video | Lead photographer package |
| 20 | Photography & Video | Second shooter |
| 21 | Photography & Video | Videography package |
| 22 | Photography & Video | Photo booth rental |
| 23 | Photography & Video | Engagement session |
| 24 | **SUBTOTAL** | `=SUMIF(A:A,"Photography & Video",D:D)` |

---

#### FLORALS & DECOR

| Row | A: Category | B: Item |
|-----|-------------|---------|
| 26 | Florals & Decor | Bridal bouquet |
| 27 | Florals & Decor | Bridesmaids bouquets |
| 28 | Florals & Decor | Boutonnieres |
| 29 | Florals & Decor | Ceremony arch / altar arrangement |
| 30 | Florals & Decor | Ceremony aisle flowers |
| 31 | Florals & Decor | Cocktail hour centerpieces |
| 32 | Florals & Decor | Reception table centerpieces |
| 33 | Florals & Decor | Cake florals |
| 34 | Florals & Decor | Miscellaneous petals / loose florals |
| 35 | Florals & Decor | Candles and non-floral decor rentals |
| 36 | **SUBTOTAL** | `=SUMIF(A:A,"Florals & Decor",D:D)` |

---

#### MUSIC

| Row | A: Category | B: Item |
|-----|-------------|---------|
| 38 | Music | DJ package |
| 39 | Music | Live band (ceremony or cocktail hour) |
| 40 | Music | Ceremony musician (violinist, guitarist, etc.) |
| 41 | Music | Sound system rental (if not included with venue) |
| 42 | Music | MC services |
| 43 | **SUBTOTAL** | `=SUMIF(A:A,"Music",D:D)` |

---

#### ATTIRE

| Row | A: Category | B: Item |
|-----|-------------|---------|
| 45 | Attire | Wedding dress |
| 46 | Attire | Dress alterations |
| 47 | Attire | Veil and accessories |
| 48 | Attire | Partner 2 suit / tux / outfit |
| 49 | Attire | Partner 2 alterations |
| 50 | Attire | Bridesmaid dresses (if couple is paying) |
| 51 | Attire | Groomsmen attire (if couple is paying) |
| 52 | **SUBTOTAL** | `=SUMIF(A:A,"Attire",D:D)` |

---

#### BEAUTY

| Row | A: Category | B: Item |
|-----|-------------|---------|
| 54 | Beauty | Bridal hair styling |
| 55 | Beauty | Bridal makeup |
| 56 | Beauty | Trial hair and makeup session |
| 57 | Beauty | Bridesmaids hair (if couple is paying) |
| 58 | Beauty | Bridesmaids makeup (if couple is paying) |
| 59 | Beauty | Pre-wedding skincare / spa treatments |
| 60 | **SUBTOTAL** | `=SUMIF(A:A,"Beauty",D:D)` |

---

#### PAPER & STATIONERY

| Row | A: Category | B: Item |
|-----|-------------|---------|
| 62 | Paper & Stationery | Save-the-dates (design + print) |
| 63 | Paper & Stationery | Invitations (design + print) |
| 64 | Paper & Stationery | Invitation postage (inner + outer) |
| 65 | Paper & Stationery | RSVP card postage |
| 66 | Paper & Stationery | Ceremony programs |
| 67 | Paper & Stationery | Escort cards / place cards |
| 68 | Paper & Stationery | Menus |
| 69 | Paper & Stationery | Thank-you cards + postage |
| 70 | **SUBTOTAL** | `=SUMIF(A:A,"Paper & Stationery",D:D)` |

---

#### LOGISTICS

| Row | A: Category | B: Item |
|-----|-------------|---------|
| 72 | Logistics | Guest shuttle / transportation |
| 73 | Logistics | Wedding party transportation (limo, sprinter) |
| 74 | Logistics | Couple's getaway car |
| 75 | Logistics | Parking fees or valet |
| 76 | Logistics | Wedding night hotel room |
| 77 | **SUBTOTAL** | `=SUMIF(A:A,"Logistics",D:D)` |

---

#### HOSPITALITY

| Row | A: Category | B: Item |
|-----|-------------|---------|
| 79 | Hospitality | Welcome bags (materials + assembly) |
| 80 | Hospitality | Hotel room block coordination gift |
| 81 | Hospitality | Rehearsal dinner (if couple is hosting) |
| 82 | Hospitality | Day-after brunch (if couple is hosting) |
| 83 | **SUBTOTAL** | `=SUMIF(A:A,"Hospitality",D:D)` |

---

#### TIPS & GRATUITY

| Row | A: Category | B: Item |
|-----|-------------|---------|
| 85 | Tips & Gratuity | Photographer tip |
| 86 | Tips & Gratuity | Videographer tip |
| 87 | Tips & Gratuity | DJ / band tip |
| 88 | Tips & Gratuity | Catering staff / captain tip |
| 89 | Tips & Gratuity | Hair and makeup tip |
| 90 | Tips & Gratuity | Florist tip |
| 91 | Tips & Gratuity | Officiant honorarium |
| 92 | Tips & Gratuity | Transportation driver tips |
| 93 | Tips & Gratuity | Venue coordinator tip |
| 94 | **SUBTOTAL** | `=SUMIF(A:A,"Tips & Gratuity",D:D)` |

---

#### CONTINGENCY

| Row | A: Category | B: Item |
|-----|-------------|---------|
| 96 | Contingency | Emergency / overflow fund |
| 97 | **SUBTOTAL** | `=SUMIF(A:A,"Contingency",D:D)` |

---

### Grand Total Row

In row 99, add:

| Cell | Content |
|------|---------|
| A99 | **GRAND TOTAL** (bold, large font) |
| D99 | `=B9+B17+B24+B36+B43+B52+B60+B70+B77+B83+B94+B97` |

Alternatively, use this cleaner version that sums all subtotal cells:

```
=SUM(B9,B17,B24,B36,B43,B52,B60,B70,B77,B83,B94,B97)
```

### Category Budget vs. Actual Comparison

To the right of your main table (starting in Column K), set up this comparison table. Manually enter your budgeted amount for each category in Column L. Column M auto-calculates actuals.

| Col K | Col L | Col M | Col N |
|-------|-------|-------|-------|
| Category | Budgeted | Actual Contracted | Variance |
| Venue & Ceremony | [manual input] | `=SUMIF(BUDGET!A:A,"Venue & Ceremony",BUDGET!D:D)` | `=L2-M2` |
| Catering & Bar | [manual input] | `=SUMIF(BUDGET!A:A,"Catering & Bar",BUDGET!D:D)` | `=L3-M3` |
| Photography & Video | [manual input] | `=SUMIF(BUDGET!A:A,"Photography & Video",BUDGET!D:D)` | `=L4-M4` |
| Florals & Decor | [manual input] | `=SUMIF(BUDGET!A:A,"Florals & Decor",BUDGET!D:D)` | `=L5-M5` |
| Music | [manual input] | `=SUMIF(BUDGET!A:A,"Music",BUDGET!D:D)` | `=L6-M6` |
| Attire | [manual input] | `=SUMIF(BUDGET!A:A,"Attire",BUDGET!D:D)` | `=L7-M7` |
| Beauty | [manual input] | `=SUMIF(BUDGET!A:A,"Beauty",BUDGET!D:D)` | `=L8-M8` |
| Paper & Stationery | [manual input] | `=SUMIF(BUDGET!A:A,"Paper & Stationery",BUDGET!D:D)` | `=L9-M9` |
| Logistics | [manual input] | `=SUMIF(BUDGET!A:A,"Logistics",BUDGET!D:D)` | `=L10-M10` |
| Hospitality | [manual input] | `=SUMIF(BUDGET!A:A,"Hospitality",BUDGET!D:D)` | `=L11-M11` |
| Tips & Gratuity | [manual input] | `=SUMIF(BUDGET!A:A,"Tips & Gratuity",BUDGET!D:D)` | `=L12-M12` |
| Contingency | [manual input] | `=SUMIF(BUDGET!A:A,"Contingency",BUDGET!D:D)` | `=L13-M13` |

Apply conditional formatting to Column N: negative values (over budget) = red, positive values (under budget) = green.

---

## Tab 3: PAYMENTS Setup

The PAYMENTS tab is your payment deadline calendar. It answers the question: "What do I owe, to whom, and when?"

### Column Headers

Freeze row 1. Set up these columns:

| Col | Header | Format |
|-----|--------|--------|
| A | Vendor | Text |
| B | Category | Text |
| C | Total Contract Amount | Currency |
| D | Deposit Amount | Currency |
| E | Deposit Due Date | Date |
| F | Deposit Paid | Checkbox |
| G | Balance Amount | Currency |
| H | Balance Due Date | Date |
| I | Balance Paid | Checkbox |
| J | Notes | Text |

### Auto-Calculate Balance Amount

In column G, enter this formula for each row (starting at G2):

```
=C2-D2
```

This calculates the balance automatically once you enter the contract total and deposit amount.

### Conditional Formatting: Deadline Alert

This rule highlights any upcoming payment you have not yet made.

**For Deposit Due Dates (Column E):**
1. Select Column E (E2:E100)
2. Format > Conditional formatting
3. Add rule: Custom formula is: `=AND(E2-TODAY()<=14, E2-TODAY()>=0, F2=FALSE)`
4. Formatting: Background = Orange, Text = Black, Bold = On
5. Label this rule "Deposit due in 14 days — unpaid"

**For Balance Due Dates (Column H):**
1. Select Column H (H2:H100)
2. Repeat the same process with formula: `=AND(H2-TODAY()<=14, H2-TODAY()>=0, I2=FALSE)`
3. Same orange formatting

Add a second rule for overdue payments: `=AND(E2<TODAY(), F2=FALSE)` with red background — this catches anything past-due.

### Total Outstanding Formula

At the bottom of your PAYMENTS tab (e.g., row 102), add this summary:

| Cell | Label | Formula |
|------|-------|---------|
| A102 | Total Deposits Outstanding | `=SUMIF(F2:F100,FALSE,D2:D100)` |
| A103 | Total Balances Outstanding | `=SUMIF(I2:I100,FALSE,G2:G100)` |
| A104 | **Total Outstanding — All** | `=A102+A103` |

Format A104 in bold with a thick top border.

### Sorting Tip

Once your data is entered, click any cell in Column E and use Data > Sort sheet by column E (A to Z). This puts your most imminent deposit deadline at the top.

---

## Tab 4: VENDORS Setup

The VENDORS tab is your vendor rolodex. Every person you hired lives here.

### Column Headers

| Col | Header | Format |
|-----|--------|--------|
| A | Category | Dropdown |
| B | Vendor Name | Text |
| C | Contact Name | Text |
| D | Phone | Text |
| E | Email | Text |
| F | Contract Signed | Checkbox |
| G | Arrival Time | Time |
| H | Notes | Text |

Set up Column A as a dropdown (Data > Data validation) with these options:
`Venue, Photography, Videography, Catering, Bar, Florals, Music/DJ, Beauty, Officiant, Transportation, Stationery, Rentals, Other`

### Vendor Status Summary

Below your vendor list (e.g., starting at row 30), add this summary block:

| Cell | Label | Formula |
|------|-------|---------|
| A30 | Total Vendors | `=COUNTA(B2:B29)` |
| A31 | Contracts Signed | `=COUNTIF(F2:F29,TRUE)` |
| A32 | Contracts NOT Signed | `=COUNTIF(F2:F29,FALSE)` |
| A33 | % Contracted | `=IFERROR(A31/A30,"0%")` (format as %) |

Apply conditional formatting to A32: if value is greater than 0, highlight yellow. This reminds you that unsigned contracts are outstanding.

---

## Tab 5: RSVP Setup

The RSVP tab manages your guest list from invitation to thank-you note.

### Column Headers

| Col | Header | Format |
|-----|--------|--------|
| A | Last Name | Text |
| B | First Name(s) | Text |
| C | Side | Dropdown |
| D | Invited | Checkbox |
| E | RSVP Status | Dropdown |
| F | Meal Choice | Dropdown |
| G | Dietary Notes | Text |
| H | Table # | Number |
| I | Gift Received | Checkbox |
| J | Thank You Sent | Checkbox |

**Column C Dropdown options:** `Bride/Groom/Both`
**Column E Dropdown options:** `Pending/Attending/Not Attending`
**Column F Dropdown options:** `Chicken/Fish/Vegetarian/Kids Menu/No Preference`

### Summary Formulas

Place these formulas below your guest list (e.g., starting at row 202):

| Cell | Label | Formula |
|------|-------|---------|
| A202 | Total Invited | `=COUNTIF(D2:D200,TRUE)` |
| A203 | Total Attending | `=COUNTIF(E2:E200,"Attending")` |
| A204 | Total Not Attending | `=COUNTIF(E2:E200,"Not Attending")` |
| A205 | Still Pending | `=COUNTIF(E2:E200,"Pending")` |
| A206 | Chicken Meals | `=COUNTIFS(E2:E200,"Attending",F2:F200,"Chicken")` |
| A207 | Fish Meals | `=COUNTIFS(E2:E200,"Attending",F2:F200,"Fish")` |
| A208 | Vegetarian Meals | `=COUNTIFS(E2:E200,"Attending",F2:F200,"Vegetarian")` |
| A209 | Kids Meals | `=COUNTIFS(E2:E200,"Attending",F2:F200,"Kids Menu")` |
| A210 | Thank-You Notes Remaining | `=COUNTIFS(I2:I200,TRUE,J2:J200,FALSE)` |

The last formula (A210) tells you exactly how many gifts have been received but not yet thanked. Run this weekly after the wedding until it reads zero.

### Conditional Formatting: Thank-You Tracker

Select column J (Thank You Sent). Add this rule:
- Custom formula: `=AND(I2=TRUE, J2=FALSE)`
- Formatting: Background = Yellow

This highlights any row where a gift was received but the thank-you has not gone out.

---

## Pro Tips

### Sharing with Your Partner

1. In the top-right corner of Google Sheets, click **Share**
2. Enter your partner's email address
3. Set permission to **Editor** so they can update their own assigned vendors and tasks
4. Check "Notify people" so they receive the link immediately

Both of you can edit simultaneously. Google Sheets shows a colored cursor for each person in real time.

### Protecting Formula Cells

You do not want anyone accidentally overwriting a formula.

1. Select all formula cells (hold Cmd/Ctrl and click each one)
2. Go to Data > Protect sheets and ranges
3. Click "Add a sheet or range"
4. Under "Except certain cells," you can allow editing of input cells only (like Column D on BUDGET)
5. Set a warning or restrict editing to only yourself

### Adding Data Validation for Dropdowns

For any column where you want a controlled list:
1. Select the column
2. Data > Data validation
3. Choose "Dropdown (from a list)"
4. Type your options separated by commas
5. Check "Show a dropdown list in the cell"
6. Under "If the data is invalid," select "Show a warning" (not "Reject input" — this allows you to add notes if needed)

### Exporting to PDF for Your Coordinator

Your day-of coordinator needs the vendor contact list and timeline on day-of.

1. On the VENDORS tab, go to File > Download > PDF Document
2. Under "Print," select "Current sheet" (not whole workbook)
3. Set orientation to Landscape for wide tables
4. Check "Fit to page width"
5. Click Export

Send this PDF to your coordinator 48 hours before the wedding so they have it even if their phone dies.

---

--- END OF BONUS 1 ---
