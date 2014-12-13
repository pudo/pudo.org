---
layout: post
title: "Why influence mapping matters to journalism"
author: Friedrich Lindenberg
opennews: false
description: >
  Building Grano started with a desire to map political and economic influences. Developing it further has made us re-examine our motivations: why would journalists want software to help map out the connections between people in politics and industry?
---

Building Grano started with a desire to map political and economic influences. Developing it further has brought with it a number of questions and re-examination of our motivations behind the tool; actually, why would journalists want software to help map out the connections between people in politics and industry?

The question may sound like a no-brainer - understanding connectivities is key to good journalism - but it's actually surprisingly hard to answer.

## Social Network Analysis and the Counting of Things

Terminology is one source of confusion. Academics refer to this sort of study of influence as *social network analysis* (SNA). The term has proven toxic in journalism for two reasons: first, the phrase *social networks* is largely associated with social media, like Facebook, LinkedIn and Twitter. Use the term, and people immediately expect you to calculate yet another influence score for perma-tweeting tech bloggers - not to explore corruption in government or to understand the globalized corporate structures of the extractive industries.

But if *social networks* are tricky, then *analysis* is even worse. Data journalists generally use the term to sound technical while counting things. Calculate something more complex than an average, and your Pulitzer is virtually guaranteed. But what does *analysis* mean when applied to networks?

