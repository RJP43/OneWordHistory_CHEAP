<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="html" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Early English Books Online Sample from 1550-1560</title>
            </head>
            <body>
                <h1>Early English Books Online Sample from 1550-1560</h1>
                <table>
                    <tr>
                        <th>Author</th>
                        <th>Title</th>
                        <th>Date</th>
                        <th>Pub. Place</th>
                        <th>Passage</th>
                        <th>Image/Page Number</th>
                        <th>Definition</th>
                    </tr>
                    
                    <xsl:apply-templates select="//bibl"/>
                    
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="bibl">
        <xsl:for-each select=".">
            <tr>
                <td>
                    <xsl:choose>
                        <xsl:when test=".//surname"><xsl:apply-templates select=".//surname"/><xsl:text>, </xsl:text><xsl:apply-templates select=".//forename"/></xsl:when>
                        <xsl:otherwise><xsl:apply-templates select=".//name"/></xsl:otherwise>
                    </xsl:choose>
                </td>
                <td>
                    <xsl:choose>
                        <xsl:when test=".//title[@level='short']"><i><xsl:apply-templates select=".//title[@level='short']"/></i></xsl:when>
                        <xsl:otherwise><i><xsl:apply-templates select=".//title"/></i></xsl:otherwise>
                    </xsl:choose>
                </td>
                <td><xsl:apply-templates select=".//date/@when"/></td>
                <td><xsl:apply-templates select=".//printPlace"/></td>
                <td><xsl:apply-templates select=".//passage"/></td>
                <td><a href="{.//ref/@target}"><xsl:apply-templates select=".//document"/></a></td>
                <td><xsl:choose>
                    <xsl:when test=".//definition[2]">
                        <xsl:apply-templates select=".//definition[1]"/><xsl:text> (</xsl:text><xsl:apply-templates select=".//definition[1]/@ana"/><xsl:text>)</xsl:text>
                        <br/><xsl:text>OR</xsl:text><br/>
                        <xsl:apply-templates select=".//definition[2]"/><xsl:text> (</xsl:text><xsl:apply-templates select=".//definition[2]/@ana"/><xsl:text>)</xsl:text>
                    </xsl:when> 
                    <xsl:otherwise><xsl:apply-templates select=".//definition"/><xsl:text> (</xsl:text><xsl:apply-templates select=".//definition/@ana"/><xsl:text>)</xsl:text></xsl:otherwise>
                </xsl:choose></td>
            </tr>
        </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>