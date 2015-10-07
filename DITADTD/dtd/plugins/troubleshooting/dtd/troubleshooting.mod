
<!-- ============ Specialization of declared elements ============ -->

<!ENTITY % troubleshooting          "tsTroubleshooting">
<!ENTITY % tsBody                   "tsBody">
<!ENTITY % tsSymptoms               "tsSymptoms">
<!ENTITY % tsCauses                 "tsCauses">
<!ENTITY % tsEnvironment            "tsEnvironment">
<!ENTITY % tsDiagnose               "tsDiagnose">
<!ENTITY % tsResolve                "tsResolve">
<!ENTITY % tsUserResponse           "tsUserResponse">
<!ENTITY % tsProgrammerResponse     "tsProgrammerResponse">
<!ENTITY % tsSystemProgrammerResponse        "tsSystemProgrammerResponse">
<!ENTITY % tsSecurityAdministratorResponse   "tsSecurityAdministratorResponse">
<!ENTITY % tsApplicationProgrammerResponse   "tsApplicationProgrammerResponse">
<!ENTITY % tsAdministratorResponse           "tsAdministratorResponse">
<!ENTITY % tsDatabaseAdministratorResponse   "tsDatabaseAdministratorResponse">
<!ENTITY % tsSystemAdministratorResponse     "tsSystemAdministratorResponse">
<!ENTITY % tsNetworkAdministratorResponse    "tsNetworkAdministratorResponse">
<!ENTITY % tsHardwareServiceProviderResponse "tsHardwareServiceProviderResponse">
<!ENTITY % tsSoftwareServiceProviderResponse "tsSoftwareServiceProviderResponse">
<!ENTITY % tsOperatorResponse       "tsOperatorResponse">
<!ENTITY % tsResponseRole           "tsResponseRole">
<!ENTITY % tsResponseRoleLabel      "tsResponseRoleLabel">
<!ENTITY % tsResponseRoleAction     "tsResponseRoleAction">

<!ENTITY % tsTroubleshooting-types-default
    "tsTroubleshooting | task ">
<!ENTITY % tsTroubleshooting-types-default      "tsTroubleshooting | task">

<!ELEMENT tsTroubleshooting       ((%title;), (%titlealts;)?, (%shortdesc; | %abstract;)?, (%prolog;)?, (%tsBody;)?, (%related-links;)?, (%tsTroubleshooting-types-default;)* ) >
<!ATTLIST tsTroubleshooting       id ID #REQUIRED
                                conref CDATA #IMPLIED
                                %select-atts;
                                outputclass CDATA #IMPLIED
                                xml:lang NMTOKEN #IMPLIED
                                %arch-atts;
                                domains CDATA "&included-domains;"
>

<!ELEMENT tsBody            ((%tsSymptoms;),(%tsCauses;)?, (%tsEnvironment;)?, (%tsDiagnose;)?,(%tsResolve;)?)>
<!ATTLIST tsBody                %id-atts;
                                translate (yes|no) #IMPLIED
                                xml:lang NMTOKEN #IMPLIED
                                outputclass CDATA #IMPLIED
>

<!ELEMENT tsSymptoms            (%section.notitle.cnt;)* >
<!ATTLIST tsSymptoms            %univ-atts;
                                outputclass CDATA #IMPLIED
>

<!ELEMENT tsCauses              (%section.notitle.cnt;)* >
<!ATTLIST tsCauses              %univ-atts;
                                outputclass CDATA #IMPLIED
>

<!ELEMENT tsEnvironment         (%section.notitle.cnt;)* >
<!ATTLIST tsEnvironment         %univ-atts;
                                outputclass CDATA #IMPLIED
>

