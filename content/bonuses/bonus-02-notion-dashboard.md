# BONUS 2: The WeddingForge Notion Wedding Dashboard
## Your Complete Day-by-Day Planning System

---

## Why Notion for Wedding Planning

Wedding planning apps have one fatal flaw: they are closed systems. You cannot customize the categories, the views, or the logic. Notion is an open canvas that bends to how your brain works — not the other way around.

**Why Notion beats the alternatives:**

| Tool | Problem |
|------|---------|
| Paper planners | No search, no formulas, destroyed by coffee |
| Wedding apps (Zola, The Knot planner) | Locked categories, upsell-driven, no partner permissions |
| Excel/Google Sheets | Great for numbers, terrible for tasks and linked information |
| Notion | Combines databases, documents, task lists, and linked views in one place |

**The free Notion tier is completely sufficient for wedding planning.** You do not need a paid account. Go to notion.so, create a free account, and start building.

Notion works on iPhone, Android, and any browser. Once you install the mobile app and turn on offline access, you will have your entire wedding plan accessible on the day-of even without cell service.

---

## Dashboard Architecture

Create a new page in Notion. Title it: `WeddingForge — [Partner A] & [Partner B]`

Add a cover photo (click "Add cover" at the top — use an engagement photo or a color that matches your wedding palette). Add an icon (the ring emoji works well).

Inside this root page, you will create the following sub-pages. Use the "/" command to insert a new page, or click the "+" icon in the left sidebar.

| Page | Icon | Purpose |
|------|------|---------|
| HOME | Use a house emoji | Command center with live stats and quick links |
| MASTER CHECKLIST | Use a clipboard emoji | Full planning task database |
| BUDGET | Use a money bag emoji | Budget tracking linked to tasks |
| VENDORS | Use a handshake emoji | Vendor CRM and contract hub |
| GUESTS | Use a people emoji | Full guest list and RSVP manager |
| TIMELINE | Use a calendar emoji | Wedding day minute-by-minute schedule |
| NOTES & IDEAS | Use a lightbulb emoji | Mood board, vow drafts, song lists |
| DOCUMENTS | Use a folder emoji | Contract links and important file storage |

---

## Page 1: HOME Setup

The HOME page is the first thing you and your partner see every time you open the workspace. Design it to answer: "What do I need to do right now?"

### Section 1: The Wedding Header

At the top of the page, type:

```
[Partner A] & [Partner B]
Getting Married — [City, State] — [Full Wedding Date]
```

Make the first line Heading 1. Make the second line regular text, color gray.

Directly below, add a **Callout block** (type `/callout`). Inside it, write your wedding north star sentence — the one-sentence description of what you want guests to feel on your wedding day. Example:

> "Our guests will leave feeling like they just attended the best dinner party of their lives — relaxed, celebrated, and completely present."

This sentence is your decision filter. Every vendor choice, every decor decision, every schedule item should serve this feeling. Having it at the top of your workspace means you see it every single time you open Notion.

### Section 2: Countdown and Quick Stats

Type `/callout` to create a second callout block. Inside it, build a simple stats row:

```
Days Until Wedding: [manually update this weekly, or link to a formula]
Guests Confirmed: [link to GUESTS database count]
Budget Remaining: [manually update from Google Sheets dashboard]
Tasks Complete: [link to MASTER CHECKLIST count]
```

Note: Notion does not have live date-countdown formulas the way Google Sheets does. Update the "Days Until Wedding" number manually each Sunday — this takes 10 seconds and keeps you grounded.

For the other stats, you can use **Linked database views** (explained below) to pull counts automatically.

### Section 3: Filtered Task Views

Add two linked database views that pull from your MASTER CHECKLIST database. These live on the HOME page so you can see urgent items without clicking into the full checklist.

**View 1: Overdue Tasks**
1. Type `/linked view of database` and select MASTER CHECKLIST
2. Add filter: Status is not "Done" AND Month Due is before current month
3. Set view type to List
4. Title it "Overdue — Handle These First"
5. Limit to showing 10 items

