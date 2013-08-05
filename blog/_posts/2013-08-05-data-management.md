---
layout: post
title: Data Management in a Newsroom
unlisted: true
---

At Spiegel, there have recently been a few discussions about the
long-term management of data in a news organisation. A well-stocked data
warehouse developed from the vestiges of previous investigations would
make a great asset for journalists and researchers, but the diversity of
topics and fast pace of the environment make this hard to achieve.

In any case, a data management approach might include a variety of
aspects: quality, processing and documentation standards for any data
used in reporting, reference datasets that are used across different
projects and, finally, the tools used to record this information.

I've collected information about a few existing approaches and tools
below; 

The Guardian

My information on the Guardian data blog's strategy may be a bit
outdated, as most of the people I spoke to no longer work there. The
team's key tool was Google Spreadsheets, with every story linking to its
source data somewhere in the article. Often, a GSpread table would even
be embedded into the article.

Lisa also mentioned that they kept a meta-sheet internally, a list of
all the spreadsheets and the stories they related to. This may be
somewhat redundant, however, given that all the sheets are linked up
from the article anyway and the whole blog is a SEO treasure trove - the
way to find things is probably through Google.

The FT method 

One of my favourite approaches was demoed to me by Martin Stabe at the
Financial Times: all of their graphics and data reporting staff have
access to a shared MySQL database. When a new dataset is collected, it
becomes another table in this database. Over time, this has lead them to
create a massive collection of tables which are easy to query and can be
joined up for ad-hoc relationships.

The obvious downside of this approach is that it has a fairly high
barrier to entry: even with tools like phpMyAdmin, a relational database
is probably not every reporter's idea of a comfortable working
environment. The FT's solution to this appears to be teamwork, with
reporters and members of the data team collaborating on projects where
needed.

///

Probably the most relevant software project to this specific problem is
the Panda Project, another Knight Challenge winning project from 2011.
Panda tries to capture all the little spreadsheets and tables that would
result from a newsrooms daily operations and gives them a permanent
home.

The developers put a lot of emphasis on ease of use, so that the effort
required to upload data to Panda would be minimal. At the same time,
they chose to base much of the platform around full-text search. This
may be useful in order to find names of companies and people in the
data, but for statistical and other measurement data, the search makes
no sense. Since the only other option is to download the entire dataset,
Panda simply misses a good way to handle numeric data. 



CKAN and ScraperWiki

I used to make fun of CKAN for its horrible usability and the fact that
it doesn't 


Panda



http://www.investigativedashboard.org/
http://db.datatracker.org/search/search

