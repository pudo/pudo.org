---
layout: post
title: "ReGENESIS: German statistics made accessible"
unlisted: true
author: Friedrich Lindenberg
opennews: true
#published: false
---


<div class="captioned pull-right">
    <img src="/img/demap.png">
    <div class="caption" style="max-width: 290px;">
        A choropleth map to indicate the availability of high-quality, 
        machine readable statistical data in ReGENESIS.
    </div>
</div>

One of the first tasks I was given by Spiegel Online was to make a set of simple 
maps to display basic statistics about Germany - things like population, unemployment
or insolvencies. As Germany's statistical data are collected in a system called 
[GENESIS](https://www-genesis.destatis.de/genesis/online), I though that this would
be trivial. I'd just have to write a script to grab the tables once a month, convert
them to JSON and thus update the maps.

Unfortunately, while the GENESIS interface offers downloads, they are both hard to
access (through an arcane and untested [SOAP interface](https://www-genesis.destatis.de/genesis/online?Menu=Webservice))
and hard to parse. Essentially, the tables are reports which have been manually
layed out, and getting out a predicatable data series requires you to pretty much
write a bespoke parser for each table.

So I decided to solve this issue for others as well and make [ReGENESIS](http://regenesis.pudo.org),
**a service and toolkit to provide clean and well-structured data from the German statistical
 services**.

This was inspired by some great examples of similar projects other
countries: [Census.IRE.org](http://census.ire.org/) provides a lot of structured
data around the US census, and the [CensusReporter](http://censusreporter.tumblr.com/)
project is now thinking this through a lot further. I'm also really impressed by the work that [Brian](http://brianabelson.com/) and the [@csvsoundsystem](http://csvsoundsystem.com/) have
been doing on [treasury.io](http://treasury.io/), a convenient data source with a
ScraperWiki-based SQL query endpoint and client bindings for a variety of languages.

ReGENESIS is powered by a collection of Python scripts [available on GitHub](https://github.com/pudo/regenesis). 
The scripts will first scrape bulk data exports from the official site and store them 
locally. These are then processed and loaded into a database, retaining a rich set of
metadata as well as the actual observations. Then, the database contents are dumped to
CSV file extracts, two for each dataset:

* A *researcher's version* with human-readable column names that make it easy to use in
  a spreadsheet program for manual analysis.
* A *raw version* with more detail and machine-friendly column names, easier to 
  parse for further processing.

Finally, Flask helps render a simple user interface to flat files to represent the
metadata. Finally, the entire site is uploaded to Amazon S3 so that no server is
required to serve any of the content. This makes ReGENESIS easy to maintain, all I
need to do is run the extractors once a week to make sure that we're offering the
latest data.

<div class="captioned">
    <img src="http://blog.nerdular.com/wp-content/uploads/2013/05/key_art_regenesis.jpg" class="img-responsive">
    <div class="caption">
        Not really related, but that TV show was a lot of fun. 
    </div>
</div>

### Whats next?

Obviously, ReGENESIS is in a very early prototype stage and a lot of the use cases 
and usability hasn't really been ironed out at yet. Beyond that, there are plenty
of ideas for the future.

**Go federal**: At the moment, I'm only importing data from the Regionalstatistik portal which publishes
statistics from state level authorities. The much larger GENESIS database operated 
by the federal statistical office has its bulk export function locked down and 
requires a EUR 500 annual subscription. Maybe this could be an opportunity for an open
data kickstarter? 

**Have an API**: ReGENESIS holds some fairly large tables, and in order to pull them into 
interactive graphics or other client applications it would be nice to serve filtered and
aggregated versions instead of the full data. I'm somewhat reluctant to run a server 
for this (something like Stefan Urbanek's [cubes](https://github.com/Stiivi/cubes)),
but most of the hosted data API tools I've checked out so far are either too expensive
or very limited in terms of capacity.

**Rank notifications**: when I pitch    ed ReGENESIS at a data journalism meetup earlier this year, one request 
was to ease access to local statistics for reporters at regional papers. This could, for
example, be done through email alerts which notify journalists when the relative rank of
their regions on any of the major statistics sees significant change. 

**Map it out**: just before this release, I was contacted by [Felix](https://twitter.com/femeb),
one of the [StadtLandCode](http://stadtlandcode.de/) grantees. He's been working on getting
regional statistics for a while and has [done a lot of
mapping work](http://blog.opendatalab.de/hack/2013/07/15/heilbronn-regionalstatistik-visualisierung/)
to generate customized maps from the data. As the ReGENESIS gives him the data in the form 
he needs, we've agreed to cooperate on integrating his GeoJSON map layers with the service.

Of course, I can't do all of this on my own. That's why I'm releasing this early: **for you 
to get on board now and to try it out, to contribute your use cases and, of course, your
code!** 

