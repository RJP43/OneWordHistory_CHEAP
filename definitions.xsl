<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Definitions of the Variations of Cheap - Organized by Parts of Speech</title>
            </head>
            <body>
                <h1>Definitions of the Variations of Cheap - Organized by Parts of Speech</h1> 
                <h4>According to the Oxford English Dictionary Online</h4>
                <h2>VERBS</h2>
                <h3>Table 1: Obsolete</h3>
                <table>
                    <tr>
                        <th>Form</th>
                        <th>Definition</th>
                        <th>First Recorded Use According to the OED</th>
                    </tr>
                    <xsl:apply-templates select="//fs[@type='verb'][f[@name='obsolete']]"/>
                </table>
                <h3>Table 2: Still in Use</h3>
                <table>
                    <tr>
                        <th>Form</th>
                        <th>Definition</th>
                        <th>First Recorded Use According to the OED</th>
                    </tr>
                    <xsl:apply-templates select="//fs[@type='verb'][f[@name='notObsolete']]"/>
                </table>
                
                <hr/>
                
                <h2>NOUNS</h2>
                <h3>Table 1: Obsolete</h3>
                <h5>All noun forms are obsolete!</h5>
                <table>
                    <tr>
                        <th>Form</th>
                        <th>Definition</th>
                        <th>First Recorded Use According to the OED</th>
                    </tr>
                    <xsl:apply-templates select="//fs[@type='noun']"/>
                </table>
                
                <hr/>
                
                <h2>ADJECTIVES</h2>
                <h3>Table 1: Still in Use</h3>
                <h5>None of the adjective forms are obsolete!</h5>
                <table>
                    <tr>
                        <th>Form</th>
                        <th>Definition</th>
                        <th>First Recorded Use According to the OED</th>
                    </tr>
                    <xsl:apply-templates select="//fs[@type='adjective']"/>
                </table>
                
                <hr/>
                
                <h2>ADVERBS</h2>
                <h3>Table 1: Still in Use</h3>
                <h5>The adverb form can still be found in use!</h5>
                <table>
                    <tr>
                        <th>Form</th>
                        <th>Definition</th>
                        <th>First Recorded Use According to the OED</th>
                    </tr>
                    <xsl:apply-templates select="//fs[@type='adverb']"/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="fs[@type='verb']/f[@name='obsolete']">
        <tr>
            <td><xsl:apply-templates select=".//fs/@type"/>
            (<xsl:apply-templates select=".//fs/f[@name='type']"/>)</td>
            <td><xsl:apply-templates select=".//fs/f[@name='definition']"/></td>
            <td><xsl:apply-templates select=".//fs/f[@name='firstUse']"/></td>
        </tr>
    </xsl:template>
    <xsl:template match="fs[@type='noun']">
        <tr>
            <td><xsl:apply-templates select=".//fs/@type"/>
                <!--2015-11-22 ebb: Here's the problem: You're getting exactly what you request
                here, but you need to be looping through a list of results, not getting all of 
                them at once. You want either xsl:for-each, or to set up a new template rule with instructions on oututtping
             the contents of each inner fs within its own internal table or table row. 
                It's okay for a table to have nested tables inside. You might break this down a little more 
                and create for the OUTERMOST hierarchy something like an unordered or ordered list before you
                break into table elements. But you need to work on getting each of these <fs> units inside its own 
                <tr>, because currently you're outputting them all together inside a <td> which isn't what you want.
                
                -->
                (<xsl:apply-templates select=".//fs/f[@name='type']"/>)</td>
            <td><xsl:apply-templates select=".//fs/f[@name='definition']"/></td>
            <td><xsl:apply-templates select=".//fs/f[@name='firstUse']"/></td>
        </tr>
    </xsl:template>
    <xsl:template match="fs[@type='adjective']">
        <tr>
            <td><xsl:apply-templates select=".//fs/@type"/></td>
            <td><xsl:apply-templates select=".//fs/f[@name='definition']"/></td>
            <td><xsl:apply-templates select=".//fs/f[@name='firstUse']"/></td>
        </tr>
    </xsl:template>
    <xsl:template match="fs[@type='adverb']">
        <tr>
            <td><xsl:apply-templates select=".//fs/@type"/></td>
            <td><xsl:apply-templates select=".//fs/f[@name='definition']"/></td>
            <td><xsl:apply-templates select=".//fs/f[@name='firstUse']"/></td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>