**View 2: Due This Week**
1. Add another linked view of MASTER CHECKLIST
2. Add filter: Status is not "Done" AND Priority is "Critical" or "High"
3. Sort by Priority (Critical first)
4. Title it "Up Next This Month"
5. Limit to 15 items

### Section 4: Quick Links

Add a **3-column layout** (type `/3 columns`) with quick-link buttons to every other page:

- Column 1: MASTER CHECKLIST, VENDORS
- Column 2: GUESTS, PAYMENTS (link to your Google Sheets PAYMENTS tab here)
- Column 3: TIMELINE, NOTES & IDEAS

To add a page link, type `@` followed by the page name. Notion will auto-link it.

---

## Page 2: MASTER CHECKLIST Database

This is the most important database in your workspace. Every task from engagement to honeymoon lives here.

### Creating the Database

1. Navigate to the MASTER CHECKLIST page
2. Type `/database` and select "Full page database"
3. Select "Table" view

### Database Properties

Click the "+" button at the top of the table to add each property:

| Property Name | Type | Options |
|---------------|------|---------|
| Task Name | Title | (default — rename from "Name") |
| Category | Select | Foundation / Booking / Design / Final Stretch / Week-Of / Post-Wedding |
| Month Due | Select | Month 1 / Month 2 / Month 3 / Month 4 / Month 5 / Month 6 / Month 7 / Month 8 / Month 9 / Month 10 / Month 11 / Month 12 / Month 13-18+ |
| Priority | Select | Critical / High / Medium / Low |
| Owner | Person | (invite partner to workspace first) |
| Status | Select | Not Started / In Progress / Done / Blocked |
| Vendor | Relation | (link to VENDORS database once created) |
| Notes | Text | |
| Done | Checkbox | |

**Color-code your Priority select options:**
- Critical = Red
- High = Orange
- Medium = Yellow
- Low = Gray

**Color-code your Status select options:**
- Not Started = Gray
- In Progress = Blue
- Done = Green
- Blocked = Red

### Complete Task List by Month

Enter every task below into your database. Each row is one task.

---

#### MONTH 1 (Engagement Month) — Foundation

| Task | Category | Priority | Owner |
|------|----------|----------|-------|
| Announce engagement to immediate family | Foundation | Critical | Both |
| Set a preliminary wedding budget range | Foundation | Critical | Both |
| Discuss wedding vision and priorities | Foundation | Critical | Both |
| Create this Notion workspace | Foundation | High | Both |
| Create WeddingForge Google Sheets tracker | Foundation | High | Both |
| Research wedding date options | Foundation | High | Both |
| Create initial guest list (everyone who MUST be there) | Foundation | High | Both |
| Research wedding insurance options | Foundation | Medium | Both |

---

#### MONTH 2 — Booking: Venue and Key Vendors

| Task | Category | Priority | Owner |
|------|----------|----------|-------|
| Tour at least 3 ceremony venues | Booking | Critical | Both |
| Tour at least 3 reception venues | Booking | Critical | Both |
| Book ceremony and reception venue | Booking | Critical | Both |
| Sign venue contract and pay deposit | Booking | Critical | Both |
| Research and interview photographers (minimum 4) | Booking | Critical | Partner A |
| Research and interview videographers (minimum 3) | Booking | High | Partner A |
| Book photographer — sign contract, pay deposit | Booking | Critical | Both |
| Set final guest count ceiling | Booking | Critical | Both |
| Send save-the-dates (for peak-season dates) | Booking | High | Both |

---

#### MONTH 3 — Booking: Catering and Entertainment

