COOKBOOK EXAMPLE

This example gives a demonstration of topic specialization by
defining a simple cookbook map and recipe/topic. The original
data model was described in "The Happy Monkey Cookbook"
(http://www.happy-monkey.net/recipebook/, licensed under 
a Creative Commons Attribution-ShareAlike 2.5 License.)

The purpose of the recipe topic is to model a reference description
of a meal recipe and its attributes.  

The example includes the DTD module, an XSL module for generating HTML
output, and a sample data file.

CAVEAT

The cookbook example is provided only as an example of topic specialization
and not as a standard topic type within the DITA architecture. Other
design approaches are possible.


cookbook EXAMPLE FILES

This directory contains the cookbook examples, including:

A cookbook "map" to aggregate the recipes into a single output form.

Sample recipe files

cookbook.mod
    - topic module to define the cookbook information type

cookbook.dtd
    - shell DTD to merge base and cookbook information types

cookbook.css
    - convenience CSS for styling cookbook/recipe elements (for instance, in
	  editors such as XMetaL)

cookbook_shell.css
    - convenience shell CSS to merge base and cookbook styles

cookbook2html.xsl
    - XSL module to format the cookbook deltas as HTML

cookbook2html_shell.xsl
    - shell XSL to merge base and cookbook formatting

cookbook2fo.xsl
    - XSL module to format the cookbook deltas as XSL-FO

cookbook2fo_shell.xsl
    - shell XSL to merge base and cookbook formatting

cookbook_strings.xml
    - example internationalization file


GENERATING OUTPUT FROM THE EXAMPLE

To generate HTML output, you need to install an XSLT processor.

There are many options for XSLT processor.  For one example, you can
install a Java�  runtime (JRE) and an XSLT processor such as Saxon.

JRE
    - Get a JRE (or a JDK bundling a JRE) such as the Sun J2SE plaform:

          http://java.sun.com/j2se/downloads.html

      Java�  comes with an install program.

Saxon
    - http://saxon.sourceforge.net/

      To install Saxon, you unzip the package and add the saxon.jar 
      file to the CLASSPATH environment variable.

Using Saxon, you can generate HTML or XSL formatting objects from the sample data with

    java com.icl.saxon.StyleSheet -o cookbook.html cookbook.ditamap cookbook2html_shell.xsl
    java com.icl.saxon.StyleSheet -o cookbook.fo cookbook.ditamap cookbook2fo_shell.xsl


FEEDBACK

If you run into problems or want to discuss this example, please feel
free to ask questions...:

