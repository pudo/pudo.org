---
layout: post
title: "Keeping stock: investigative data warehouses"
author: Friedrich Lindenberg
description: >
    Data warehouses are used in industry to manage the many datasets accrued
    inside a company that might be relevant to reporting and analysis. I want
    to propose a similar pattern for investigative journalism.
---

In this post I want to describe a design for investigative databases. Unlike
the tooling that I've been working on for influence mapping projects, this
approach is intended to be simple, reliable and extensible.

The basic idea is to make sure that all data sources are loaded as tables in a
shared, relational database. This includes both large data sources (e.g.
company registries) and small snippets of data with only a few lines. And
that's basically it, too: no user interface, no complex data modeling, no
cloud hosting.

While such a database isn't of direct use to journalists, it can be a working
bench for data scrapers and developers who want to explore the data. Even
better, analysts can quickly generate reports for journalists using ad-hoc
queries. This way we can begin to analyze the data before investing time into
fancy visualizations and interfaces.

Even better: the database you're building will stick around as you enter new
investigations, and you will be able to quickly try out a fuzzy join and see
if any of the companies in this week's dataset also turn up in a past list
(or a large database of permanent value). In this way, the data store can
become a first step towards a journalistic memory, a long-time archive of
relevant knowledge.

I first used this pattern for data sites, such as OpenInterests.eu. While the
resulting sites contained a lot of data, when asked an analytical question, I
would often prefer to query the staging database, rather than using the web
site. With the explorative Mozambique extractives project, I finally began to
realize that such a raw data warehouse could actually be the primary output of
a project, rather than just a useful step on the path there.

<div class="captioned">
    <img src="/assets/images/mozdwh.png" class="img-responsive" alt="Mozambique data warehouse">
    <div class="caption">
        A variety of data sources relevant to exploring extractive industries in Mozambique.
    </div>
</div>

While it is far removed from the hipster universe of civic data, I believe that
the world of [enterprise data warehousing](http://www.kimballgroup.com/) has a
lot to teach us. I first learned about business intelligence while working on
[OpenSpending](http://openspending.org): a financial dataset should be subject
to strict data governance and exist in a normalized form in a database,
prepared for analysis.

But while data warehousing principles dictate that the database be perfectly
clean, they also talk about [operational data stores](https://en.wikipedia.org/wiki/Operational_data_store), interim databases in
which data is loaded, cleaned and enriched in a fairly ad-hoc manner. This
might offer a better metaphor for what I'm proposing: a very large, and
evolving workbench of data.

Some basic rules for such an investigative data warehouse might be:

* Keep all the source files (whether they are HTML pages, PDF documents, or
  API call results) in a public cache that you can link to. One of the most
  surprising results of the [Siyazana](http://siyazana.co.za/) project has been how quickly link rot
  turned the detailed sourcing of all data on the site nearly useless.
* Keep [Makefiles](https://github.com/ANCIR/mozambique/blob/gh-pages/Makefile) for fetching, cleaning and loading the data into the
  data store. The point is to have a well-documented workflow that makes it
  easy to understand the source of a particular table and to re-create the
  whole database if needed.
* Load a full source dataset into one or multiple tables, but never into a
  table that holds information from another source (even if the schema is
  similar or identical).
* Keep the original data in each table, and add derived or cleaned information
  in extra tables or columns. If you want to delete entries, use a flag instead
  of actually deleting rows.
* Do not integrate data without necessity. Don't try and make sure that all of
  your tables join up perfectly before you ever load them. Load the source form
  and then add linkages and join tables as you learn that you actually have a
  need for them.

These are obviously very basic rules, but they've proven useful in some projects
now, where they've helped to create a valuable database beyond the scope of a
single inquiry.
