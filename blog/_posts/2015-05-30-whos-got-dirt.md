---
layout: post
title: "Who’s got dirt? - What if robots could do cross-border investigations?"
author: Friedrich Lindenberg
opennews: false
description: >
  If we want to make open data relevant to investigative journalism, we have to simplify the way people access it. We must create a way for our data tools to talk to each other and trade information about the companies and people we are researching.
---

*This is a [cross-post from IJNet](https://ijnet.org/en/blog/who%E2%80%99s-got-dirt-what-if-robots-could-do-cross-border-investigations).*

Cross-border investigative journalism has been much discussed in recent years. Working with the [African Network of Centers for Investigative Reporting](http://investigativecenters.org/) (ANCIR), I got a chance to observe that process when two reporters from Italy’s investigative reporting project (IRPI) came to visit South Africa to [trace the business interests of the Italian Mafia](https://correctiv.org/en/investigations/mafia-africa/) in the country.

IRPI’s Cecilia Anesi and ANCIR’s Khadija Sharife would spend hours running names by each other: “Do you know X?” -- “Yeah, real estate guy in Cape Town.” -- “In Italy, he’s Cosa Nostra. We have lots of court documents about him from the nineties”.

Gradually, both journalists started to match up their understanding of the network of Mafia, politicians and business people they were looking at. While this process requires a lot of effort, it addresses the challenge of how a transnational investigation can incorporate the most relevant local context in each country it covers. Organizations that master this process, such as the [International Center for Investigative Journalism](http://icij.org) (ICIJ) and the [Organized Crime and Corruption Reporting Project](http://occrp.org) (OCCRP), have delivered some of the most compelling journalism in our industry.

To support such in-depth investigations, I’ve worked on a number of database projects for investigative journalists, opening up public information in countries from Germany to South Africa and Mozambique. With the growing trend towards open government data, the availability of bulk data has soared in many countries and topical sectors.

Unfortunately, using these databases also requires a lot of context: if you’re looking for information on politicians in Chile, visit [Poderopedia](http://poderopedia.org), in South Africa, go to [Siyazana](http://siyazana.co.za). For company info, go to [OpenCorporates](http://opencorporates.org), but also all of the databases listed on [Investigative Dashboard](http://investigativedashboard.org). Public contracts in Europe you can find on [OpenTED](http://ted.openspending.org), except Slovenia and Slovakia, which have better in-country databases. Are you making notes? This gets confusing fast, and the landscape changes with every month.

Shouldn’t the web and open data make things simpler, rather than confusing us? Isn’t collecting all that data from so many different places a job for machines, rather than humans?

If we want to make open data relevant to investigative journalism, we have to simplify the way people access it. We must create a way for our data tools to talk to each other, to ask each other the exact question that journalists ask in cross-border investigations: “Do you know X? What can you tell me about them?”

Creating such a common function, a data API that we’ve begun to call “Who’s got dirt?” is one objective of the [Influence Mapping](http://influencemapping.org/) project, funded by the Open Societies Foundation. This group brings together technologists, researchers and journalists to develop a simple way to “enrich” basic information about people and companies from multiple sources.

<div class="captioned">
    <a href="http://influencemapping.org">
        <img src="/assets/images/mappers.jpg" class="img-responsive" alt="Influence mapping team">
    </a>
    <div class="caption">
        Influence mappers gonna map influence.
    </div>
</div>


The founding members of the group, the American Assembly at Columbia University, OpenCorporates, LittleSis.org, Poderopedia, OpenNorth.ca and the Grano Project, which I worked on as part of my fellowship, are focused on sharing data openly. For investigative projects, however, a variation of this mechanism could be used for confidential data sources, such as leaked documents and databases. Here, the response would not be a set of matching records, but a simple response to indicate if information is available -- and whom to contact.

What would that mean in practice? During the [Al Jazeera Canvas Hackathon](http://canvas.aljazeera.com/) in December, I worked with a group of developers, designers and journalists to create a prototype called [Newsclip.se](http://www.newsclip.se/), a story development tool for journalists that scans your notes as you write them, detects mentions of companies and people and then finds relevant leads in open databases that you can explore to deepen your research. 

While Newsclip.se is just a demo for now, “Who’s got dirt?” will enable many tools to assist your research -- from network analysis tools like [detective.io](http://detective.io), to simple entity watch lists that continuously search information about company ownership, court cases, land and mining rights or family relations.

If we manage to build momentum around this collaborative notion, perhaps cross-border journalism will soon have a smaller robot brother: the cross-database investigation. 