The most concrete answer to this question comes from mathematics. The field of graph theory has developed a variety of algorithms to quantify various properties of networks, and scientists like [Albert-László Barabási](http://www.barabasi.com/) have advocated the use of statistical *network theory* as an everything theory that applies equally to epidemology, the web and human society. 

Undoubtedly, it is useful to understand some of the metrics which rank the main connectors in a network, as well as the mechanisms which lead to the creation of so-called *scale-free networks* - network structures in which most of the connections are focussed on a small set of extremely well-connected hubs. But, by itself, these mechanisms do not produce news. At best, network metrics will tell us where to look, not what the story is.

The value of statistical network analysis is further reduced by the subject of our analysis: while we might sometimes be lucky to study a single, consistent database of company ownership, much more often, the data we're exploring is assembled through badly-used reporting mechanisms, and, sometimes, manual collection. Running statistics on these networks will unfortunately tell us much more about the way we got the data than about the subjects of our journalistic inquiry.

## The Society of the Mind

Much of the appeal of networks as a tool for journalism comes from an intuitive resemblance between the notion of networks and the cognitive process of an investigation. Understanding who links to whom and what evidence there is for each connection is key to the forensics of social interaction. **Networks provide us with a great metaphor.**

It's too bad, though, metaphors don't make great software. Instead, we must conceive pieces of software that can support the mental process of influence mapping, without falsely presuming to transfer the whole - quintessentially human and journalistic - activity into an algorithmic problem. Our goal must be to understand and address weaknesses in the way investigators structure their information. 

After spending some time talking to investigative journalists, I believe the information challenges they face can be loosely grouped into four categories: **searching, connecting, remembering and sharing**.

While I'm not sure that these categories can be separated without overlap, their main virtue is that they define activities, not data types. Looking at many existing influence mapping efforts, it seems clear that it's very easy to get caught in the hamster wheel of data collection without clearly defining why we need the data in the first place.

## Searching

Searching for information is fundamental to any kind of journalism. For investigative reporters, a large number of databases have appeared over the past few years: OpenCorporates, Arachnys or the many data catalogues governments across the world have published.

As the number of available data sources grows, the limiting factor to the precision of the results of a search changes. Instead of being linked to the size of the database ("are the things I am searching for in the searchable index?"), the quality of results becomes a function of the size of the query: how much *contextual understanding* does a search engine have for what their users might actually want to find? In other words: how well does it understand your needs? 

That is why, over the last few years, it has become impossible to operate a successful web search engine without also collecting information about your users through a social network (Google+, I'm looking at you). 

What Google, Facebook and Twitter have recognised is simple: **networks are a great form of context**, knowing the social network of a person searching for information helps to understand their intent when they are sending you a  query.

How does this relate to journalism? Imagine that you typed "BP" into the search box of a journalistic research application. Based on that query, the tool can give you very little information. On the other hand, if a search engine knows that you're looking into a network of politicians in Nigeria, then a search can return information BP PLC's subsidiaries in the country, the terms of their oil licenses and perhaps even media coverage of the meetings in which those were negotiated.

Such context-aware searches can be used to improve a range of search mechanisms, from social media tracking, document mining to web crawling. Journalists should be aware of tools like analice.me, Maltego and the Transparency Toolkit.

The best search, however, is one that you did not have to run. While pulling information will remain crucial to journalism, structured investigations data allows for journalists to receive push updates whenever new information becomes available: company creation, filings to a regulator, political finance and so on.

Tools like Google Alerts, If This Then That and Planning Alerts are already available, and the BBC News Labs' DataStringers project may provide alerts for a much larger set of journalistically relevant data in the future.

## Connecting

Understanding connections between actors is what actually propels an investigation forward, and as I've mentioned before there are a lot of methods available within network analysis: finding the most prominent members of a network, unexpected links between a set of people or companies, or trends over time.

A useful distinction here is between *structural and transactional data*. While structures of families, companies or government change only very slowly over time, other data describes event-like relationships: government purchases, money flows, protests etc. It's usually such transactional behaviour that is of most interest to journalists; but structural connections provide the context to explain why it may have been illicit.

Many of these analytical tasks in exploring networks are fairly abstract, though. Listing all the companies registered at a specific address, or finding companies that share their directors with each other. Some of the best examples of this, therefore, aren't necessarily visual: Facebook's graph search is probably the most advanced query tools for network data but it relies on an entirely tabular display of data.

The display of network data in automatically laid-out node graph diagrams usually provides little value in answering journalistic questions. Automatically generated network diagrams have become the clip-art representation of 'knowledge', but few of them actually illuminate their subject matter. Gephi, a tool that is well known for its visualisation capabilities, offers many advanced graph analysis algorithms and filters, but struggles to integrate them with the visual network diagram.

Most commercial tools in this space, such as IBM's i2, and Palantir's Gotham therefore seem to focus on manually laid-out network graphs. Similarly, VIS (Visual Investigative Scenarios) is an open source tool for mapping out an investigation by hand.

## Remembering & Sharing

Reg Chua, an Editor at Thomson Reuters, advocates the idea of structured journalism. His aim is to change journalism so that its results are re-usable pieces of knowledge, rather than stories that lose most of their value the day after their initial release. One way to achieve this, obviously, is to structure stories as a hybrid between a narrative and an influence map.

There are three reasons to do this: firstly, structured stories would provide a valuable research database for journalists researching related stories. Secondly, managing structures for each story allows for tailored presentations for different audiences or even individual readers, for a presentation that changes over time as a story progresses. They might provide additional revenue streams. Do these add up to provide enough benefit to justify the additional effort needed to structure journalistic output?

The first aspect - a research tool - is the most plausible, but it would probably meet some resistance from within the profession. Yet the growing number of cross-border and cross-newsroom investigations is an indicator that the lone wolf model of journalism is being replaced by a new, more collaborative approach.

Collaboration is hard, and being able to query each other's investigative memory at least in a semi-automated way would provide enormous benefits. A broad range of organisations are experimenting with such approaches: the Sunlight Foundation and OpenOil as civil society groups, but also the OCCRP's People of Interest database, and ICIJ's OffshoreLeaks search engine.

Reuters' ConnectedChina project is another example of published journalistic output. More than that, though, it is also an example of how influence mapping can be used as a narrative device - allowing users to browse a complex system while also providing stories and structure that help the viewer to interpret the presented information.

In this regard, it has been far more successful than similar projects like Poderopedia, QuienManda or OpenDuka which hold similar information but struggle to contextualise it with reporting and visitor guidance. US-based LittleSis.org has made an interesting transition from pure database to storytelling through its Oligrapher tool. 

The final assertion - that structured journalism could also be a source of revenue - has not yet been proven. Many journalists we've spoken to have been very reluctant to share their research with business, whether it is for business intelligence, due diligence or other purposes. Finding an acceptable model seems challenging, but the chance to escape the online advertising market is attractive.

## What we can build

Having explored these different types of activities in which influence mapping might benefit journalism, there still appear to be plenty of niches for new software tools: whether in terms of contextual search, graph exploration or public knowledge management. Unfortunately, the economics of open source software development won't allow us to go ahead and build the one tool to satisfy all of these use cases. That would probably cost a few million dollars and is more likely to fail than not. 

Instead, we've chosen to explore the future of the Grano platform by conducting several experiments, researching some of the challenges I've sketched out which seem particularly interesting: the enrichment of data based on public databases, improving the linkage of narratives and influence maps by blurring the boundaries between both, and improving the way that people can use networks information to sketch out their stories.

Our first experiment is a search tool that conducts a structured investigation of company and directorship data across a set of public databases. Please try out an early prototype, called [loom](http://loom.grano.cc), and send us any feedback you might have for that application.

A second experiment will be called [storyweb](http://github.com/granoproject/storyweb), an internal-use story management tool that invites reporters to make semi-structured notes about people, companies and the ties between them while they write their story. The tool will combine manual research and structured data to provide relevant context for reporters as they write their stories.

The resulting ecosystem will be one of 'small pieces loosely joined': many small components that serve one purpose, and serve it well. They could be linked through a set of interchange formats - a number of which already exist. 

Perhaps a future of structured and linked journalism is nearer than we think?