| Task | Category | Priority | Owner |
|------|----------|----------|-------|
| Research and interview caterers or confirm venue catering | Booking | Critical | Both |
| Schedule catering tasting | Booking | Critical | Both |
| Book caterer — sign contract, pay deposit | Booking | Critical | Both |
| Research DJ and/or band options | Booking | High | Partner B |
| Interview at least 3 DJs or bands | Booking | High | Partner B |
| Book DJ or band — sign contract, pay deposit | Booking | High | Both |
| Book videographer — sign contract, pay deposit | Booking | High | Both |
| Research officiant options | Booking | High | Both |

---

#### MONTH 4 — Booking: Beauty and Florals

| Task | Category | Priority | Owner |
|------|----------|----------|-------|
| Begin wedding dress shopping | Booking | Critical | Partner A |
| Research and interview florists (minimum 3) | Booking | High | Partner A |
| Schedule floral consultations | Booking | High | Partner A |
| Book florist — sign contract, pay deposit | Booking | High | Both |
| Research and book hair and makeup artist | Booking | High | Partner A |
| Schedule hair and makeup trial | Booking | High | Partner A |
| Book officiant — confirm availability | Booking | High | Both |
| Research rehearsal dinner venue options | Booking | Medium | Both |

---

#### MONTH 5 — Design and Details

| Task | Category | Priority | Owner |
|------|----------|----------|-------|
| Order wedding dress | Booking | Critical | Partner A |
| Design and order invitations | Design | High | Both |
| Finalize ceremony outline with officiant | Design | High | Both |
| Design floor plan with venue coordinator | Design | High | Both |
| Create ceremony music wishlist for DJ/band | Design | High | Both |
| Create reception music wishlist | Design | High | Both |
| Research transportation options | Booking | Medium | Partner B |
| Book transportation — sign contract, pay deposit | Booking | Medium | Both |
| Plan honeymoon (book flights if traveling) | Booking | Medium | Both |

---

#### MONTH 6 — Halfway Point Check

| Task | Category | Priority | Owner |
|------|----------|----------|-------|
| Mail invitations (for weddings with 6-month lead time) | Design | Critical | Both |
| Set up wedding website (if not already done) | Design | High | Both |
| Confirm all major vendors are booked | Booking | Critical | Both |
| Review full budget actuals vs. plan | Foundation | High | Both |
| Finalize rehearsal dinner guest list and venue | Booking | High | Both |
| Begin tracking RSVPs as they arrive | Foundation | High | Both |
| Research wedding rings | Booking | High | Both |
| Purchase wedding rings | Booking | Critical | Both |

---

#### MONTH 7-8 — Design Details

| Task | Category | Priority | Owner |
|------|----------|----------|-------|
| Complete hair and makeup trial | Design | Critical | Partner A |
| Begin dress alterations (first fitting) | Design | Critical | Partner A |
| Confirm wedding party attire (bridesmaid dresses, suits) | Design | High | Both |
| Order or design ceremony programs | Design | High | Both |
| Design escort cards and seating chart | Design | High | Both |
| Finalize welcome bag contents and order items | Design | Medium | Both |
| Order personalized favors if using them | Design | Medium | Both |
| Confirm honeymoon bookings and travel documents | Booking | Medium | Both |

---

#### MONTH 9-10 — Final Bookings and Logistics

| Task | Category | Priority | Owner |
|------|----------|----------|-------|
| Set RSVP deadline date | Foundation | Critical | Both |
| Follow up with non-respondents after RSVP deadline | Foundation | Critical | Both |
| Finalize guest count and submit to caterer | Foundation | Critical | Both |
| Create preliminary seating chart | Design | Critical | Both |
| Submit meal counts to venue/caterer | Foundation | Critical | Both |
| Complete second dress fitting / alterations | Design | Critical | Partner A |
| Book hotel room for wedding night | Booking | High | Both |
| Coordinate hotel room block details for guests | Booking | High | Partner B |
| Write personal vows (first draft) | Design | High | Both |
| Draft ceremony script with officiant | Design | High | Both |

---

#### MONTH 11 — Final Stretch

