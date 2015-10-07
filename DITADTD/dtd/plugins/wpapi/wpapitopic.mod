<!-- (c) Copyright Learning by Wrote 2015 -->

<!-- ============ Hooks for domain extension ============ -->
<!ENTITY % wpapitopic	"wpapitopic">
<!ENTITY % wpapibody	"wpapibody">
<!ENTITY % wpapiname	"wpapiname">
<!ENTITY % wpapisummary	"wpapisummary">
<!ENTITY % wpapioverview	"wpapioverview">
<!ENTITY % wpapiproperties	"wpapiproperties">
<!ENTITY % wpapimethods	"wpapimethods">
<!ENTITY % wpapivents	"wpapivents">
<!ENTITY % wpapiexamples	"wpapiexamples">
<!ENTITY % wpapirelated_specifications	"wpapirelated_specifications">
<!ENTITY % wpapisee_also	"wpapisee_also">
<!ENTITY % wpapiattribution	"wpapiattribution">

<!ENTITY % wpapisection.cnt	"%section.cnt;">
<!ENTITY % wpapirichtext.cnt	"#PCDATA | %xref; | %ph;">

<!-- ============ Element definitions ============  (%titlealts;)?, (%shortdesc;)?, (%prolog;)?, (%related-links;)?, (%wpapi-info-types;)* -->
<!ELEMENT wpapitopic	((%wpapiname;), (%prolog;)?, (%wpapibody;), (%related-links;)?, (%wpapi-info-types;)* )>
<!ATTLIST wpapitopic	id ID #REQUIRED
			conref CDATA #IMPLIED
			outputclass CDATA #IMPLIED
			xml:lang NMTOKEN #IMPLIED
			%arch-atts;
			domains CDATA "&included-domains;"
>

<!-- Specialize wpapiname from title, require three specialized phrases in the title -->
<!ELEMENT wpapiname	(%title.cnt;)* >
<!ATTLIST wpapiname	%id-atts;
			outputclass CDATA #IMPLIED
			formtype CDATA 'wpapi'
>

<!ELEMENT wpapibody	((%wpapisummary;)?, 
(%wpapioverview;)?, (%wpapiproperties;)?, 
(%wpapimethods;)?, (%wpapivents;)?, 
(%wpapiexamples;)?, 
(%wpapirelated_specifications;)?, 
(%wpapisee_also;)?, (%wpapiattribution;)?
)>
<!ATTLIST wpapibody	%univ-atts;
			outputclass CDATA #IMPLIED
			formtype CDATA 'wpapibody'
>


<!ELEMENT wpapisummary	(%wpapisection.cnt;)*>
<!ATTLIST wpapisummary	%univ-atts;
			spectitle CDATA "Summary"
			outputclass CDATA #IMPLIED
			formtype CDATA 'wpapisection'
>


<!ELEMENT wpapioverview	(%wpapisection.cnt;)*>
<!ATTLIST wpapioverview	%univ-atts;
			spectitle CDATA "Overview"
			outputclass CDATA #IMPLIED
			formtype CDATA 'wpapisection'
>


<!ELEMENT wpapiproperties	(%wpapisection.cnt;)*>
<!ATTLIST wpapiproperties	%univ-atts;
			spectitle CDATA "Properties"
			outputclass CDATA #IMPLIED
			formtype CDATA 'wpapisection'
>


<!ELEMENT wpapimethods	(%wpapisection.cnt;)*>
<!ATTLIST wpapimethods	%univ-atts;
			spectitle CDATA "Methods"
			outputclass CDATA #IMPLIED
			formtype CDATA 'wpapisection'
>


<!ELEMENT wpapivents	(%wpapisection.cnt;)*>
<!ATTLIST wpapivents	%univ-atts;
			spectitle CDATA "Events"
			outputclass CDATA #IMPLIED
			formtype CDATA 'wpapisection'
>


<!ELEMENT wpapiexamples	(%wpapisection.cnt;)*>
<!ATTLIST wpapiexamples	%univ-atts;
			spectitle CDATA "Examples"
			outputclass CDATA #IMPLIED
			formtype CDATA 'wpapisection'
>


<!ELEMENT wpapirelated_specifications	(%wpapisection.cnt;)*>
<!ATTLIST wpapirelated_specifications	%univ-atts;
			spectitle CDATA "Related Specifications"
			outputclass CDATA #IMPLIED
			formtype CDATA 'wpapisection'
>


<!ELEMENT wpapisee_also	(%wpapisection.cnt;)*>
<!ATTLIST wpapisee_also	%univ-atts;
			spectitle CDATA "See Also"
			outputclass CDATA #IMPLIED
			formtype CDATA 'wpapisection'
>


<!ELEMENT wpapiattribution	(%wpapisection.cnt;)*>
<!ATTLIST wpapiattribution	%univ-atts;
			spectitle CDATA "Attribution"
			outputclass CDATA #IMPLIED
			formtype CDATA 'wpapisection'
>


<!-- ============ Element specialization declarations ============ -->

<!ATTLIST wpapitopic	class  CDATA "- topic/topic	wpapi/wpapitopic ">
<!ATTLIST wpapiname	class  CDATA "- topic/title	wpapi/wpapiname ">
<!ATTLIST wpapibody	class  CDATA "- topic/body	wpapi/wpapibody ">
<!ATTLIST wpapisummary	class  CDATA "- topic/section	wpapi/wpapisummary ">
<!ATTLIST wpapioverview	class  CDATA "- topic/section	wpapi/wpapioverview ">
<!ATTLIST wpapiproperties	class  CDATA "- topic/section	wpapi/wpapioverview ">
<!ATTLIST wpapimethods	class  CDATA "- topic/section	wpapi/wpapioverview ">
<!ATTLIST wpapivents	class  CDATA "- topic/section	wpapi/wpapioverview ">
<!ATTLIST wpapirelated_specifications	class  CDATA "- topic/section	wpapi/wpapioverview ">
<!ATTLIST wpapisee_also	class  CDATA "- topic/section	wpapi/wpapioverview ">
<!ATTLIST wpapiattribution	class  CDATA "- topic/section	wpapi/wpapioverview ">


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

