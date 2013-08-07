---
layout: post
title: "ReGENESIS: German statistics made accessible"
unlisted: true
author: Friedrich Lindenberg
opennews: true
#published: false
---

One of the first tasks I was given by Spiegel Online was to make a set of simple 
maps to display basic statistics about Germany - things like population, unemployment
or insolvencies. As Germany's statistical data are collected in a system called 
[GENESIS](https://www-genesis.destatis.de/genesis/online), I though that this would
be trivial. I'd just have to write a script to grab the tables once a month, convert
them to JSON and thus update the maps.

Unfortunately, the strucutred tables offered by GENESIS are both hard to access 
(through an arcane and untested SOAP interface) and hard to parse. Essentially,
the tables are reports which have been manually composed, and getting out a specific
data point requires you to pretty much write a dedicated parser for each table.

So I decided to solve this issue properly and make [ReGENESIS](http://regenesis.pudo.org),
a toolkit for extracting clean and well-structured data from the German statistical
services. This was inspired by some great examples of similar projects other
countries: [Census.IRE.org](http://census.ire.org/) provides a lot of structured
data around the US census, and the [CensusReporter](http://censusreporter.tumblr.com/)
project is now thinking this through a lot further. I'm also really impressed by the work that [Brian](http://brianabelson.com/) and the [@csvsoundsystem](http://csvsoundsystem.com/) have
been doing on [treasury.io](http://treasury.io/), a convenient data source with a
ScraperWiki-based SQL query endpoint and client bindings for a variety of languages.

<div class="captioned">
    <img src="http://blog.nerdular.com/wp-content/uploads/2013/05/key_art_regenesis.jpg" class="img-responsive">
    <div class="caption">
        Not really related, but the TV show Regenesis was very fun. 
    </div>
</div>

I used bulk export yada yada...

Generate to S3.


Ideas for next steps

**More data**: At the moment, I'm only importing data from the Regionalstatistik portal which publishes
statistics from state level authorities. The much larger GENESIS database operated 
by the federal statistical office has its bulk export function locked down and 
requires a EUR 500 subscription for access to that functionality. Maybe this could 
be an opportunity for an open data kickstarter? 

**API**: ReGENESIS holds some fairly large tables, and in order to pull them into 
graphics or other client applications it would be nice to be able to get filtered and
aggregated versions instead of the full data. I'm somewhat reluctant to run a server 
for this (and host something like Stefan Urbanek's [cubes](https://github.com/Stiivi/cubes)),
but most of the hosted data API tools I've checked out so far are either too expensive
or very limited in terms of capacity.



http://blog.opendatalab.de/hack/2013/07/15/heilbronn-regionalstatistik-visualisierung/