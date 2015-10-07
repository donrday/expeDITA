<!--
 | (C) Copyright IBM Corporation 2006. All Rights Reserved.
 *-->

<!-- ============ Hooks for domain extension ============ -->
<!ENTITY % msg "msg">
<!ENTITY % msgId "msgId">
<!ENTITY % msgPrefix "msgPrefix">
<!ENTITY % msgText "msgText">
<!ENTITY % msgBody "msgBody">
<!ENTITY % msgNumber "msgNumber">
<!ENTITY % msgSuffix "msgSuffix">
<!ENTITY % msgText "msgText">
<!ENTITY % msgExplanation "msgExplanation">
<!ENTITY % msgSystemAction "msgSystemAction">
<!ENTITY % noAction "noAction">
<!ENTITY % msgCodeHead "msgCodeHead">
<!ENTITY % msgCodeEntry "msgCodeEntry">
<!ENTITY % msgCodeList "msgCodeList">
<!ENTITY % msgCodeLabel "msgCodeLabel">
<!ENTITY % msgCodeLabelHead "msgCodeLabelHead">
<!ENTITY % msgCodeDefinition "msgCodeDefinition">
<!ENTITY % msgCodeDefinitionHead "msgCodeDefinitionHead">
<!ENTITY % msgResponse "msgResponse">
<!ENTITY % msgOperatorResponse "msgOperatorResponse">
<!ENTITY % msgSystemProgrammerResponse "msgSystemProgrammerResponse">
<!ENTITY % msgUserResponse "msgUserResponse">
<!ENTITY % msgAdministratorResponse "msgAdministratorResponse">
<!ENTITY % msgProgrammerResponse "msgProgrammerResponse">
<!ENTITY % msgProblemDetermination "msgProblemDetermination">
<!ENTITY % msgSource "msgSource">
<!ENTITY % msgModule "msgModule">
<!ENTITY % msgRoutingCode "msgRoutingCode">
<!ENTITY % msgDescriptorCode "msgDescriptorCode">
<!ENTITY % msgAutomation "msgAutomation">
<!ENTITY % msgOther "msgOther">

<!-- ============ Hooks for shell DTD ============  -->
<!ENTITY % msgref-info-types "%info-types;">
<!ENTITY included-domains "">

<!-- ============ Element definitions ============ -->
<!ELEMENT msg ((%msgId;), (%titlealts;)?, (%msgText;), (%prolog;)?, (%msgBody;), (%related-links;)?, (%msg-info-types;)*)>
<!ATTLIST msg
   id ID #REQUIRED
   conref CDATA #IMPLIED
   %select-atts;
   %localization-atts;
   outputclass CDATA #IMPLIED
   %arch-atts;
   domains CDATA "&included-domains;"
>
<!-- Specialize msgId from title, require three specialized phrases in the title -->
<!ELEMENT msgId (((%msgPrefix;)*, (%msgNumber;)+, (%msgSuffix;)*)) >
<!ATTLIST msgId
   %id-atts;
   %localization-atts;
   outputclass CDATA #IMPLIED
>
<!ELEMENT msgPrefix (%ph.cnt;)*>
<!ATTLIST msgPrefix
   keyref CDATA #IMPLIED
   %univ-atts;
   outputclass CDATA #IMPLIED
>
<!ELEMENT msgNumber (%ph.cnt;)*>
<!ATTLIST msgNumber
   keyref CDATA #IMPLIED
   %univ-atts;
   outputclass CDATA #IMPLIED
>
<!ELEMENT msgSuffix (%ph.cnt;)*>
<!ATTLIST msgSuffix
   keyref CDATA #IMPLIED
   %univ-atts;
   outputclass CDATA #IMPLIED
>
<!ELEMENT msgText (%title.cnt;)*>
<!ATTLIST msgText
   %id-atts;
   %localization-atts;
   outputclass CDATA #IMPLIED
>
<!-- sections specializations enumerated -->
<!ELEMENT msgBody ((%msgExplanation;)*, (%msgSystemAction;)*, (%msgResponse;)*, (%msgOperatorResponse;)*, (%msgSystemProgrammerResponse;)*, (%msgUserResponse;)*, (%msgAdministratorResponse;)*, (%msgProgrammerResponse;)*, (%msgProblemDetermination;)*, (%msgSource;)*, (%msgModule;)*, (%msgRoutingCode;)*, (%msgDescriptorCode;)*, (%msgAutomation;)*, (%msgOther;)*)>
<!ATTLIST msgBody
   %univ-atts;
   outputclass CDATA #IMPLIED
>
<!ELEMENT msgExplanation (%section.cnt; | %msgCodeList;)*  >
<!-- from topic.ref since only mod in docbook variants -->
<!ATTLIST msgExplanation
   spectitle CDATA #IMPLIED
   %univ-atts;
   outputclass CDATA #IMPLIED