| Task | Category | Priority | Owner |
|------|----------|----------|-------|
| Pick up wedding dress (final fitting) | Final Stretch | Critical | Partner A |
| Assemble and deliver welcome bags | Final Stretch | High | Both |
| Finalize and print seating chart | Final Stretch | Critical | Both |
| Print ceremony programs | Final Stretch | High | Both |
| Create day-of timeline and share with all vendors | Final Stretch | Critical | Both |
| Create vendor tip envelopes and prepare cash | Final Stretch | High | Both |
| Confirm arrival times with every vendor | Final Stretch | Critical | Both |
| Confirm headcount and floor plan with venue | Final Stretch | Critical | Both |
| Apply for marriage license | Final Stretch | Critical | Both |
| Write final vows | Final Stretch | Critical | Both |

---

#### WEEK-OF TASKS

| Task | Category | Priority | Owner |
|------|----------|----------|-------|
| Deliver ceremony programs to venue | Week-Of | Critical | Both |
| Deliver escort cards and seating chart to venue | Week-Of | Critical | Both |
| Deliver welcome bags to hotel | Week-Of | High | Both |
| Confirm day-of timeline with coordinator | Week-Of | Critical | Both |
| Pack personal emergency kit (Section 6 list) | Week-Of | Critical | Both |
| Get manicure and pedicure | Week-Of | High | Partner A |
| Attend rehearsal | Week-Of | Critical | Both |
| Host or attend rehearsal dinner | Week-Of | Critical | Both |
| Get a full night of sleep (seriously — protect this) | Week-Of | Critical | Both |
| Eat breakfast on wedding morning | Week-Of | Critical | Both |

---

#### POST-WEDDING TASKS

| Task | Category | Priority | Owner |
|------|----------|----------|-------|
| Sign marriage license with officiant | Post-Wedding | Critical | Both |
| Submit marriage license to county clerk | Post-Wedding | Critical | Both |
| Write and mail thank-you notes (within 3 months) | Post-Wedding | High | Both |
| Update legal name (if applicable) | Post-Wedding | High | Partner A |
| Order wedding album from photographer | Post-Wedding | Medium | Both |
| Review and tip any vendors not tipped on day-of | Post-Wedding | High | Both |
| Write vendor reviews online | Post-Wedding | Medium | Both |
| Archive this Notion workspace | Post-Wedding | Low | Both |

---

### Filtered Views to Set Up

At the top of the MASTER CHECKLIST database, click "Add a view" to create the following filtered views. Each view lets you and your partner focus on the right tasks at the right time.

**View 1: This Month**
- Filter: Month Due equals [current month — update this filter monthly]
- Sort: Priority (Critical first)
- View type: Table

**View 2: Critical and Overdue**
- Filter: Priority = Critical AND Status does not equal "Done" AND Month Due before current month
- Sort: Month Due (ascending)
- View type: Table
- This is your "fire alarm" view — if anything appears here, it needs same-week attention.

**View 3: Partner A's Tasks**
- Filter: Owner = Partner A AND Status does not equal "Done"
- Sort: Priority
- View type: List
- Share this view directly with Partner A so they see only their own items.

**View 4: Partner B's Tasks**
- Filter: Owner = Partner B AND Status does not equal "Done"
- Sort: Priority
- View type: List

**View 5: Booking Phase**
- Filter: Category = "Booking"
- Sort: Month Due
- View type: Table
- Use this view during the first four months when booking vendors is the primary activity.

**View 6: Done (Celebration View)**
- Filter: Status = "Done"
- Sort: Month Due (descending — most recently completed first)
- View type: Gallery
- This is your "look how much we've accomplished" view. Open it when planning feels overwhelming.

---

## Page 3: VENDORS Database

The VENDORS page is your vendor CRM. Everything about every hired professional lives here.

### Creating the Database

Navigate to the VENDORS page. Type `/database` and select "Full page database."

### Database Properties