<!ELEMENT tsDiagnose            (%section.notitle.cnt; | %tsUserResponse; | %tsProgrammerResponse; | %tsSystemProgrammerResponse; | %tsApplicationProgrammerResponse; | %tsAdministratorResponse; | %tsDatabaseAdministratorResponse; | %tsSystemAdministratorResponse; | %tsSecurityAdministratorResponse; | %tsNetworkAdministratorResponse; | %tsHardwareServiceProviderResponse; | %tsSoftwareServiceProviderResponse; | %tsOperatorResponse; | %tsResponseRole;)* >
<!ATTLIST tsDiagnose            %univ-atts;
                                outputclass CDATA #IMPLIED
>

<!ELEMENT tsResolve             (%section.notitle.cnt; | %tsUserResponse; | %tsProgrammerResponse; | %tsSystemProgrammerResponse; | %tsApplicationProgrammerResponse; | %tsAdministratorResponse; | %tsDatabaseAdministratorResponse; | %tsSystemAdministratorResponse; | %tsSecurityAdministratorResponse; | %tsNetworkAdministratorResponse; | %tsHardwareServiceProviderResponse; | %tsSoftwareServiceProviderResponse; | %tsOperatorResponse; | %tsResponseRole;)* >
<!ATTLIST tsResolve             %univ-atts;
                                outputclass CDATA #IMPLIED
>

<!ELEMENT tsUserResponse           (%para.cnt;)* >
<!ATTLIST tsUserResponse           %univ-atts;
                                   outputclass CDATA #IMPLIED                            
>

<!ELEMENT tsProgrammerResponse     (%para.cnt;)* >
<!ATTLIST tsProgrammerResponse     %univ-atts;
                                    outputclass CDATA #IMPLIED                            
>

<!ELEMENT tsApplicationProgrammerResponse     (%para.cnt;)* >
<!ATTLIST tsApplicationProgrammerResponse    %univ-atts;
                                outputclass CDATA #IMPLIED                            
>
<!ELEMENT tsAdministratorResponse     (%para.cnt;)* >
<!ATTLIST tsAdministratorResponse    %univ-atts;
                                outputclass CDATA #IMPLIED                            
>
<!ELEMENT tsDatabaseAdministratorResponse     (%para.cnt;)* >
<!ATTLIST tsDatabaseAdministratorResponse      %univ-atts;
                                outputclass CDATA #IMPLIED                            
>
<!ELEMENT tsSystemAdministratorResponse     (%para.cnt;)* >
<!ATTLIST tsSystemAdministratorResponse      %univ-atts;
                                outputclass CDATA #IMPLIED                            
>
<!ELEMENT tsSystemProgrammerResponse     (%para.cnt;)* >
<!ATTLIST tsSystemProgrammerResponse      %univ-atts;
                                outputclass CDATA #IMPLIED                            
>
<!ELEMENT tsSecurityAdministratorResponse     (%para.cnt;)* >
<!ATTLIST tsSecurityAdministratorResponse   %univ-atts;
                                outputclass CDATA #IMPLIED                            
>
<!ELEMENT tsNetworkAdministratorResponse     (%para.cnt;)* >
<!ATTLIST tsNetworkAdministratorResponse      %univ-atts;
                                outputclass CDATA #IMPLIED                            
>
<!ELEMENT tsHardwareServiceProviderResponse     (%para.cnt;)* >
<!ATTLIST tsHardwareServiceProviderResponse      %univ-atts;
                                outputclass CDATA #IMPLIED                            
>
<!ELEMENT tsSoftwareServiceProviderResponse     (%para.cnt;)* >
<!ATTLIST tsSoftwareServiceProviderResponse     %univ-atts;
                                outputclass CDATA #IMPLIED                            
>
<!ELEMENT tsOperatorResponse     (%para.cnt;)* >
<!ATTLIST tsOperatorResponse     %univ-atts;
                                outputclass CDATA #IMPLIED                            
>



<!ELEMENT tsResponseRole        (%tsResponseRoleLabel; , %tsResponseRoleAction;) >
<!ATTLIST tsResponseRole	%univ-atts;
                                outputclass CDATA #IMPLIED                            