>
<!ELEMENT msgSystemAction (%section.cnt; | %noAction; | %msgCodeList; )* >
<!ATTLIST msgSystemAction
   spectitle CDATA #IMPLIED
   %univ-atts;
   outputclass CDATA #IMPLIED
>
<!-- 20060112 efh added -->
<!ELEMENT msgResponse (%section.cnt; | %noAction; | %msgCodeList; )* >
<!ATTLIST msgResponse
   spectitle CDATA #IMPLIED
   %univ-atts;
   outputclass CDATA #IMPLIED
>
<!ELEMENT msgOperatorResponse (%section.cnt; | %noAction; | %msgCodeList; )* >
<!ATTLIST msgOperatorResponse
   spectitle CDATA #IMPLIED
   %univ-atts;
   outputclass CDATA #IMPLIED
>
<!ELEMENT msgSystemProgrammerResponse (%section.cnt; | %noAction; | %msgCodeList; )* >
<!ATTLIST msgSystemProgrammerResponse
   spectitle CDATA #IMPLIED
   %univ-atts;
   outputclass CDATA #IMPLIED
>
<!ELEMENT msgUserResponse (%section.cnt; | %noAction; | %msgCodeList; )* >
<!ATTLIST msgUserResponse
   spectitle CDATA #IMPLIED
   %univ-atts;
   outputclass CDATA #IMPLIED
>
<!ELEMENT msgAdministratorResponse (%section.cnt; | %noAction; | %msgCodeList; )* >
<!ATTLIST msgAdministratorResponse
   spectitle CDATA #IMPLIED
   %univ-atts;
   outputclass CDATA #IMPLIED
>
<!ELEMENT msgProgrammerResponse (%section.cnt; | %noAction; | %msgCodeList; )* >
<!ATTLIST msgProgrammerResponse
   spectitle CDATA #IMPLIED
   %univ-atts;
   outputclass CDATA #IMPLIED
>
<!ELEMENT msgProblemDetermination (%section.cnt; | %noAction; | %msgCodeList; )* >
<!ATTLIST msgProblemDetermination
   spectitle CDATA #IMPLIED
   %univ-atts;
   outputclass CDATA #IMPLIED
>
<!ELEMENT msgSource (%section.cnt; | %noAction; | %msgCodeList; )* >
<!ATTLIST msgSource
   spectitle CDATA #IMPLIED
   %univ-atts;
   outputclass CDATA #IMPLIED
>
<!ELEMENT msgModule (%section.cnt; | %noAction; | %msgCodeList; )* >
<!ATTLIST msgModule
   spectitle CDATA #IMPLIED
   %univ-atts;
   outputclass CDATA #IMPLIED
>
<!ELEMENT msgRoutingCode (%section.cnt; | %noAction; | %msgCodeList; )* >
<!ATTLIST msgRoutingCode
   spectitle CDATA #IMPLIED
   %univ-atts;
   outputclass CDATA #IMPLIED
>
<!ELEMENT msgDescriptorCode (%section.cnt; | %noAction; | %msgCodeList; )* >
<!ATTLIST msgDescriptorCode
   spectitle CDATA #IMPLIED
   %univ-atts;
   outputclass CDATA #IMPLIED
>
<!ELEMENT msgAutomation (%section.cnt; | %noAction; | %msgCodeList; )* >
<!ATTLIST msgAutomation
   spectitle CDATA #IMPLIED
   %univ-atts;
   outputclass CDATA #IMPLIED
>
<!ELEMENT msgOther (%section.cnt; | %msgCodeList;)* >
<!ATTLIST msgOther
   spectitle CDATA #IMPLIED
   %univ-atts;
   outputclass CDATA #IMPLIED
>

<!ELEMENT noAction EMPTY>

<!ELEMENT msgCodeList ((%msgCodeHead;)?, (%msgCodeEntry;)+) >
<!ATTLIST msgCodeList        compact (yes|no) #IMPLIED
                          %univ-atts;
                          spectitle CDATA #IMPLIED
                          outputclass CDATA #IMPLIED
>
<!ELEMENT msgCodeHead ((%msgCodeLabelHead;)?, (%msgCodeDefinitionHead;)?)>
<!ATTLIST msgCodeHead
   %univ-atts;
   outputclass CDATA #IMPLIED
>
<!ELEMENT msgCodeLabelHead (%title.cnt;)*>
<!ATTLIST msgCodeLabelHead
   %univ-atts;
   outputclass CDATA #IMPLIED
>
<!ELEMENT msgCodeDefinitionHead (%title.cnt;)*>
<!ATTLIST msgCodeDefinitionHead
   %univ-atts;
   outputclass CDATA #IMPLIED
