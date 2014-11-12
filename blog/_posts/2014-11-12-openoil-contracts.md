---
layout: post
title: "Oil Rush on Edgar Creek"
author: Friedrich Lindenberg
opennews: false
description: >
  I've worked with OpenOil in an effort to find oil contracts which have been been published as part
  of filings to the US stock exchange regulator, the SEC. While these
  contracts are not usually public, companies are required to file full
  contract documents as part of their annual reports under certain
  conditions. 
---

Over the past month, I've worked with [OpenOil](http://openoil.net) in an effort to find oil contracts which have been been published as part of filings to the US stock exchange regulator, the SEC. While these contracts are not usually public, companies are required to file full contract documents as part of their annual reports under certain conditions. 

The OpenOil team, Johnny West, Anton Rühling and Don Hubert, had already located a good number of contract filings on the SEC's EDGAR system, as well as it's (captcha-crippled) Canadian twin, SEDAR, through manual searches. At the same time, we wanted to follow a systematic approach to check each EDGAR filing since 1995 by an oil company for any published contracts. 

After experimenting with a smaller sample of filings to prove the concept, we decided that downloading and processing the full set of documents to our computers would take up too much time (there's several terabytes of filings on EDGAR). Instead, we used Amazon's [Elastic MapReduce](https://aws.amazon.com/elasticmapreduce/) service as a ten-machine scraping cluster to download the full filings to [S3 cloud storage](https://aws.amazon.com/s3/). 

Having retrieved the filings and split out those related to hydrocarbon-related companies, we started experimenting with different methods to score the documents that looked like oil contracts. In total, we evaluated three different approaches:

* A manually composed list of weighted search terms. This was our initial approach, and it worked quite well; although it largely failed to isolate the interesting host government contracts from around the world and the much more common contracts between private companies in the US. 

* Using a manually curated list of true positives, we attempted to train a Bayes classifier to recognise the contracts based on n-grams (sets of two, three, four or five words occurring together). The idea was essentially to build a spam filter for oil contracts, but the results turned out to be flaky: some runs would yield an excellent precision, while others misclassified the vast bulk of the documents. Most likely, the small number of reference contracts we had was not enough to properly train the algorithm.

* Finally, Johnny proposed a 'watershed' algorithm which searches for n-grams that occur in oil contracts, but never in any of the other filed documents. Those terms were sometimes surprising, from "b map" (apparently a map of the area is often located in appendix B), to "year means a period of twelve" (giving unwanted insight into the degree to which these contracts are an offence to common sense).

While I was initially critical of this approach, it turned out to give results that were as good - if not better - than the manual set of search terms. An interesting result, I guess, of the highly formalised and related language of these contracts.

The results of this ranking were often interesting: instead of contracts from the countries I'd expected (Africa and the Middle East), we saw contracts from China, India and many other places that are less associated with the extractive industries come to the top of our result sets.

It was also a surprise to find the company subsidiaries of many major extractives companies filed alongside the contracts - a valuable resource that may serve us as a sample case in a document-to-network machine learning experiment in the future.

To me, this SEC mining expedition has been a favourite type of open data project: not only have I learned a lot about the extractive industries - one of the largest forces in shaping the development of many countries - but I've also gained some experience in applying techniques commonly used in big data analytics to an open data problem (and it works!).
Let's do more of those!

Oh, and feel free to play with our scripts: [pudo/edgar-oil-contracts](https://github.com/pudo/edgar-oil-contracts) (Hint: there's more than just oil companies out there!)

