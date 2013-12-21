---
layout: post
title: "Charting Social Network Analysis Tools"
author: Friedrich Lindenberg
opennews: false
---

<em>This post is a cross-post from the <a href="http://untangled.knightlab.com/readings.html">Knightlab's new Untangled</a> site, a set of resources around social network analysis for journalists.</em>

<p>Working on <a href="http://pudo.org/#code">different open data projects</a> throughout the last years, I kept coming back to the idea that there should be an intermediate layer for analyzing and contextualizing data. Such a system would help researchers, journalists and other non-technical users to extract knowledge from a variety of sources. It would enable them to generate an overview of how the people, institutions and companies that are part of virtually any data from a political or economic context relate to each other.</p>

<p>The <a href="http://www.mediaparty.info/">Hacks/Hackers Media Party</a> in Buenos Aires this year was an event designed to bring together developers and reporters and to discuss what technology can do to enable better journalism. After a session on network analysis where we explored the many existing and emerging tools and platforms I started an ongoing collection of initiatives related to this topic.</p>

<p><a href="https://docs.google.com/spreadsheet/ccc?key=0AplklDf0nYxWdFhmTWZUc0o0SzAzMkRuMTZCUVBVeHc&amp;usp=drive_web#gid=0">The survey</a> focuses on a short description of the projects, distinguishing between a few basic types of efforts (libraries and tools, web platforms, desktop software or data standards), and linking out to the project pages and any available documentation. Since I'm interested in reusing these tools, I also introduced two columns to mark up which tools were open source, and which content (i.e. The network data itself) was <a href="http://opendefinition.org/">licensed openly</a>.</p>

<p>What fascinates me most about this survey is that it reflects the range of objectives and methods that people have started to explore within the field of network analysis. From visualization tools such as <a href="http://sigmajs.org/">sigma.js</a> and <a href="https://immersion.media.mit.edu/">Immersion</a> to data-mining projects like <a href="http://mapa76.info/">Mapa76</a> and from commercial apps such as <a href="http://connectedchina.reuters.com/">ConnectedChina</a> to open standards such as the <a href="http://popoloproject.com/">Popolo Project</a> and <a href="https://github.com/poderopedia/PoderVocabulary">PoderVocabulary</a>, people are experimenting wildly. Some of the tools listed have little in common with each other, while others are nearly exact copies of each other, written in a different programming language or using different database backends.</p>

<p>Based on this survey, it seems to me that there are a few efforts that could benefit many of the approaches that people seem to be working on:</p>

<ul>
<li><p><strong>Converge on APIs for web tools. </strong> For web-based platforms, there are many reasons why each power mapping effort would want to have a bespoke interface to represent its data in an appropriate form. Yet many of these efforts could easily share a common API and back-end. The fact that this hasn't happened yet, even though many of the initiatives are clearly aware of each other, is most likely owed to the lack of maturity in existing projects.</p></li>

<li><p><strong>Develop clearer interaction models. </strong> For most of the content-centric efforts in the list, it's not really clear what one would <em>do</em> with them. While sites like <a href="http://poderopedia.org/">Poderopedia</a> and <a href="http://quienmanda.es/">QuienManda</a> allow users to contribute further information about relationships and connections, there is little explanation as to when and how one would get information out of them.</p></li>

<li><p><strong>Link people and organizations across different databases. </strong> Being able to identify a single person across multiple databases would be a useful way to support investigations and to work towards further forms of interoperability in the future. Unfortunately, few of the people and companies in such databases meet the relevancy criteria of Wikipedia (and <a href="http://dbpedia.org/About">dbPedia</a>), or appear in other authority data.</p></li>

<li><p><strong>Package platforms for news organizations. </strong> While embedded as an <a href="http://opennews.org/">OpenNews</a> fellow at <a href="http://spiegel.de">Spiegel Online</a>, I tried to set up a network mapping platform for the organizationâ€™s fact-checking team. Unfortunately, doing this is no simple task, since most packages have a variety of hard-coded settings and do not lend themselves to easy redeployment. Given the sensitive nature of some of the information that may go into such a system, Software-as-a-Service doesn't seem like an appropriate solution to me.</p></li>
</ul>

<p>I'm sure that some of the tools in the survey will make big steps towards these challenges in the next year, so this is a fantastic time to play with network analysis tools. As part of this, I'm hoping to keep the project listing up to date, so please feel free to add initiatives directly <a href="https://docs.google.com/spreadsheet/ccc?key=0AplklDf0nYxWdFhmTWZUc0o0SzAzMkRuMTZCUVBVeHc&amp;usp=drive_web#gid=0">into the Spreadsheet</a>, and email the <a href="mailto:knightlab@northwestern.edu?subject=Untangled%20Tool%20suggestion">Knight Lab</a> or me with any suggestions!</p>