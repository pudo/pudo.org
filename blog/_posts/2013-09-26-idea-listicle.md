---
layout: post
title: "5 Project Ideas for News Technology"
#unlisted: true
author: Friedrich Lindenberg
opennews: false
#published: false
---

One aspect of [the fellowship](http://mozillaopennews.org) is to think about the types of
tools that news organisations may find useful in their work. For the past few moneths,
I've been keeping a list of ideas that I feel there might be a need for. None of these
are really new concepts, but they are places in which I feel that none of the existing
technologies are mature enough to work in a newsroom.

**Easy choropleth maps.** While the tools for making maps without coding have gotten much
better over the last year (thanks, for example, to the mapping support in [D3](http://d3js.org/)
and the great [CartoDB](https://cartodb.com/)), I still feel that we're missing an easy
tool to generate interactive choropleth maps. Fusion Tables look really dated now, while
[MapBox/TileMill](http://www.mapbox.com/) are a bit heavy to use for the average
journalist on a tight deadline. Thankfully, [Noah](http://veltman.tumblr.com) has started
working on [MapStarter](https://github.com/veltman/mapstarter), while the
[DataWrapper](http://datawrapper.de) team are also working on an extension of their tool.

**Simple data merge tool.** This one is quite simple, but would be very useful: a tool to
easily join up two datasets across a shared dimension. Of course there's Fusion Tables
(pretty heavyweight), and VLOOKUP/HLOOKUP in Excel (urgh), but none of these have the charm
and simplicity of [Mr. Data Converter](http://shancarter.github.io/mr-data-converter/). A
simple web service where you can upload two spreadsheets, specify their relationship and
then retrieve a single, joined file would make this technique much more accessible to many 
reporters. 

**Data issues.** Jacob Harris' recent [source post](http://source.mozillaopennews.org/en-US/learning/times-regrets-programmer-error/) reminded me of a discussion we had at OKFN about building [an issue
tracker for data](http://pudo.org/blog/2012/07/10/dataissues.html). I have little to add
to Jacob's excellent post, other than that I think a structured approach to to data quality 
management doesn't require fully revisioning the data, but could just work as a logging 
application for ETL scripts - simply creating a place where data wrangling tools could 
report suspicious events to. 


**Search-as-a-service for news applications.** Most of the news apps that I've been working
on recently have been driven by static data, often even through flat HTML pages. This
generally works great, except for search: results must be generated dynamically and require
knowledge of the whole dataset. While there are some in-browser attempts to do search, they 
don't scale very well. Google site searches, similarly, allow for little customization.

<div class="captioned">
    <a href="http://www.spiegel.de/politik/deutschland/wahlprogramm-browser-vergleichen-sie-die-parteipositionen-a-918624.html"><img src="/img/wahlprogramme.png" class="img-responsive"></a>
    <div class="caption">
        Searching election programmes requires a custom backend, but why?
    </div>
</div>

Of course, there are hosted search solutions like [Amazon CloudSearch](http://aws.amazon.com/cloudsearch/),
[bonsai.io](http://bonsai.io) and [websolr](http://websolr.com/) - but none of them support
the kind of read-only, cross-origin query access that would be necessary to link them
directly into news apps. More integreated offerings like [Searchify](http://www.searchify.com/)
can do remote read access, but their pricing model isn't very convincing (to be honest, I'd 
like to see an open source solution to this).

This is why, for a recent [application to browse German party platforms](http://www.spiegel.de/politik/deutschland/wahlprogramm-browser-vergleichen-sie-die-parteipositionen-a-918624.html), I had to default back
to writing a node.js wrapper around Solr.

For more complex news applications, a search service could incorporate additional
functionality, such as Google Alert-style notifications based on stored queries. Implementing
those from scratch is a lot of work for a single news app, but the benefit to the users would
be great.

**A non-coder interaction language.** This one is a bit more abstract than the others, but
it's still an interesting discussion: as our tools for letting non-coders make data visualizations
become more and more powerful, there will be a need to develop a language to describe possible
interactions around a graphic without actually requiring people to code. While we can just re-invent
Flash and Director, there may be more interesting approaches along the lines of [Scratch](http://scratch.mit.edu/)
or [vvvv](http://vvvv.org/) that could be tested out.

**Kanban for news organisations.** While it's not directly related to data-driven journalism, 
one of the more painful experiences I have each day is receiving a link to a Google Doc with
SpOn's news planning. This could really benefit from a bespoke kanban tool that incorporates 
notions such as a developing story, topic desks and different delivery channels. Luckily, our
friends at SourceFabric seem to [already be on the plan](https://wiki.sourcefabric.org/display/NR/Desk).

Of course, this list is fairly random, but what I like about these tools is that they would 
be fairly limited in scope. Other things I've blogged about before, such as solutions to 
[data management](http://pudo.org/blog/2013/08/05/data-management.html) or [social network
analysis](http://pudo.org/blog/2011/12/19/sna.html) seem much harder to pin down and align to 
the needs of news organisations.

Of course, I'd love to hear other people's ideas and pain points: what tools should we build
(or adapt) next? 