

# Making Use of Spreadsheets

Here's some useful techniques I'm using to dive into our MIT Club's
membership data.  We're exporting from the "Members & Prospects" tab
in our Groups>> Club page.  An "Engagement scoring" tab also shows
means to export User Lists.

The objective of my efforts is to produce two lists:  those people 
whose membership has expired, and those whose are bout to expire.

This work takes us to the point of querying a reduced spreadsheet
(with just the necessary fields) to answer those questions.

That final step is in process.

## Basic Query

My default Members and Prospects shows 1987 users found. Selecting
"Show Filters" has

+ User status
    + Group member
	+ Prospect
+ User Lists { is empty} 	


Going to our club-specific queries.

I've no explanation for the 1987 list when the User status is empty.

Then let's populate 

+ User Lists
    + Club of Princeton -- { Current Members, Non-members, Sloan Alumni }
	+ omitting the Email lists, etc...
	
which Lists 1987 as well?

The idea here is the selection is doing a query on the lists
pre-assigned to our club.  At this point, my advice is to Export this
list, to see what obtains.   The point being it's easier to download
all the data and use the spreadsheet as the query engine.

## Exporting

The Export users tab shows this page:

![from the Export users selection](../bashlibs/exportUsers.jpg) 

at this point the options are to [Select all fields] or from the 25
check boxes.  While it may seem useful to select individual
attributes, the technique I'm advancing suggests using the whole
spreadsheet to make the queries.  The feature of selecting individual
attributes would be more useful if there were a stored "user preference"
option at this point.  And a word of caution; we'll discover there are 45
separate data fields behind the 25 selections.   You may find the aggregates
behind the check boxes may not sufficiently represent your interests.

We'll see how to construct a "uses preference" tab on the downloaded data.

## Downloaded

First, the raw file:

![The Downloaded table with all attributes](../bashlibs/DownloadMembership.jpg) 

Note the list of tabs at the bottom:

+ *import* -- where the Imported table is saved
+ *selection* -- just those attributes we need to see, constructed from the
+ *Fields* -- how the fields are selected

including, in no particular order

+ *export* -- a prior copy of the *import*
+ *240311* -- a copy of the *selection* on March 11, 2024
+ *240318* -- the same a week later
+ *expired* -- a work in process, my personal interest
+ *CandC*  -- for two lists, Compare and Contrast
+ *testColumn* -- like a clipboard, here looking at population data

## Fields Magic

It's not sleight of hand; merely the application of some useful Sheet features.
Function references in this discussion are explained below.

![Mapping downloaded fields to desired subset](../bashlibs/MappingFields.jpg)

The magic is accomplished by constructing the columns G thru L, where
the data in column I are the accepted labels for the *selection*
sheet.  Draw your attention to columns A and B labeled **Field** and
**Simple**. A function in cell A2 populates the two columns from the
first two rows of the **import** sheet.

The user selects the useful columns with the letter **x** in column
C. Functions in columns D and E respectively select the full Field
name followed by its alpha-designation on the import sheet.

A function in column G1 selects the unique entries in columns D and E.
The fact that there are no blank rows in G and H is due to the blank 
header in D and E. Columns G and E therefore describe the fields of 
interest. Column I the headers displayed in *selection* is, for now,
copy/pasted from column L, whose entries are the result of a function
working on the long names of column G, using indices calculated in columns 
J and K.

## The Functions

1. in cell A1, *transpose*: <code>=transpose(import!A1:AZ2)</code>
   transposes the content of *import*s first two rows into *Fields*
   first two columns

1. column D, *if*: <code>=if(C2="x",A2,C2)</code> copied down the
   column selects the desired field names
   
1. similarly in E: <code>=if(C3="x",N3,C3))</code>, looks in column N
   at a prepared list of pre-populated column headers.  Realize, after
   the 26th column, the characters A thru Z repeat with a single
   letter, again, A thru Z
   
1. in cell G1, *unique*: <code>=unique(D:E)</code> collects the unique
   data in columns D and E. Again, note the blank data in D1 and E1
   serve to ignore entries in columns D and E where both are blank.

