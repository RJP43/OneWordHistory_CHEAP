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
            <title>Definitions of the Variations of Cheap - Organized by Word Variatian and Parts of Speech</title>
        </head>
        <body>
            <h1>Definitions of the Variations of Cheap</h1>
            <h2>Organized by Word Variatian and Parts of Speech</h2> 
            <h3>According to the Oxford English Dictionary Online</h3>
            <h2>CHEAP</h2>
            <table>
                <tr>
                    <th>Part of Speech</th>
                    <th>Still in Use?</th>
                    <th>Definition</th>
                </tr>
                <xsl:apply-templates select="//ref[@type='cheap']"/>
            </table>
            <h2>CHEAPEN</h2>
            <table>
                <tr>
                    <th>Part of Speech</th>
                    <th>Still in Use?</th>
                    <th>Definition</th>
                </tr>
                <xsl:apply-templates select="//ref[@type='cheapen']"/>
            </table>
            <h2>CHEAPNESS</h2>
            <table>
                <tr>
                    <th>Part of Speech</th>
                    <th>Still in Use?</th>
                    <th>Definition</th>
                </tr>
                <xsl:apply-templates select="//ref[@type='cheapness']"/>
            </table>
            <h2>CHEAPLY</h2>
            <table>
                <tr>
                    <th>Part of Speech</th>
                    <th>Still in Use?</th>
                    <th>Definition</th>
                </tr>
                <xsl:apply-templates select="//ref[@type='cheaply']"/>
            </table>
        </body>
        </html>
    </xsl:template>
    <xsl:template match="ref[@type='cheap']">
        <xsl:for-each select=".//string">
        <tr>
            <td><xsl:apply-templates select="./ancestor::entry/@type"/><br/>
                <xsl:choose>
                    <xsl:when test="./ancestor::entry[@subtype]"><xsl:text>(</xsl:text><xsl:apply-templates select="./ancestor::entry/@subtype"/><xsl:text>)</xsl:text></xsl:when>
                    <xsl:otherwise></xsl:otherwise>
                </xsl:choose>
            </td>
            <td><xsl:choose>
                <xsl:when test="./ancestor::entry[@ana='obsolete']"><xsl:text>No</xsl:text></xsl:when>
                <xsl:otherwise><xsl:text>Yes</xsl:text></xsl:otherwise>
            </xsl:choose>
            </td>
            <td><xsl:apply-templates select="."/></td>
        </tr>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="ref[@type='cheapen']">
        <xsl:for-each select=".//string">
            <tr>
                <td><xsl:apply-templates select="./ancestor::entry/@type"/><br/>
                    <xsl:choose>
                        <xsl:when test="./ancestor::entry[@subtype]"><xsl:text>(</xsl:text><xsl:apply-templates select="./ancestor::entry/@subtype"/><xsl:text>)</xsl:text></xsl:when>
                        <xsl:otherwise></xsl:otherwise>
                    </xsl:choose>
                </td>
                <td><xsl:choose>
                    <xsl:when test="./ancestor::entry[@ana='obsolete']"><xsl:text>No</xsl:text></xsl:when>
                    <xsl:otherwise><xsl:text>Yes</xsl:text></xsl:otherwise>
                </xsl:choose>
                </td>
                <td><xsl:apply-templates select="."/></td>
            </tr>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="ref[@type='cheapness']">
        <xsl:for-each select=".//string">
            <tr>
                <td><xsl:apply-templates select="./ancestor::entry/@type"/><br/>
                    <xsl:choose>
                        <xsl:when test="./ancestor::entry[@subtype]"><xsl:text>(</xsl:text><xsl:apply-templates select="./ancestor::entry/@subtype"/><xsl:text>)</xsl:text></xsl:when>
                        <xsl:otherwise></xsl:otherwise>
                    </xsl:choose>
                </td>
                <td><xsl:choose>
                    <xsl:when test="./ancestor::entry[@ana='obsolete']"><xsl:text>No</xsl:text></xsl:when>
                    <xsl:otherwise><xsl:text>Yes</xsl:text></xsl:otherwise>
                </xsl:choose>
                </td>
                <td><xsl:apply-templates select="."/></td>
            </tr>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="ref[@type='cheaply']">
        <xsl:for-each select=".//string">
            <tr>
                <td><xsl:apply-templates select="./ancestor::entry/@type"/><br/>
                    <xsl:choose>
                        <xsl:when test="./ancestor::entry[@subtype]"><xsl:text>(</xsl:text><xsl:apply-templates select="./ancestor::entry/@subtype"/><xsl:text>)</xsl:text></xsl:when>
                        <xsl:otherwise></xsl:otherwise>
                    </xsl:choose>
                </td>
                <td><xsl:choose>
                    <xsl:when test="./ancestor::entry[@ana='obsolete']"><xsl:text>No</xsl:text></xsl:when>
                    <xsl:otherwise><xsl:text>Yes</xsl:text></xsl:otherwise>
                </xsl:choose>
                </td>
                <td><xsl:apply-templates select="."/></td>
            </tr>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>