| Property | Type | Options / Notes |
|----------|------|-----------------|
| Vendor Name | Title | |
| Category | Select | Venue / Photography / Videography / Catering / Bar / Florals / Music-DJ / Beauty / Officiant / Transportation / Stationery / Rentals / Other |
| Status | Select | Researching / Meeting Scheduled / Quoted / Hired / Paid In Full |
| Contact Name | Text | |
| Phone | Phone | |
| Email | Email | |
| Contract Signed | Checkbox | |
| Contract Amount | Number | Format as currency |
| Deposit Paid | Number | Format as currency |
| Deposit Date | Date | |
| Balance Due | Number | Format as currency |
| Balance Date | Date | |
| Day-of Arrival Time | Text | (use format HH:MM AM/PM) |
| Rating | Select | 1 Star / 2 Stars / 3 Stars / 4 Stars / 5 Stars |
| Notes | Text | |
| Contract Link | URL | Paste Google Drive or Dropbox link to signed contract PDF |

**Color-code Status options:**
- Researching = Gray
- Meeting Scheduled = Yellow
- Quoted = Blue
- Hired = Green
- Paid In Full = Dark Green

### Gallery View Setup

Add a Gallery view for a visual vendor card layout:

1. Click "Add a view" at the top of the VENDORS database
2. Select "Gallery"
3. Under "Card preview," select "None" (or upload a vendor logo if you have one)
4. Under "Properties shown on card," check: Category, Status, Contact Name, Phone, Day-of Arrival Time
5. Title this view "Gallery — All Vendors"

This gallery view is what you will screenshot and send to your day-of coordinator as a vendor overview.

### Vendor Day-Of Sort View

Add a Table view filtered and sorted for day-of use:

1. Add a new view, select Table
2. Filter: Status = "Hired" or "Paid In Full"
3. Sort: Day-of Arrival Time (ascending)
4. Show properties: Vendor Name, Contact Name, Phone, Day-of Arrival Time, Notes
5. Title it "Day-Of Vendor Schedule"

This view gives your coordinator a chronological vendor arrival list.

---

## Page 4: GUESTS Database

### Creating the Database

Navigate to the GUESTS page. Type `/database` and select "Full page database."

### Database Properties

| Property | Type | Options |
|----------|------|---------|
| Last Name | Title | |
| First Name(s) | Text | |
| Side | Select | Bride / Groom / Both |
| Invited | Checkbox | |
| RSVP Status | Select | Pending / Attending / Not Attending |
| Meal Choice | Select | Chicken / Fish / Vegetarian / Kids Menu / No Preference |
| Dietary Notes | Text | |
| Table Number | Number | |
| Gift Received | Checkbox | |
| Thank You Sent | Checkbox | |

### Filtered Views

**View 1: Attending**
- Filter: RSVP Status = "Attending"
- Sort: Last Name (A to Z)
- Shows your confirmed headcount

**View 2: Not Attending**
- Filter: RSVP Status = "Not Attending"
- Use this to track who declined (useful for thank-you notes and future reference)

**View 3: Still Pending**
- Filter: RSVP Status = "Pending"
- This is your "who do I need to chase down" view. After the RSVP deadline, this list should be zero.

**View 4: By Table Number**
- Filter: RSVP Status = "Attending"
- Sort: Table Number (ascending), then Last Name
- Group by: Table Number
- This view becomes your seating chart reference. Print it for the day-of coordinator.

**View 5: Thank-You Tracker**
- Filter: Gift Received = Checked AND Thank You Sent = Unchecked
- Use this weekly after the wedding to identify outstanding thank-you notes

### Running Counts (Use These on Your HOME Page)

To display guest counts on your HOME page, use a **Linked database view** with count properties:

- At the bottom of any view, Notion shows a count of visible rows. Pin the "Attending" view count to your HOME page as a reference.
- For meal counts: use the "By Table" view, then filter further by Meal Choice to get counts by meal type.

---

## Page 5: TIMELINE — Day-of Planning

The TIMELINE is a dedicated document page — not a database. It is your wedding day script, printed and laminated, handed to every vendor and the day-of coordinator.

