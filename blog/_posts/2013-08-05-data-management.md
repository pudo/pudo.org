---
layout: post
title: Data Management in News Organisations
unlisted: true
author: Friedrich Lindenberg
opennews: true
#published: false
---

Over the last few months, I've had the pleasure of joining a few discussions regarding
the long-term management of data inside Spiegel. The company is already running
[DIGAS](http://www.oracle.com/technetwork/database/enterprise-edition/derspiegel-134111.pdf),
a massive, hand-curated archive of news content from the past
decades, including articles published not just by Spiegel but also by many
other German and international news outlets. 

Can the same thing be created for data? A well-stocked data warehouse filled
with the outputs of previous investigations would certainly make a great asset for
journalists and researchers, but the diversity of topics and fast pace of
the environment make this hard to achieve. 


What problem needs to be solved?
--------------------------------

A data management approach for a news organisation might include a variety
of goals, many of which are, of course, similar to what the larger (open)
data community is facing:

* Create visibility for datasets collected during investigations, to make sure
  that different organisational units are aware what work has been done
  elsewhere (and why keep this in-house?).
* Provide a uniform way of storing and querying such datasets in a database, 
  ideally through a user interface that is accessible to journalists with 
  limited experience in spreadsheet software. 
* Establish some standards for the processing and documentation of any data
  used in reporting.
* Create metadata regarding the data's origin, limitations and currentness. 
* Establish reference datasets which will be used across the organisation to 
  identify common dimensions such as administrative regions, political parties,
  etc.
* Access control for sensitive datasets.

This, of course, is not a good list to start off with - it's just a set of
related concerns to keep in mind. 


What are people doing now?
--------------------------

Luckily, instead of starting from nothing, we can already see some of the
strategies used by other media organisations and their data teams. 

My information on the [Guardian data blog's](http://www.theguardian.com/news/datablog) approach to this may be a bit
outdated, as most of the people I spoke to no longer work there. The
team's key tool was Google Spreadsheets, with every story linking to its
source data somewhere in the article. Often, a GSpread table would even
be embedded into the article.

[Lisa](http://objectgroup.org/) also mentioned that they kept a meta-sheet internally, a list of
all the spreadsheets and the stories they related to. This may be
somewhat redundant, however, given that all the sheets are linked up
from the article anyway and the whole blog is a SEO treasure trove - the
way to find things is probably through Google.

This meta-sheet is also something that I've seen used by the [FarmSubsidy](http://farmsubsidy.openspending.org/)
project to coordinate the acquisition and reporting on European farm 
subsidy data. [Their tables](https://docs.google.com/spreadsheet/ccc?key=0Ajagl3TOC7X_dFlzQ0ljaUxUWVNmNE40TGdweWNlcEE#gid=5) list the source location, state and last change 
for each year's batch of data for each member state. 

One of my favourite approaches was demoed to me by [Martin Stabe at the
Financial Times](http://www.ft.com/intl/interactive): all of their graphics and data reporting staff have
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


Platforms to the rescue?
------------------------

While these approaches are very pragmatic, it's doubtful how well they scale
both on a human and a technical level. Of course, there are a few efforts 
to develop platforms to assist journalists in managing their data assets.

Probably the most relevant software project to data management in a
newsroom is the [Panda Project](http://pandaproject.net/), another Knight Challenge winning project from 2011.
Panda tries to capture all the little spreadsheets and tables that would
result from a newsrooms daily operations and gives them a permanent
home.

<div class="captioned">
    <iframe src="http://player.vimeo.com/video/47684166" width="500" height="281" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>
    <div class="caption">
        <a href="http://vimeo.com/47684166">Welcome to PANDA!</a> from <a href="http://vimeo.com/pandaproject">PANDA Project</a>
    </div>
</div>

The developers put a lot of emphasis on ease of use, so the effort
required to upload data would be minimal. At the same time, they chose to
base much of the platform around full-text search. This may be useful in
order to find names of companies and people in the data, but for statistical
and other measurement data, the search makes no sense. Since the only
other option is to download the entire dataset, Panda simply lacks a
good way to handle numeric data. 

[CKAN](http://ckan.org/), the OKFN's widely-used data catalogue, is another possible solution to
keep track of datasets. Since its 2.0 release, the platform features an
attractive user interface and decent data previews. My concern about using 
CKAN for data management (as opposed to its publication) is that [unlike tools
like GitHub](http://nvie.com/posts/a-successful-git-branching-model/), CKAN doesn't integrate into a workflow but rather relies on the user to fill out forms to document their actions. 

Interestingly, this concern was rejected by folks at Spiegel, pointing out
that form-filling is something that can be enforced via policy within the 
organisation. I'm not entirely convinced of this, so it seems like there may 
be an interesting experiment to be had here.

While it may be a bit of a long shot, I'm also trying to find out if the next 
version of the [Investigative Dashboard](http://www.investigativedashboard.org/)
may be able to play such a role in newsrooms. 

Finally, there is an entire category of business intelligence tools (like [Pentaho](http://www.pentaho.com/) or its 
[commercial competitors](http://en.wikipedia.org/wiki/Business_intelligence_tools#Proprietary_products))
that could help manage a complex data warehouse. I'm not sure how these tools
fit in well with an incremental approach to building a data architecture at 
Spiegel though.


What is to be done?
-------------------

For the moment, Spiegel's documentation unit has set up a massive storage 
server running Postgres as the core data system. Reporters and researchers will 
be given access to this database using a visual database client, and I'm 
busy importing a few core datasets based on public statistical databases.

Once this is running and has been adopted by some of the research staff, 
I'm keen to actually run the CKAN experiment and too see if this very structured
approach will succeed. At the same time, I'm hoping that other people 
may be aware of better solutions to this challenge - so: how does your 
news organisation manage its data?




