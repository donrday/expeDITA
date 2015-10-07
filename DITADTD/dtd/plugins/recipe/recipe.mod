<!-- (c) Copyright IBM Corp. 2004, 2005 All Rights Reserved. -->

<!-- ============ Hooks for domain extension ============ -->
<!ENTITY % recipebody "recipebody">
<!ENTITY % recipeinfo "recipeinfo">
<!ENTITY % ingredientlist "ingredientlist">
<!ENTITY % ingredient "ingredient">
<!ENTITY % preparation "preparation">
<!ENTITY % serving "serving">
<!ENTITY % notes "notes">
<!ENTITY % blurb "blurb">
<!ENTITY % effort "effort">
<!ENTITY % genre "genre">
<!ENTITY % preptime "preptime">
<!ENTITY % yield "yield">
<!ENTITY % step "step">
<!ENTITY % equipment "equipment">

<!-- ============ Hooks for shell DTD ============ -->
<!ENTITY % recipe-info-types "%info-types;">
<!ENTITY included-domains "">

<!-- ============ Element definitions ============  (%titlealts;)?, (%shortdesc;)?, (%prolog;)?, (%related-links;)?,, (%recipe-info-types;)  -->
<!ELEMENT recipe         ((%title;), (%recipebody;) )>
<!ATTLIST recipe             id ID #REQUIRED
                          conref CDATA #IMPLIED
                          outputclass CDATA #IMPLIED
                          xml:lang NMTOKEN #IMPLIED
                          %arch-atts;
                          domains CDATA "&included-domains;"
>

<!ELEMENT recipebody	((%recipeinfo;)?, (%ingredientlist;), (%preparation;), (%serving;)?, (%notes;)?)>
<!ATTLIST recipebody         %univ-atts;
                          outputclass CDATA #IMPLIED
>

<!ELEMENT recipeinfo	((%author;) | (%blurb;) | (%effort;) | (%genre;) | (%preptime;) | (%source;) | (%yield;) )*>
<!ATTLIST recipeinfo        spectitle CDATA #IMPLIED
                          %univ-atts;
                          outputclass CDATA #IMPLIED
>

<!ELEMENT ingredientlist     (%ingredient;)+>
<!ATTLIST ingredientlist         relcolwidth CDATA #IMPLIED
                          keycol NMTOKEN #IMPLIED
                          refcols NMTOKENS #IMPLIED
                          %display-atts;
                          %univ-atts;
                          spectitle CDATA #IMPLIED
                          outputclass CDATA #IMPLIED
>

<!ELEMENT ingredient	(#PCDATA | (%quantity;) | (%unit;) | (%fooditem;) )*>
<!ATTLIST ingredient         %univ-atts;
                          outputclass CDATA #IMPLIED
>

<!ELEMENT preparation	(#PCDATA | (%equipment;) | (%step;) | (%xref;))*>
<!ATTLIST preparation        %univ-atts;
                          specentry CDATA "Preparation"
                          outputclass CDATA #IMPLIED
>

<!ELEMENT equipment		(#PCDATA | (%xref;))*>
<!ATTLIST equipment		%univ-atts;
			outputclass	CDATA #IMPLIED
>

<!ELEMENT step		(#PCDATA | (%equipment;) | (%xref;))*>
<!ATTLIST step		%univ-atts;
			outputclass CDATA #IMPLIED
>

<!ELEMENT serving	(#PCDATA | (%xref;))*>
<!ATTLIST serving          %univ-atts;
                          specentry CDATA "Serving"
                          outputclass CDATA #IMPLIED
>

<!ELEMENT notes		(#PCDATA | (%xref;))*>
<!ATTLIST notes         %univ-atts;
                          specentry CDATA "Notes"
                          outputclass CDATA #IMPLIED
>

<!ELEMENT fooditem	(#PCDATA)>
<!ATTLIST fooditem	%univ-atts;
                          outputclass CDATA #IMPLIED
>

<!ELEMENT quantity	(#PCDATA)>
<!ATTLIST quantity	%univ-atts;
                          outputclass CDATA #IMPLIED
>

<!ELEMENT unit		(#PCDATA)>
<!ATTLIST unit		%univ-atts;
			outputclass CDATA #IMPLIED
>

<!ELEMENT author	(#PCDATA)>
<!ATTLIST author		%univ-atts;
			outputclass CDATA #IMPLIED
>

<!ELEMENT blurb		(#PCDATA)>
<!ATTLIST blurb		%univ-atts;
			outputclass CDATA #IMPLIED
>

<!ELEMENT effort	(#PCDATA)>
<!ATTLIST effort		%univ-atts;
			outputclass CDATA #IMPLIED
>

<!ELEMENT genre		(#PCDATA)>
<!ATTLIST genre		%univ-atts;
			outputclass CDATA #IMPLIED
>

<!ELEMENT preptime	(#PCDATA)>
<!ATTLIST preptime		%univ-atts;
			outputclass CDATA #IMPLIED
>

<!ELEMENT source	(#PCDATA | (%xref;))*>
<!ATTLIST source		%univ-atts;
			outputclass CDATA #IMPLIED
>

<!ELEMENT yield		(#PCDATA)>
<!ATTLIST yield		%univ-atts;
			outputclass CDATA #IMPLIED
>


<!-- ============ Element specialization declarations ============ -->

<!ATTLIST recipe		class  CDATA "- topic/topic		recipe/recipe ">
<!ATTLIST recipebody     	class  CDATA "- topic/body		recipe/recipebody ">
<!ATTLIST recipeinfo		class  CDATA "- topic/section		recipe/recipeinfo ">

<!ATTLIST ingredientlist     	class  CDATA "- topic/simpletable	recipe/ingredientlist ">
<!ATTLIST ingredient		class  CDATA "- topic/strow		recipe/ingredient ">
<!ATTLIST quantity		class  CDATA "- topic/stentry		recipe/quantity ">
<!ATTLIST unit			class  CDATA "- topic/stentry		recipe/unit ">
<!ATTLIST fooditem		class  CDATA "- topic/stentry		recipe/fooditem ">

<!ATTLIST preparation		class  CDATA "- topic/section		recipe/preparation ">
<!ATTLIST serving		class  CDATA "- topic/section		recipe/serving ">
<!ATTLIST notes			class  CDATA "- topic/section		recipe/notes ">

<!ATTLIST author		class  CDATA "- topic/ph		recipe/author ">
<!ATTLIST blurb			class  CDATA "- topic/ph		recipe/blurb ">
<!ATTLIST effort		class  CDATA "- topic/ph		recipe/effort ">
<!ATTLIST genre			class  CDATA "- topic/ph 		recipe/genre ">
<!ATTLIST preptime		class  CDATA "- topic/ph		recipe/preptime ">
<!ATTLIST yield			class  CDATA "- topic/ph		recipe/yield ">
<!ATTLIST step			class  CDATA "- topic/ph		recipe/step ">
<!ATTLIST equipment		class  CDATA "- topic/ph		recipe/equipment ">

<!ATTLIST source		class  CDATA "- topic/cite		recipe/source ">
<!ATTLIST xref		class  CDATA "- topic/xref		recipe/xref ">
