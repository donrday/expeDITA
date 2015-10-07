
<!-- ============================================================= -->
<!--                    DOMAINS ATTRIBUTE OVERRIDE                 -->
<!-- ============================================================= -->

<!ENTITY included-domains "">
<!ENTITY excluded-attributes "">
  
<!-- ============================================================= -->
<!--                    EXTENSION POINTS                           -->
<!-- ============================================================= -->

<!ENTITY % ph    "ph">
<!ENTITY % data  "data">
<!ENTITY % fig   "fig">

<!-- remove below -->
<!ENTITY % object "object">

<!ENTITY % filter-adds " ">

<!-- ============================================================= -->
<!--                    COMMON DECLARATIONS                        -->
<!-- ============================================================= -->

<!--common content models-->

<!ENTITY % common-inline  "#PCDATA|%ph;|image|%data;">
<!ENTITY % all-inline  "#PCDATA|%ph;|image|xref|%data;">

<!ENTITY % table-blocks  "p|ul|ol|dl|pre|audio|video">
<!ENTITY % all-blocks  "p|ul|ol|dl|pre|audio|video|simpletable|fig">

<!ENTITY % list-blocks "p|ul|ol|dl|pre|audio|video|simpletable|fig">

<!ENTITY % fig-blocks  "p|ul|ol|dl|pre|audio|video|simpletable"> 

<!--common attributes-->
<!ENTITY % filters
            'props      CDATA                              #IMPLIED
             %filter-adds;                          ' >
<!ENTITY % reuse
            'id      NMTOKEN                            #IMPLIED
             conref  CDATA                              #IMPLIED  ' >
<!ENTITY % variable-content
            'keyref      CDATA                            #IMPLIED '>
<!ENTITY % variable-links
            'keyref      CDATA                            #IMPLIED '>
<!ENTITY % localization
            'dir         CDATA                              #IMPLIED
             xml:lang    CDATA                              #IMPLIED
             translate   CDATA                            #IMPLIED '>

<!ENTITY % display-atts 
             "scale 
                        (50 |
                         60 |
                         70 |
                         80 |
                         90 |
                         100 |
                         110 |
                         120 |
                         140 |
                         160 |
                         180 |
                         200 )
                                  #IMPLIED
              frame 
                        (all |
                         bottom |
                         none | 
                         sides | 
                         top | 
                         topbot ) 
                                  #IMPLIED
              expanse 
                        (column | 
                         page |
                         spread | 
                         textline ) 
                                  #IMPLIED"
>
<!ENTITY % fig.attributes
             "%display-atts;
              %localization;
              outputclass CDATA #IMPLIED"
>


<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!--                    LONG NAME: Topic  -->
<!ELEMENT topic         (title, shortdesc?, prolog?, body)  >
<!ATTLIST topic
             id         ID                                 #REQUIRED
             xmlns:ditaarch CDATA #FIXED "http://dita.oasis-open.org/architecture/2005/" 
	     ditaarch:DITAArchVersion CDATA "1.3"
             domains    CDATA                    "&included-domains;"
             %localization;
             class CDATA "- topic/topic ">

<!--                    LONG NAME: Title -->
<!ELEMENT title (%common-inline;)* >
<!ATTLIST title
             %localization;
             class CDATA "- topic/title ">
 


<!--                    LONG NAME: Short description-->
<!ELEMENT shortdesc     (%all-inline;)* >
<!ATTLIST shortdesc  
             %localization;
             class CDATA "- topic/shortdesc ">
 
<!--                    LONG NAME: Prolog-->
<!ELEMENT prolog (%data;)* >
<!ATTLIST prolog
             class CDATA "- topic/prolog ">
 

<!--                    LONG NAME: Body                            -->
<!ELEMENT body          ((%all-blocks;)*, section*)        >
<!ATTLIST body   
             %localization;
             class CDATA "- topic/body ">

<!--                    LONG NAME: Section                         -->
<!ELEMENT section       (title?, (%all-blocks;)*)        >
<!ATTLIST section
             %localization;
             %filters;
             %reuse;
             class CDATA "- topic/section ">

<!--                    LONG NAME: Paragraph  -->
<!ELEMENT p             (%all-inline;)*        >
<!ATTLIST p
             %localization;
             %filters;
             %reuse;
             class CDATA "- topic/p ">


<!--                    LONG NAME: Unordered list  -->
<!ELEMENT ul             (li)*        >
<!ATTLIST ul
             %localization;
             %filters;
             %reuse;
             class CDATA "- topic/ul ">

<!--                    LONG NAME: Ordered list  -->
<!ELEMENT ol             (li)*        >
<!ATTLIST ol
             %localization;
             %filters;
             %reuse;
             class CDATA "- topic/ol ">


<!--                    LONG NAME: List item -->
<!ELEMENT li            (%list-blocks;)*        >
<!ATTLIST li
             %localization;
             %filters;
             %reuse;
             class CDATA "- topic/li ">

<!--                    LONG NAME: Description list -->
<!ELEMENT dl             (dlentry)*        >
<!ATTLIST dl
             %localization;
             %filters;
             %reuse;
             class CDATA "- topic/dl ">

<!--                    LONG NAME: Description entry -->
<!ELEMENT dlentry             (dt, dd)        >
<!ATTLIST dlentry
             %localization;
             %filters;
             %reuse;
             class CDATA "- topic/dlentry ">

<!--                    LONG NAME: Description term  -->
<!ELEMENT dt             (%all-inline;)*        >
<!ATTLIST dt
             %localization;
             %filters;
             %reuse;
             class CDATA "- topic/dt ">

