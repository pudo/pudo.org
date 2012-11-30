---
layout: post
title: Organisational IDs inside government - publicbodies.org
---


The final event of last week's Open Government Data Camp in Warsaw was a workshop on 
organisational identifiers. While the bulk of the conversation revolved around IDs
for companies and charities, this also prompted me to continue work on publicbodies.org.
I had proposed and registered this site a few months ago after cleansing the UK's 
departmental spending data. 

While the [25k data](http://openspending.org/dataset/ukgov-25k-spending) is a great source of information, the data quality is very low. In particular, it has two fields called "Department Family" and "Entity" that reference the responsible department and public body disbursing the funds, respectively. The content of these fields is just text, leading to a large number of different spellings not only of the word "Health" but of department and entity names in general.

The solution to this is obviously Chris Taggart's [OpenCorporates.com](http://opencorporates.com): generate a unique
REST resource for each public body and provide a reconciliation API to fuzzy match surface
forms to these entities. So, let me present to you: [publicbodies.org](http://publicbodies.org). The site currently
contains data from the best sources on public body identities I could find, freedom of 
information request sites. With a quick bit of research, this gave me German public 
bodies, UK entities and EU insitutions (with names in multiple languages).

While the service is very usable as is (I've just reconciled the EC's Financial 
Transparency System and a sample of the UK spending), there are still some tasks left:

* Map national identifier systems to the scheme and support their resolution. Currently, 
  the site is using random IDs prefixed with the country code of the entry.
* Creating redirects to similar resources, such as [data.gov.uk's reference project](http://data.gov.uk/dataset/single-data-list-for-central-government-departments).
* Needs to look nicer. 

If you have public body information from another jurisdiction (or would be willing to
merge additional information into the existing dataset), have a look at the [main schema](http://webstore.thedatahub.org/pudo/publicbody/entity) and the [alias table](http://webstore.thedatahub.org/pudo/publicbody/alias) to see how the data should be 
formatted. I'm happy to add other fields to the entity schema, though.


