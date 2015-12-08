<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="samplesColl" select="collection('samples')"/>
    <xsl:variable name="interval" select="60"/>
    
    <xsl:template match="/">
        <svg width="150%" height="125%">
            <g transform="translate(100, 600)">
                <text x="375" y="-550" text-anchor="middle">From 1550-1915, Frequency of Particular Parts of Speech as seen in Sample Data</text>
                <line x1="20" x2="20" y1="0" y2="-500" stroke="black" stroke-width="1"/>
                <text x="0" y="0" text-anchor="middle">0</text>
                <text x="0" y="-125" text-anchor="middle">25%</text>
                <text x="0" y="-250" text-anchor="middle">50%</text>
                <text x="0" y="-375" text-anchor="middle">75%</text>
                <text x="0" y="-500" text-anchor="middle">100%</text>
                
                <!--<text x="60" y="30" text-anchor="middle">1550</text>
                <text x="120" y="30" text-anchor="middle">1554</text>
                <text x="180" y="30" text-anchor="middle">1555</text>
                <text x="240" y="30" text-anchor="middle">1556</text>
                <text x="300" y="30" text-anchor="middle">1557</text>
                <text x="360" y="30" text-anchor="middle">1560</text>
                <text x="420" y="30" text-anchor="middle">1650</text>
                <text x="480" y="30" text-anchor="middle">1652</text>
                <text x="540" y="30" text-anchor="middle">1653</text>
                <text x="600" y="30" text-anchor="middle">1655</text>
                <text x="660" y="30" text-anchor="middle">1656</text>
                <text x="720" y="30" text-anchor="middle">1657</text>
                <text x="780" y="30" text-anchor="middle">1659</text>
                <text x="840" y="30" text-anchor="middle">1660</text>
                <text x="900" y="30" text-anchor="middle">1715</text>
                <text x="960" y="30" text-anchor="middle">1750</text>
                <text x="1020" y="30" text-anchor="middle">1804</text>
                <text x="1080" y="30" text-anchor="middle">1806</text>
                <text x="1140" y="30" text-anchor="middle">1807</text>
                <text x="1200" y="30" text-anchor="middle">1810</text>
                <text x="1260" y="30" text-anchor="middle">1813</text>
                <text x="1320" y="30" text-anchor="middle">1819</text>
                <text x="1380" y="30" text-anchor="middle">1820</text>
                <text x="1440" y="30" text-anchor="middle">1915</text>-->
                
                <line x1="20" x2="1500" y1="0" y2="0" stroke="black" stroke-width="1"/>
                
                <xsl:apply-templates select="$samplesColl//bibl"/>
            </g>
        </svg>
    </xsl:template>
    <!--<xsl:template match="bibl">
        <xsl:for-each-group select="$samplesColl//date" group-by="$samplesColl//date/@when">
            <xsl:variable name="xPos" select="position()*$interval"/>
            <xsl:for-each select="//date">
                <text x="{$xPos}" y="30" text-anchor="middle"><xsl:value-of select="//distinct-values(@when)"/></text>
            </xsl:for-each>
        </xsl:for-each-group>
    </xsl:template>-->    
    <xsl:template match="bibl">
        <xsl:variable name="xPos" select="position()*$interval"/>
        <!--<xsl:for-each select="//date">-->
        <text x="{$xPos}" y="30" text-anchor="middle"><xsl:value-of select="./distinct-values(//date/@when)"/></text>
        <!--</xsl:for-each>-->

    </xsl:template>
    
</xsl:stylesheet>