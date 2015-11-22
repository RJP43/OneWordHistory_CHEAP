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