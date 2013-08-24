---
layout: post
title: "Update on ReGENESIS: API and Slides"
unlisted: false
author: Friedrich Lindenberg
opennews: false
#published: false
---

It's been two weeks since I've first blogged about <a href="http://regenesis.pudo.org/regional/index.html">ReGENESIS</a>, and
the project has gathered some very positive feedback. I've been able to present the site to a number of people and to extend 
the functions of the site. Here's a few quick updates:

### JSON API for statistics

One of the key value propositions of ReGENESIS had been the option to get live statistical data and to use it to quickly 
render out visualizations and charts. This means providing functions like filters, aggregations and web data formats like 
JSON.

I'd initially been relucant to run an API server for ReGENESIS, but I've now come to believe that creating a purely flat-file
driven interface is not possible. That's why I've now extended the package to generate configurations for Stefan Urbanek's 
excellent <a href="http://cubes.databrewery.org/">Cubes</a> package.

This service provides a simple, OLAP-inspired HTTP API which can be used to easily access each of the data cubes provided by 
the Regionalstatistik portal. Check out the <a href="http://regenesis.pudo.org/api.html">ReGENESIS API introduction</a>.

### Hacks/Hackers in Berlin

Thanks to <a href="http://blog.annabelchurch.com/">Annabel</a>, I was able to present ReGENESIS at 
this week's Hacks/Hackers meetup in Berlin to an audience of tech and journalism enthusiasts. The pitch was aimed to explain 
the advantages of ReGENESIS data format to non-experts, and to call them to try out the data provided by the service. 

I've embedded the slide deck below. 

<script async class="speakerdeck-embed" data-id="af5d5700eef80130ec5936c3032acb4d" data-ratio="1.33333333333333" src="//speakerdeck.com/assets/embed.js"></script>


### Full set of statistics

Soon after I'd published the initial post about ReGENESIS, people started pointing out that some of the statistics published
on the Regionalstatistik site were missing from the database. This was caused by a bug in the initial scraper, which I've now
fixed. This means the number of datasets published on the site has near doubled, including the availability of electoral 
statistics for many of the German federal states. 

