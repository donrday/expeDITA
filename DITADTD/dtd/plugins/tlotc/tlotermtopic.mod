<!-- (c) Copyright IBM Corp. 2004, 2005 All Rights Reserved. -->

<!-- ============ Hooks for domain extension ============ -->
<!ENTITY % tlotermtopic	"tlotermtopic">
<!ENTITY % tlotermbody	"tlotermbody">
<!ENTITY % tloterm	"tloterm">
<!ENTITY % tlowhy	"tlowhy">
<!ENTITY % tlowhat	"tlowhat">
<!ENTITY % tloessay	"tloessay">
<!ENTITY % tlosummary	"tlosummary">

<!-- ============ Element definitions ============  (%titlealts;)?, (%shortdesc;)?, (%prolog;)?, (%related-links;)?, (%tloterm-info-types;)* -->
<!ELEMENT tlotermtopic	((%tloterm;), (%prolog;)?, (%tlotermbody;), (%related-links;)?, (%tloterm-info-types;)* )>
<!ATTLIST tlotermtopic	id ID #REQUIRED
			conref CDATA #IMPLIED
			outputclass CDATA #IMPLIED
			xml:lang NMTOKEN #IMPLIED
			%arch-atts;
			domains CDATA "&included-domains;"
>

<!-- Specialize tloterm from title, require three specialized phrases in the title -->
<!ELEMENT tloterm	(%title.cnt;)* >
<!ATTLIST tloterm	%id-atts;
			outputclass CDATA #IMPLIED
			formtype CDATA 'tloterm'
>

<!ELEMENT tlotermbody	((%tlowhat;)?, (%tlowhy;), (%tloessay;), (%tlosummary;)?)>
<!ATTLIST tlotermbody	%univ-atts;
			outputclass CDATA #IMPLIED
			formtype CDATA 'tlotermbody'
>

<!ENTITY % tlosection.cnt	"%section.cnt;"> <!-- was  #PCDATA | %xref; -->
<!ENTITY % tlorichtext.cnt	"#PCDATA | %xref; | %ph;">

<!ELEMENT tlowhat	(%tlosection.cnt;)*>
<!ATTLIST tlowhat	%univ-atts;
			spectitle CDATA "What is it?"
			outputclass CDATA #IMPLIED
			formtype CDATA 'tlowhat'
>

<!ELEMENT tlowhy	(%tlosection.cnt;)*>
<!ATTLIST tlowhy	%univ-atts;
			spectitle CDATA "Why is it important?"
			outputclass CDATA #IMPLIED
			formtype CDATA 'tlowhy'
>

<!ELEMENT tloessay	(%tlosection.cnt;)*>
<!ATTLIST tloessay	%univ-atts;
			spectitle CDATA "Why does a technical writer need to know this?"
			outputclass CDATA #IMPLIED
			formtype CDATA 'tloessay'
>

<!ELEMENT tlosummary	(%tlorichtext.cnt;)*>
<!ATTLIST tlosummary	%univ-atts;
			spectitle CDATA "Summary"
			outputclass CDATA #IMPLIED
			formtype CDATA 'tlosummary'
>


<!-- ============ Element specialization declarations ============ -->

<!ATTLIST tlotermtopic	class  CDATA "- topic/topic	tloterm/tlotermtopic ">
<!ATTLIST tloterm	class  CDATA "- topic/title	tloterm/tloterm ">
<!ATTLIST tlotermbody	class  CDATA "- topic/body	tloterm/tlotermbody ">
<!ATTLIST tlowhat	class  CDATA "- topic/section	tloterm/tlowhat ">
<!ATTLIST tlowhy	class  CDATA "- topic/section	tloterm/tlowhy ">
<!ATTLIST tloessay	class  CDATA "- topic/section	tloterm/tloessay ">
<!ATTLIST tlosummary	class  CDATA "- topic/section	tloterm/tlosummary ">


<!--  =============================================================  -->
<!--                     SPECIALIZATION ATTRIBUTE DECLARATIONS       -->
<!--  =============================================================  -->
<!-- 
xpdDomain
Author: Don Day
 -->
<!--   Refer to this file by the following public identifier or an 
appropriate system identifier 
PUBLIC "-//LbyW//ENTITIES DITA expeDITA Domain//EN"
Delivered as file "xpdDomain.mod
 -->
<!--                     ELEMENT DECLARATIONS                        -->