1. column J: *len*: <code>=len(G2)</code>, the character count of the
   Field name, used in column L.

1. column K *search*: <code>=search(":",G2 &":"</code>, returns the character
   position of the first colon(:) in the Field Name. the *&":"* appends the
   colon to satisfy the search.

1. column L: *lower, if,* and *mid*

    + *lower*: <code>=lower( ... )</code> returns the character
       string, converted to lower case

    + *mid*: <code>mid(G7,K7+1,16)</code>  returns the 16 characters
	   starting at the first character after a colon in the Field Name
	   
	+ *if*: <code>=if(J7<K7,G7,mid(G7,K7+1,16))</code> if the string length
	  is less than the first colon ( recalling the colon append to the name )
	  then there was no colon, so copy the full label, else copy the 
	  fragment after the colon.
	  
1. column I: in this instance it's a copy/paste from column L, in default
   trimming the text after the first space.  Note, this too, could be made
   into a function, however at the point, it's a function too far.
   

## The Application

With the resolved spreadsheet in hand, the queries are:

1. those whose membership has expired in *the last year* or any recent period, 
1. and those whose membership will expire in *the next few months*.


## The Solution(s)

1. In the *expired* tab, note the highlighted M1 cell, "status" which
shows how the column headers (field names) are propagated via the
**fx** in the formula bar from the primary source.

![The Expired tab, with email, names blanked](../bashlibs/ExpiredMembers.jpg)

# A retrospective

In my days at MIT, we often heard a common refrain: *It's entirely
obvious to the causal reader that ...*, which flipped on its head:
*It's entirely **casual** to the **obvious** reader that ...*.

So here, you will notice the following functions are Google Sheet
function references.  Since a good majority of spreadsheets are Excel
( **xlsx** ) files, rest assured individual *worksheets* may be
exported as **csv**, and also may be  uploaded into a Google Sheet.

I've been a confirmed Google Sheet user since I was shown a few
functions by a then-recent MIT graduate in a technology class I was
teaching on Wall St.  Google Sheets have had the *unique* function for
more than a decade.  Excel was at least four years behind. (I worked
with the Excel three-column work-around for two of them) And I don't
know if the MS/Excel version is API compatible with the one in Google
Sheets.

Ergo, I make no apologies for my use of sheets, other than to point
out at least one advantage in Excel.  In the last year I've seen an
impressive demonstration using sorting and filter tabs in Excel.  So,
if there's a reader here who has those skills, I would be instructed
to incorporate them in this work.

That being the case, I'm certain the lessons through the [Fields
Magic](#fields-magic) section will be the most useful part of this
exercise.

I'll share the source spreadsheet with anyone requesting from an
**alum.mit.edu** address.

## Function references

[in general](https://support.google.com/docs/table/25273?hl=en):

Used here:

+ [filter](https://support.google.com/docs/answer/3093197?sjid=7425704302737271765-NA)
+ [if](https://support.google.com/docs/answer/3093364?sjid=7425704302737271765-NA)
+ [lower](https://support.google.com/docs/answer/3094083?hl=en-GB&sjid=7425704302737271765-NA)
+ [mid](https://support.google.com/docs/answer/3094129?hl=en-GB&sjid=7425704302737271765-NA)
+ [search](https://support.google.com/docs/answer/3094154?hl=en-GB&ref_topic=3105625&sjid=7425704302737271765-NA)
+ [transpose](https://support.google.com/docs/answer/3094262?hl=en&sjid=7425704302737271765-NA)
+ [unique](https://support.google.com/docs/answer/10522653?hl=en&sjid=7425704302737271765-NA)

## Markdown references

A bit of self-reference for the interested reader, here is the source
text of [this document](../bashlibs/Workingspreadsheets.md), which
uses the popular
[Markdown](https://daringfireball.net/projects/markdown/) format.
The features I'm using here, which I'll dig down to useful references.  I'll 
then lift it out of this document to one more appropriate.

* bold & bold italics
* bullet lists
* external URLs
* fixed font, i.e. code
* headings
* images (with footer)
* internal links
* italics
* numbered lists
