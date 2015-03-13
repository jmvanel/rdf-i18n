# raw RDF version of WOLF french WordNet

raw RDF version of WOLF french WordNet translation from http://alpage.inria.fr/~sagot/wolf.html : wolf-1.0b4.xml.ttl 
    (obtained by Gloze canonical XML-RDF mapping through EulerGUI,
    and slightly edited the "root" and WOLF URI)

# mashup with english WordNet in RDF

The command for Euler is:

    /opt/eye/bin/eye.sh --nope --query rawWOLF2wordnetRDF_prolog.q.n3 \
        rawWOLF2wordnetRDF_prolog.n3 \
        wolf-1.0b4.xml.small.ttl \
	$HOME/data/nlp/rdf_wordnet-synset.ttl > wordnet-synset.fr.ttl

The file wordnet-synset.fr.ttl will then contain the rdfs:label's for the Wordnet synsets.
The file wordnet-synset.ttl comes from here:
http://eculture.cs.vu.nl/git/public/?p=vocs/wordnet.git;a=tree;f=rdf;hb=HEAD 

NOTES:
- the ID is not exactly the same in WOLF french WordNet and in original english WordNet in RDF;
see [test.ttl](test.ttl)
- wolf-1.0b4.xml.small.ttl just 10% of the real data wolf-1.0b4.xml.ttl , which I had trouble to commit, and anyway it's just a generated file.

WOLF french WordNet in RDF looks like:

    [ # ...
     <http://alpage.inria.fr/sagot/wolf#DEF>      "the extreme end of something; especially something pointed" ;
                 <http://alpage.inria.fr/sagot/wolf#ID>       "eng-30-08663156-n" ;
                 <http://alpage.inria.fr/sagot/wolf#SYNONYM>  [ <http://alpage.inria.fr/sagot/wolf#LITERAL>
                                   [ <http://www.w3.org/1999/02/22-rdf-syntax-ns#value>
                                             "pointe" ;
                                     <http://alpage.inria.fr/sagot/wolf#lnote>  "2/1:fr.roen;gwa2012(0.10332735028424223922);ManVal2012OK"
                                   ] ;
which corresponds in WordNet in RDF to :

	wn30:synset-tip-noun-1 a wn20schema:NounSynset .
	wn30:synset-tip-noun-1 rdfs:label "tip"@en-us .
	wn30:synset-tip-noun-1 wn20schema:synsetId 108663156 .

# Turn the synsets into RDF properties
The command for Euler is:

    /opt/eye/bin/eye.sh --nope --query wordnetRDF2properties.n3 wordnet-synset.fr.ttl \
	~/data/nlp/wordnet-synset.ttl > wordnet-synset_as_properties.ttl