>
<!ELEMENT msgCodeEntry ((%msgCodeLabel;)+, (%msgCodeDefinition;)+)>
<!ATTLIST msgCodeEntry
   %univ-atts;
   outputclass CDATA #IMPLIED
>
<!ELEMENT msgCodeLabel (%term.cnt;)* >
<!ATTLIST msgCodeLabel
   keyref CDATA #IMPLIED
   %univ-atts;
   outputclass CDATA #IMPLIED
>
<!ELEMENT msgCodeDefinition (%defn.cnt; | %msgCodeList;)* >
<!ATTLIST msgCodeDefinition
   %univ-atts;
   outputclass CDATA #IMPLIED
>
<!-- ============ Class ancestry ============ -->
<!ATTLIST msgCodeHead
    %global-atts;
    class CDATA "- topic/dlhead reference/dlhead msg/msgCodeHead "
>
<!ATTLIST msgCodeEntry
    %global-atts;
    class CDATA "- topic/dlentry reference/dlentry msg/msgCodeEntry "
>
<!ATTLIST msgCodeDefinition
   %global-atts;
   class CDATA "- topic/dd reference/dd msg/msgCodeDefinition "
>
<!ATTLIST msgCodeDefinitionHead
   %global-atts;
   class CDATA "- topic/ddhd reference/ddhd msg/msgCodeDefinitionHead "
>
<!ATTLIST msgCodeList
   %global-atts;
   class CDATA "- topic/dl reference/dl  msg/msgCodeList "
>
<!ATTLIST msgCodeLabel
   %global-atts;
   class CDATA "- topic/dt reference/dt msg/msgCodeLabel "
>
<!ATTLIST msgCodeLabelHead
   %global-atts;
   class CDATA "- topic/dthd reference/dthd msg/msgCodeLabelHead "
>
<!ATTLIST msg
   %global-atts;
   class CDATA "- topic/topic reference/reference msg/msg "
>
<!ATTLIST msgBody
   %global-atts;
   class CDATA "- topic/body reference/refbody msg/msgBody "
>
<!ATTLIST msgText
   %global-atts;
   class CDATA "- topic/shortdesc reference/shortdesc msg/msgText "
>
<!ATTLIST msgId
   %global-atts;
   class CDATA "- topic/title reference/title msg/msgId "
>
<!ATTLIST msgPrefix
   %global-atts;
   class CDATA "- topic/ph reference/ph msg/msgPrefix "
>
<!ATTLIST msgNumber
   %global-atts;
   class CDATA "- topic/ph reference/ph msg/msgNumber "
>
<!ATTLIST msgSuffix
   %global-atts;
   class CDATA "- topic/ph reference/ph msg/msgSuffix "
>
<!ATTLIST msgSystemAction
   %global-atts;
   class CDATA "- topic/section reference/section msg/msgSystemAction "
>
<!ATTLIST msgExplanation
   %global-atts;
   class CDATA "- topic/section reference/section msg/msgExplanation "
>
<!ATTLIST noAction
   %global-atts;
   class CDATA "- topic/p reference/p msg/noAction "
>
<!ATTLIST msgResponse
   %global-atts;
   class CDATA "- topic/section reference/section msg/msgResponse "
>
<!ATTLIST msgOperatorResponse
   %global-atts;
   class CDATA "- topic/section reference/section msg/msgOperatorResponse "
>
<!ATTLIST msgSystemProgrammerResponse
   %global-atts;
   class CDATA "- topic/section reference/section msg/msgSystemProgrammerResponse "
>
<!ATTLIST msgUserResponse
   %global-atts;
   class CDATA "- topic/section reference/section msg/msgUserResponse "
>
<!ATTLIST msgAdministratorResponse
   %global-atts;
   class CDATA "- topic/section reference/section msg/msgAdministratorResponse "
>
<!ATTLIST msgProgrammerResponse
   %global-atts;
   class CDATA "- topic/section reference/section msg/msgProgrammerResponse "
>
<!ATTLIST msgProblemDetermination
   %global-atts;
   class CDATA "- topic/section reference/section msg/msgProblemDetermination "
>
<!ATTLIST msgSource
   %global-atts;
   class CDATA "- topic/section reference/section msg/msgSource "
>
<!ATTLIST msgModule
   %global-atts;
   class CDATA "- topic/section reference/section msg/msgModule "
>
<!ATTLIST msgRoutingCode
   %global-atts;
   class CDATA "- topic/section reference/section msg/msgRoutingCode "
>
<!ATTLIST msgDescriptorCode
   %global-atts;
   class CDATA "- topic/section reference/section msg/msgDescriptorCode "
>
<!ATTLIST msgAutomation
   %global-atts;
   class CDATA "- topic/section reference/section msg/msgAutomation "
>
<!ATTLIST msgOther
   %global-atts;
   class CDATA "- topic/section reference/section msg/msgOther "
>