<!--                    LONG NAME: Description   -->
<!ELEMENT dd             (%list-blocks;)*        >
<!ATTLIST dd
             %localization;
             %filters;
             %reuse;
             class CDATA "- topic/dd ">


<!--                    LONG NAME: Preformatted content -->
<!ELEMENT pre            (%all-inline;)*        >
<!ATTLIST pre
             xml:space  (preserve)               #FIXED 'preserve'
             %localization;
             %filters;
             %reuse;
             class CDATA "- topic/pre ">


<!--                    LONG NAME: Table -->
<!ELEMENT simpletable (sthead?, strow*)        >
<!ATTLIST simpletable
             %localization;
             %filters;
             %reuse;
             class CDATA "- topic/simpletable ">


<!--                    LONG NAME: Table header row -->
<!ELEMENT sthead (stentry*)        >
<!ATTLIST sthead
             %localization;
             %filters;
             %reuse;
             class CDATA "- topic/sthead ">

<!--                    LONG NAME: Table row -->
<!ELEMENT strow (stentry*)        >
<!ATTLIST strow
             %localization;
             %filters;
             %reuse;
             class CDATA "- topic/strow ">

<!--                    LONG NAME: Table cell -->
<!ELEMENT stentry (%table-blocks;)*        >
<!ATTLIST stentry
             %localization;
             %filters;
             %reuse;
             class CDATA "- topic/stentry ">

<!ELEMENT fig   (title?, desc?, (%fig-blocks;|image|data|xref)*)    >
                <!-- fig-blocks: "p|ul|ol|dl|pre|audio|video|simpletable">
                     plus (image|data|xref)) -->
<!ATTLIST fig    %fig.attributes;
                 class CDATA "- topic/fig " >



<!-- {{mg:}} object will be removed very soon -->
<!--                    LONG NAME: Object-->
<!ELEMENT object (desc?, param*)        >
<!ATTLIST object
             data CDATA #IMPLIED
             type CDATA #IMPLIED
             height     NMTOKEN                          #IMPLIED
             width      NMTOKEN                          #IMPLIED
             name CDATA #IMPLIED
             usemap CDATA #IMPLIED
             %localization;
             %filters;
             %reuse;
             class CDATA "- topic/object ">





<!--                    LONG NAME: Description  -->
<!ELEMENT desc		(%common-inline;)*        >
<!ATTLIST desc
             %localization;
             class CDATA "- topic/desc ">

<!--                    LONG NAME: Object parameter  -->
<!ELEMENT param		EMPTY        >
<!ATTLIST param	
             name       CDATA                            #REQUIRED
             value      CDATA                            #IMPLIED
             class CDATA "- topic/param ">

<!--                    LONG NAME: Phrase content  -->
<!ELEMENT ph             (%all-inline;)*        >
<!ATTLIST ph
             %localization;
             %variable-content;
             class CDATA "- topic/ph ">





<!--                    LONG NAME: Image  -->
<!ELEMENT image             (alt?)        >
<!ATTLIST image
             href       CDATA                            #IMPLIED
             height     NMTOKEN                          #IMPLIED
             width      NMTOKEN                          #IMPLIED
             %localization;
             %variable-content;
             class CDATA "- topic/image ">

<!--                    LONG NAME: Alternative content  -->
<!ELEMENT alt           (%common-inline;)*        >
<!ATTLIST alt           
             %localization;
             %variable-content;
             class CDATA "- topic/alt ">

<!--                    LONG NAME: Data  -->
<!ELEMENT data             (data)*        >
<!ATTLIST data
             name       CDATA                            #IMPLIED
             value      CDATA                            #IMPLIED
             %variable-content;
             class CDATA "- topic/data ">

<!--                    LONG NAME: Reference  -->
<!ELEMENT xref          (%common-inline;)*        >
<!ATTLIST xref
             href       CDATA                            #IMPLIED
             format     CDATA                            #IMPLIED
             scope      (local | peer | external)        #IMPLIED
             %localization;
             %variable-links;
             class CDATA "- topic/xref ">       



<!--                    LONG NAME: Audio -->
<!ELEMENT audio (fallback?, controls?, source*, track*)        >
<!ATTLIST audio
             %filters;
             %reuse;
             class CDATA "+ topic/object h5m-d/audio ">

<!--                    LONG NAME: Video -->
<!ELEMENT video (fallback?, controls?, poster?, source*, track*)        >
<!ATTLIST video
             %filters;
             %reuse;
             class CDATA "+ topic/object h5m-d/video ">

<!--                    LONG NAME: Fallback -->
<!ELEMENT fallback		(%common-inline;)*        >
<!ATTLIST fallback
             %localization;
             class CDATA "+ topic/desc h5m-d/fallback ">

<!--                    LONG NAME: Display controls  -->
<!ELEMENT controls 	EMPTY        >
<!ATTLIST controls
             name       CDATA   			#FIXED "controls"
             
             class CDATA "+ topic/param h5m-d/controls ">
<!-- value      CDATA         (y|n)  "y" -->

<!--                    LONG NAME: Poster image  -->
<!ELEMENT poster		EMPTY        >
<!ATTLIST poster	
             name       CDATA         #FIXED "poster"
             value      CDATA         #IMPLIED
             class CDATA "- topic/param h5m-d/poster ">

<!--                    LONG NAME: Source  -->
<!ELEMENT source		EMPTY        >
<!ATTLIST source	
             name       CDATA           #FIXED "source"
             value      CDATA           #IMPLIED
             class CDATA "- topic/param h5m-d/source ">

<!--                    LONG NAME: Track for captions  -->
<!ELEMENT track		EMPTY        >
<!ATTLIST track	
             name       CDATA           #FIXED "track"
             value      CDATA           #IMPLIED
             class CDATA "- topic/param h5m-d/track ">



