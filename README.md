rdf-i18n
========

Translations of classical RDF vocabularies

## Purpose ##
I know that for W3C recommandations, there is always a link to translations; see also:
http://www.w3.org/2003/03/Translations/ 

but this is only for the W3C recommendations, and only for "external" documentation, not RDF ontology declarations. 

For those vocabularies and ontologies that have only
rdfs:label and rdfs:comment in english (internal documentation), we add translations in other languages.

You may ask: "why bother do this?".
I see at least 2 use cases:

- for input form and display generated from the vocabulary, I18N
labels and tooltips are necessary; see project [semantic\_forms](../semantic_forms)
- for faceted search, I18N labels are useful

We provide just Turtle files.
But there may be scripts to provide other formats.

NOTE: some vocabularies already have I18N information, like DOAP which has internal documentation in english, french, czech, japanese, and spanish.

## Content ##
The files for each vocabulary are located in a directory named after the common prefix for this vocabulary.
A convenient reference for prefixes is http://prefix.cc .
For example the file for french canadian for vocabulary SIOC will be in:

	sioc/sioc.fr_CA.ttl

And (example of URL pattern) the actual Turtle can be downloaded (alas without the right HTTP content type) at this URL:
	http://github.com/jmvanel/rdf-i18n/raw/master/sioc/sioc.fr_CA.ttl

Currently we have:
http://github.com/jmvanel/rdf-i18n/raw/master/foaf/foaf.fr.ttl

## Modus operandi ##

It is possible to use Google translate as a starting point.
When doing this, it's better to use the N-triples syntax; the Google translator would spoil the abbreviated URI's in Turtle.

I you want to contribute with a translation, but don't have the tooling, I can pre-populate the project with a N-triples document in english;
currently there is:
- [foaf/foaf.en.nt](foaf/foaf.en.nt)
- sioc
- dc (Dublin Core)
- rdf, rdfs
- skos
- wordnet

To generate such a file, one way to do, with CWM, for example for SIOC:

	# look for the URL corresponding to the prefix sioc in prefix.cc
	cwm http://rdfs.org/sioc/ns --n3=prs > sioc.nt
	mkdir sioc
	egrep 'rdf-schema#label|rdf-schema#comment|terms/description' sioc.nt > sioc/sioc.en.nt
	rm sioc.nt

To generate such a file, another way to do, with rapper, for example for Darwin-Core:
```shell
	rapper -i rdfxml http://purl.org/dsw/dsw.owl -o ntriples > dsw.nt
	mkdir dsw
	egrep 'rdf-schema#label|rdf-schema#comment|terms/description' dsw.nt > dsw/dsw.en.nt
```
To generate such a file, another way to do, with EulerGUI + CWM, for example for SIOC:

	eulergui sioc: --query filter_label_and_comment.n3
	# enter in CWM arguments: --n3=prs
	# run CWM with CWM button on top left
	# save the content of bottom pannel

The query to filter rdfs:label and rdfs:comment : 

	@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>.
	{ ?S 
		rdfs:label ?L ;
		rdfs:comment ?C .
	} => { ?S 
		rdfs:label ?L ;
		rdfs:comment ?C .
	} .

After using Google translate, fix manually tranlation errors, pass his script, and check N-triples syntax.

	sed -s '1,$s/@en/@fr/' vocab.fr.nt =

## List of I18N translations in Turtle

A related question is: are there established RDF predicates to say :

A translation document for FOAF vocabulary in French is 
http://github.com/jmvanel/rdf-i18n/raw/master/foaf/foaf.fr.ttl

Indeed there is one vocabulary, called lingvoj (http://www.lingvoj.org/ontology).

And each new translation should be added by the translator person to this document using the lingvoj vocabulary :
[translations_list.ttl](translations_list.ttl)

## Powered by rdf-i18n

- [semantic_forms](https://github.com/jmvanel/semantic_forms/wiki/User_manual)

Please paste link to yous application here!
Additionally, you could add a small link "Powered by rdf-i18n" at the bottom of your web pages.