### Page Setup

Navigate to the TIMELINE page. At the top, include:

```
WEDDING DAY TIMELINE
[Partner A] & [Partner B] — [Full Date]
Venue: [Venue Name and Address]
Emergency Contact (Day-of Coordinator): [Name] — [Phone]
Emergency Contact (Partner A's Person): [Name] — [Phone]
Emergency Contact (Partner B's Person): [Name] — [Phone]
```

### Timeline Table Structure

Create a Notion table (type `/simple table` — not a database) with these columns:

| Time | Event / Moment | Person Responsible | Vendor | Notes |
|------|----------------|--------------------|--------|-------|

### Full Day-of Timeline Template

Copy and customize this template. Adjust times for your actual day.

| Time | Event / Moment | Person Responsible | Vendor | Notes |
|------|----------------|--------------------|--------|-------|
| 7:00 AM | Getting ready begins — hair and makeup starts | Partner A | Hair & Makeup Artist | Start with bridesmaids, Partner A last |
| 7:30 AM | Photographer arrives for getting-ready coverage | Coordinator | Photographer | Confirm location night before |
| 8:00 AM | Videographer arrives | Coordinator | Videographer | |
| 10:00 AM | Florist delivers bridal bouquets and boutonnieres | Coordinator | Florist | Confirm delivery location |
| 10:30 AM | First look (if scheduled) | Partner A + Partner B | Photographer | Private location pre-selected |
| 11:00 AM | Wedding party portraits | Photographer | Photographer | Shot list delivered in advance |
| 12:00 PM | Partner A hair and makeup complete | Hair & Makeup Artist | | Buffer time built in |
| 12:30 PM | Couple portraits | Photographer | Photographer | |
| 1:00 PM | Ceremony venue doors open for guests | Venue Coordinator | Venue | Ushers in place |
| 1:15 PM | Officiant and musicians/DJ in place | Coordinator | Officiant / Music | Final sound check |
| 1:30 PM | Wedding party lines up | Wedding Party | Coordinator | Order pre-assigned |
| 2:00 PM | Ceremony begins | Officiant | | Walk order: [list your specific order] |
| 2:30 PM | Ceremony concludes — couple exits | | | Petal toss / bubbles / etc. |
| 2:35 PM | Cocktail hour begins | DJ / Band | Music | Guests proceed to cocktail area |
| 2:45 PM | Family formals / portraits | Photographer | | List of groupings given to photographer in advance |
| 4:00 PM | Reception doors open | Venue Coordinator | | |
| 4:15 PM | Guests find seats | DJ | | DJ plays background music |
| 4:30 PM | Grand entrance | DJ | | Entrance song pre-selected |
| 4:35 PM | Welcome toast — [Name] | | | |
| 4:45 PM | First dance | DJ | | Song: [Song Title] |
| 4:50 PM | Father-daughter dance / Parent dances | DJ | | |
| 5:00 PM | Open dancing begins | DJ | | |
| 5:30 PM | Dinner service begins | Catering Captain | Caterer | Signal caterer when ready |
| 6:00 PM | Toasts — [Maid of Honor / Best Man] | | | Order: [list order] |
| 6:30 PM | Cake cutting | Photographer / Caterer | | Signal photographer before cutting |
| 6:45 PM | Open dancing resumes | DJ | | |
| 8:30 PM | Last dance announcement | DJ | | Signal 30 min before end |
| 9:00 PM | Last dance | DJ | | Song: [Song Title] |
| 9:05 PM | Couple's send-off | Coordinator | | Guests line up outside |
| 9:15 PM | Couple departs | Transportation | | Car confirmed + waiting |
| 9:30 PM | Venue cleanup begins | Venue Coordinator | Venue | Florist retrieves rentals |
| 10:00 PM | Venue vacated | Venue Coordinator | | Hard out time per contract |

### Printing and Distribution