>   

 

<!ELEMENT tsResponseRoleLabel   (%words.cnt;)*  		>
<!ATTLIST tsResponseRoleLabel   %univ-atts;
                                outputclass CDATA #IMPLIED                            
>
<!ELEMENT tsResponseRoleAction  (%para.cnt;)*>
<!ATTLIST tsResponseRoleAction  %univ-atts;
                                outputclass CDATA #IMPLIED                            
>

<!--        %univ-atts; -->

<!--specialization attributes-->

<!ATTLIST tsTroubleshooting     %global-atts; class  CDATA "- topic/topic tsTroubleshooting/tsTroubleshooting ">
<!ATTLIST tsBody                %global-atts; class  CDATA "- topic/body tsTroubleshooting/tsBody ">
<!ATTLIST tsSymptoms            %global-atts; class  CDATA "- topic/section tsTroubleshooting/tsSymptoms ">
<!ATTLIST tsCauses              %global-atts; class  CDATA "- topic/section tsTroubleshooting/tsCauses ">
<!ATTLIST tsEnvironment         %global-atts; class  CDATA "- topic/section tsTroubleshooting/tsEnvironment ">
<!ATTLIST tsDiagnose            %global-atts; class  CDATA "- topic/section tsTroubleshooting/tsDiagnose ">
<!ATTLIST tsResolve             %global-atts; class  CDATA "- topic/section tsTroubleshooting/tsResolve ">
<!ATTLIST tsUserResponse                       %global-atts; class  CDATA "- topic/p tsTroubleshooting/tsUserResponse ">
<!ATTLIST tsProgrammerResponse                 %global-atts; class  CDATA "- topic/p tsTroubleshooting/tsProgrammerResponse ">
<!ATTLIST tsSystemProgrammerResponse           %global-atts; class  CDATA "- topic/p tsTroubleshooting/tsSystemProgrammerResponse ">
<!ATTLIST tsApplicationProgrammerResponse      %global-atts; class  CDATA "- topic/p tsTroubleshooting/tsApplicationProgrammerResponse ">
<!ATTLIST tsDatabaseAdministratorResponse      %global-atts; class  CDATA "- topic/p tsTroubleshooting/tsDatabaseAdministratorResponse ">
<!ATTLIST tsAdministratorResponse              %global-atts; class  CDATA "- topic/p tsTroubleshooting/tsAdministratorResponse ">
<!ATTLIST tsSystemAdministratorResponse        %global-atts; class  CDATA "- topic/p tsTroubleshooting/tsSystemAdministratorResponse ">
<!ATTLIST tsSecurityAdministratorResponse      %global-atts; class  CDATA "- topic/p tsTroubleshooting/tsSecurityAdministratorResponse ">
<!ATTLIST tsNetworkAdministratorResponse       %global-atts; class  CDATA "- topic/p tsTroubleshooting/tsNetworkAdministratorResponse ">
<!ATTLIST tsHardwareServiceProviderResponse    %global-atts; class  CDATA "- topic/p tsTroubleshooting/tsHardwareServiceProviderResponse ">
<!ATTLIST tsSoftwareServiceProviderResponse    %global-atts; class  CDATA "- topic/p tsTroubleshooting/tsSoftwareServiceProviderResponse ">
<!ATTLIST tsOperatorResponse                %global-atts; class  CDATA "- topic/p tsTroubleshooting/tsOperatorResponse ">
<!ATTLIST tsResponseRole        %global-atts; class  CDATA "- topic/p tsTroubleshooting/tsResponseRole ">
<!ATTLIST tsResponseRoleLabel   %global-atts; class  CDATA "- topic/keyword tsTroubleshooting/tsResponseRoleLabel "    >
<!ATTLIST tsResponseRoleAction  %global-atts; class  CDATA "- topic/p tsTroubleshooting/tsResponseRoleAction "    >

