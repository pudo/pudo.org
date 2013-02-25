---
layout: post
author: Friedrich Lindenberg
title: DataFreeze - scripted static data exports
opennews: true
#published: false
---

Every hour, [Spiegel Online](http://spiegel.de) serves more than half a million visitors. To
make that work, all content has to be served via a CDN. For data-driven 
applications that means: no dynamic queries can be served easily, data 
needs to be static. This doesn't need to be a showstopper for great
content, sites like the [UNDP data explorer](http://open.undp.org/)
demonstrate that often, a set of JSON file is enough to power a great
project. 

[DataFreeze](https://github.com/spiegelonline/datafreeze) facilitates
the creation of such applications by freezing relational data from a 
SQL database into a set of easy-to-use JSON and CSV files. What data is
included gets controlled by a Freezefile - a simple YAML or JSON file
that specifies queries, output file names and formats. A sample
Freezefile would look like this:
  
    common:

      database: "postgresql://user:password@localhost/operational_database"
      prefix: project/data/
      format: json

    exports:

      - query: "SELECT id, title, date FROM events"
        filename: "index.json"

      - query: "SELECT id, title, date, country FROM events"
        filename: "countries/{{ "{{country}}" }}.csv"
        format: csv

      - query: "SELECT * FROM events"
        filename: "events/{{ "{{id}}" }}.json"
        mode: item

Of course, all of this is not a very hard problem to solve - but
DataFreeze does it in a clean and simple way that invites you to
document your workflow so it becomes repeatable by others.

Check out the GitHub repository: [spiegelonline/datafreeze](https://github.com/spiegelonline/datafreeze).