Once finalized, print this timeline and distribute it:
- One copy per vendor (email PDF version 1 week before)
- One copy for the day-of coordinator (laminated if possible)
- One copy in the day-of emergency kit bag
- One copy on each getting-ready table

---

## Page 6: NOTES & IDEAS

The NOTES & IDEAS page is your unstructured creative space. Create these sub-pages inside it:

### Sub-page 1: Vision Board

1. Create a new page titled "Vision Board"
2. At the top, paste your wedding north star sentence
3. Copy and paste inspiration images directly into the page (Notion supports image uploads)
4. To embed your Pinterest board: type `/embed` and paste your Pinterest board URL
5. Add text headers between image groups: "Florals," "Attire," "Venue Vibe," "Table Settings," "Lighting"

### Sub-page 2: Vow Drafts

1. Create a new page titled "Vow Drafts — [Partner A's Name]" and a separate one for Partner B
2. At the top of each page, add a **Toggle block** (type `/toggle`)
3. Put all vow content inside the toggle
4. Title the toggle: "Private — Do Not Open If You Are [Partner B's Name]"
5. This is not technically secure, but it creates a clear social barrier

Use the page for drafts, scratch ideas, lines you love, things you want to reference from your relationship. Keep revising until 2 weeks before the wedding, then finalize and print.

### Sub-page 3: Song Lists

Create a page with three sections:

**Ceremony Songs:**
- Prelude (guests arriving): [running list]
- Processional — Wedding Party: [song title and artist]
- Processional — Partner A/Bride: [song title and artist]
- Signing / Unity Ceremony: [song title and artist]
- Recessional: [song title and artist]

**Reception Songs:**
- Grand Entrance: [song]
- First Dance: [song]
- Parent Dances: [songs]
- Cake Cutting: [song]
- Last Dance: [song]
- Must-Plays (numbered list): [your top 10-15 songs]
- Do-Not-Plays (bulleted list): [songs that are funny or cringe for your crowd]

### Sub-page 4: Ceremony Script Draft

Create a collaborative document with your officiant. Share the page link directly with them. Include:
- Welcome remarks
- Reading 1 (title, reader's name)
- Vow exchange — include both partners' vow texts here once finalized
- Ring exchange
- Pronouncement
- Recessional cue

### Sub-page 5: Budget Negotiation Notes

A private text page where you document:
- What you asked vendors to discount or adjust
- What they agreed to
- What was declined
- Notes on vendor flexibility for future reference

This information is useful if you ever recommend vendors to friends.

---

## Mobile Setup Tips

### Installing the Notion App

1. Download the Notion app from the App Store (iOS) or Google Play (Android)
2. Sign in with the same account you used to build the workspace
3. The app will sync your full workspace automatically

### Pinning to Your Home Screen

**iPhone:** Open Notion, navigate to your wedding workspace home page, tap the Share icon, scroll down and tap "Add to Home Screen." Name it something short like "Wedding HQ."

**Android:** Open Notion, long-press the app icon, select "Add to Home Screen" or use your browser to create a home screen shortcut to the specific page URL.

### Setting Up Offline Access

Notion requires you to visit pages while online for them to cache for offline use.

Before your wedding day:
1. Open the Notion app on your phone while on WiFi
2. Navigate to every page you might need: HOME, VENDORS (especially the Day-of Schedule view), TIMELINE, GUESTS (By Table view)
3. Let each page fully load
4. These pages will now be available offline

On the day-of, if you lose cell service, the cached versions of these pages will still be readable. You will not be able to edit them without internet, but reading the information is what matters.

### Partner Workspace Sharing

1. On desktop Notion, click "Settings & Members" in the left sidebar
2. Click "Members" then "Invite a member"
3. Enter your partner's email address
4. Set their role to "Member" (gives them full edit access to the workspace)
5. They will receive an email invitation — have them accept on both desktop and mobile

Once both partners are in the workspace, assign tasks to each other using the Owner property in MASTER CHECKLIST. Each partner sees their own filtered view.

---

--- END OF BONUS 2 ---
