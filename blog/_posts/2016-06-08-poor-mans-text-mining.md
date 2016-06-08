---
layout: post
title: "A Poor Journalists's Text Mining Toolkit"
author: Friedrich Lindenberg
published: false
description: >
    How can journalists search and analyze collections of documents on their own computers with simple tools? At last 
    weekend's DataHarvest, we ran a workshop trying to answer that question. This write-up to covers using Apache Tika
    for content extraction and regular expressions in Sublime Text as an advanced search tool.
---

How can journalists search and analyze collections of documents on their own computers with simple tools? At last weekend's DataHarvest, [Robert](https://t.co/rYOJ7vfo4s) and I ran a workshop trying to answer that question. Since people were seemed interested, I decided to do a write-up to cover the two key tools we worked with: Apache Tika for content extraction and regular expressions in Sublime Text as an advanced search tool.

So, here's the scenario: a source has given you a USB drive, filled with all the proof you need for a great story. Or, perhaps, you used [DownThemAll!](http://www.downthemall.net/), [wayback machine downloader](https://github.com/hartator/wayback-machine-downloader) or [wget](https://en.wikipedia.org/wiki/Wget) to grab a bunch of documents from a government web site that you want to sift through.

Let's assume that you've got a folder docs - if you don't [here's something to play with](http://data.pudo.org/misc/journo-document-toolkit.zip): a collection of all the sanctions issues by the European Union.

But what's next? You may need to search the documents for the names of people and companies, find mentions of dates to construct a timeline, or perhaps you want to search for details like bank account numbers or email addresses?

Of course, you can go and buy NUIX for a few thousand bucks, or try to find out which [desktop search engine](https://en.wikipedia.org/wiki/List_of_search_engines#Desktop_search_engines) is the least crap (hint: they all are). Before you do that, though, why not try a few free, simple tools?

## Converting documents to text files

The first hurdle you'll have to overcome has to do with how computers store data. When you make Word documents, PDFs, presentations or spreadsheets, the program doesn't just need to store text, but also a lot of information about layout, who's been editing what and so on.

To store this data, applications encode documents in complex file formats. This makes it hard to search a bunch of those files at once without opening each using it's own program. Instead, we're going to convert all of your source documents into plain text documents: files that contain nothing but text - no layout, no track changes, no images. 

[Apache Tika](http://tika.apache.org/) does just that. It's a Java program that recognizes many types of documents and pulls out the text. It's the engine that was used by ICIJ to make the Panama Papers accessible.

<div class="captioned">
    <img src="/assets/images/tika_cli.png" class="img-responsive" alt="Tika doing Tika">
    <div class="caption">
        Converting documents to text files in bulk with Apache Tika 
    </div>
</div>

In order to use it for yourself, though, you'll need to know a little bit about how to use your computer's command line prompt. On a Mac, that's the Terminal - while on Windows, it's cmd.exe. I recommend you learn how to visit a particular directory, and how to see what's in a particular folder. Here's a tutorial [for the Mac](http://mac.appstorm.net/how-to/utilities-how-to/how-to-use-terminal-the-basics/) and one [for Windows](http://www.cs.princeton.edu/courses/archive/spr05/cos126/cmd-prompt.html).

Before Tika can do it's magic, you also need to install the Java Runtime Environment from the [Oracle website](http://www.oracle.com/technetwork/java/javase/downloads/jre8-downloads-2133155.html). Additionally, download the ``tika-app`` file from [Tika's home page](https://tika.apache.org/download.html). Put it in a directory with a memorable path, e.g. ``C:\tika\tika-app-1.13.jar`` on Windows or ``/Users/yourname/tools/tika-app-1.13.jar`` on a Mac (the version number might differ, adjust for that).

Then you can run Tika like this (the dollar sign is to symbolize a command prompt on a Mac):

```bash
$ java -jar /Users/pudo/tools/tika-app-1.13.jar —help
```

The bit up till ``tika-app-1.13.jar`` is just to run tika. After that, you can give a number of options that instruct the tool about the specific operation you want to run. ``—help`` is what I used to get the help text about all the other options. 

Based on the output of ``-help``, you can devise new commands, like:

```bash
$ cd /Users/pudo/project/
$ java -jar /Users/pudo/tools/tika-app-1.13.jar -t -i folder_with_documents -o output_files_folder
```

The ``-t`` means: convert the files to text. After that, ``-i`` followed by a directory name gives the input directory with the original documents. ``-o`` is followed by the name of an output directory for the resulting text files. This will be created automatically.

This will generate a new folder (``documents_text``) with all the documents converted to plain text. If you also want to look at the metadata (author, ...), you will want to run something like this instead:

```bash
$ java -jar /Users/pudo/tools/tika-app-1.13.jar -m -i folder_with_documents -o output_metadata_folder
```

This will again create a bunch of text files, this time with metadata. 

Note that this by itself does not handle images and image-PDFs. For that, you’ll need to install [Tesseract](https://github.com/tesseract-ocr/tesseract/wiki), an OCR tool. I haven’t found a simple write-up for how Tika and Tesseract work together yet, hopefully I'll get around to that soon. If you’re feeling lucky, [here’s a page about it](https://wiki.apache.org/tika/TikaOCR). 

## Searching the text documents for patterns

dsdssd


## Further reading

* [Learn Regular Expressions the Hard Way](http://regex.learncodethehardway.org/book/)
* [RegexOne](http://regexone.com/)

--- 

This post is intended to teach a bit about the command line, Tika, and regular expressions. If you actually need to deal with a sensitive leak, you might want to a) try out [Open Semantic Search](http://www.opensemanticsearch.org/), or b) work with a techie.












