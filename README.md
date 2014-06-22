rdf-i18n
========

Translations of classical RDF vocabularies

For those vocabularies and ontologies that have only
rdfs:label and rdfs:comment in english, we add translations in other
languages.

You may ask: "why bother do this?".
I see at least 2 use cases:

- for input form and display generated from the vocabulary, I18N
labels and tooltips are necessary
- for faceted search, I18N labels are useful

We provide just Turtle files.
But there may be scripts to provide other formats.

The files for each vocabulary are located in a directory named after the common prefix for this vocabulary.
A convenient reference for prefixes is http://prefix.cc .
For example the file for french canadian for vocabulary SIOC will be in:

	sioc/sioc.fr_CA.ttl

And the actual Turtle can be downloaded (alas without the right HTTP content type) at this URL:
	http://github.com/jmvanel/rdf-i18n/raw/master/sioc/sioc.fr_CA.ttl

Currently we have:
http://github.com/jmvanel/rdf-i18n/raw/master/foaf/foaf.fr.ttl

It is possible to use Google translate as a starting point.
When doing this, it's better to use the N-triples syntax; the Google translator would spoil the abbreviated URI's in Turtle.

