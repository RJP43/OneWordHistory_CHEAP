<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="samplesColl" select="collection('samples')"/>
    <xsl:variable name="interval" select="60"/>
    
    <xsl:template match="/">
        <svg width="100%" height="100%">
            <g transform="translate(100, 600)">
                <text x="375" y="-550" text-anchor="middle">From 1550-1915, Frequency of Particular Parts of Speech as seen in Sample Data</text>
                <line x1="20" x2="20" y1="0" y2="-500" stroke="black" stroke-width="1"/>
                <text x="0" y="0" text-anchor="middle">0</text>
                <text x="0" y="-125" text-anchor="middle">25%</text>
                <text x="0" y="-250" text-anchor="middle">50%</text>
                <text x="0" y="-375" text-anchor="middle">75%</text>
                <text x="0" y="-500" text-anchor="middle">100%</text>
                
                
                <line x1="20" x2="750" y1="0" y2="0" stroke="black" stroke-width="1"/>
                
                <xsl:apply-templates select="$samplesColl//bibl"/>
            </g>
        </svg>
    </xsl:template>
    <xsl:template match="bibl">
        <xsl:variable name="xPos" select="position()*$interval"/>
        <xsl:for-each select="//date">
        <text x="{$xPos}" y="30" text-anchor="middle"><xsl:value-of select="//@when"/></text>
        </xsl:for-each>

    </xsl:template>
    
</xsl:stylesheet>