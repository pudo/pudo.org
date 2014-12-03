---
layout: post
title: "What if journalists had story writing tools as powerful as those used by coders?"
author: Friedrich Lindenberg
opennews: false
description: >
  When software developers write code, they often use tools called IDEs, integrated development environments, that provide contextual information needed to manage the complexity of modern software. What would such a workspace look like, if it were designed for journalism?
---

The last weekend saw the first Al Jazeera <a href="http://canvas.aljazeera.com/">Canvas</a> hackday in Doha. I had the opportunity to work with an amazing team of <a href="https://twitter.com/EvaConstantaras">journalists</a>, <a href="http://www.kasiadybek.com/">designers</a> and engineers to tackle the challenge set by the organizers: re-think the way in which context is used in the production and dissemination of news stories.

The question we were asking ourselves was this: how can we help reporters to have more relevant facts at their disposal, right where they’re writing a story? This would include notes from their previous stories (and stories written by others in their news organization), and relevant data from wide range of global and local data sources.

Our solution to this problem is inspired by the tools that coders use to develop complex software architectures, so-called integrated development environments (IDEs): rather than using a plain text editor, these tools put all the relevant knowledge about the objects in your code and the software libraries relevant to your project right at your fingertips.

<div class="captioned">
    <img src="/assets/images/ide_eclipse.jpg" class="img-responsive" alt="Eclipse"></a>
    <div class="caption">
        Eclipse is a typical IDE for software development, providing the necessary context for coders to write complex software. It's also
        the namesake to newsclip.se, which tries to do the same for journalism.
    </div>
</div>

Applying this to journalism, we ended up building a simple story editor called <a href="http://newsclip.se">newsclip.se</a> which recognizes the people and companies that you are writing about, uses that data to search for records related to them in a wide array of online data sources. This way, journalists are encouraged to manage their notes and research on the platform, where it is easy to recall, expand and share them.

Obviously, I am quite excited about the resulting prototype, and I intend to continue developing it as part of the grano project. While it's worth integrating this with further data sources, and experiment with the ways in which such a system would capture notes, the most interesting aspect to explore is probably a bit more subtle.

<div class="captioned">
    <img src="/assets/images/newsclipse.png" class="img-responsive" alt="newsclip.se"></a>
    <div class="caption">
        Newsclip.se provides contextual information about companies and people to journalists while they are researching and writing a story. 
    </div>
</div>

Most modern programming IDEs hook into a programming language's so-called <a href="https://en.wikipedia.org/wiki/Abstract_syntax_tree">abstract syntax tree</a>, a virtual representation of the elements of a program that is generated from its textual code. In that way, they can advise developers on next steps, and potential inconsistencies and errors in the resulting application. 

What if journalism IDEs could do a similar thing? Rather than just managing notes, they could point out to journalists that they haven't got enough evidence to make a given point, or that a certain person or company has not been investigated thoroughly enough? That a certain point is not relevant to the main point of the story?

This would probably require copious amounts of natural language processing, logical reasoning and semantic analysis - all technologies that are hardly mature enough to be used on complex topics. But it seems to me like there should also be plenty of ways of faking it - of generating context-aware inputs based on a partial of statistical understanding of the story which is being written.

In any case, it seems to me that replacing simple text processors like Microsoft Word with a tool that is more relevant to the challenge of managing the complexity that journalists are faced with is a very relevant project. The two-day hackday at Al Jazeera gives us <a href="http://newsclip.se">a nice prototype</a> to start collecting feedback with.

Thanks again to Philip, Bruno, Heinze, Kasia and Eva for forming such an awesome team! 
