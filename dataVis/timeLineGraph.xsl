<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="samplesColl" select="collection('samples')"/>
    <xsl:variable name="interval" select="60"/>
    <xsl:variable name="xSpacer" select="5"/>
    
    
    <xsl:template match="/">
        <svg width="150%" height="125%">
            <g transform="translate(-7600, 600)">
                <!-- title -->
                <text x="1875" y="-575" text-anchor="middle">From 1550-1915, Frequency of Particular Parts of Speech as seen in Sample Data</text>
                <!-- y-Axis -->
                <line x1="7700" x2="7700" y1="0" y2="-550" stroke="black" stroke-width="1"/>
                <!-- y-axis marks -->
                <text x="7680" y="-135" text-anchor="middle">25%</text>
                <text x="7680" y="-260" text-anchor="middle">50%</text>
                <text x="7680" y="-385" text-anchor="middle">75%</text>
                <text x="7680" y="-510" text-anchor="middle">100%</text>
                 <!-- x-axis -->              
                <line x1="7700" x2="{1915*$xSpacer}" y1="0" y2="0" stroke="black" stroke-width="1"/>
                
                <xsl:variable name="minDate" select="xs:integer(min($samplesColl//date/@when))"/>
                <xsl:variable name="maxDate" select="xs:integer(max($samplesColl//date/@when))"/>
                
                
                <!-- x-axis marks -->
                <xsl:for-each select="$minDate to $maxDate">
                    <xsl:variable name="year" select="string(.)"/>
                    <xsl:if test="$year[ends-with($year, '0')] or $year[ends-with($year, '5')]">
                        <line x1="{xs:integer($year)*$xSpacer}" x2="{xs:integer($year)*$xSpacer}" y1="0" y2="10" stroke="black" stroke-width="1"/>
                        
                        <!--rjp 2015-12-08: two attempts at trying to get the dates to appear under the hash tags, but keeps saying the selection of the xsl:apply-templates isn't allowed to be a variable and something about an atomic value... ugh!-->
                        <!--<xsl:if test="$year[ends-with($year, '0')]">
                        <text x="{xs:integer($year)*$xSpacer}" y="30" text-anchor="middle"><xsl:apply-templates/></text>
                        </xsl:if>-->
                        <!--<text x="{xs:integer($year)*$xSpacer}" y="30" text-anchor="middle"><xsl:apply-templates select="{$year}"/></text> -->
                        
                    </xsl:if>
                </xsl:for-each>
                
                <!-- rjp 2015-12-08: this is my attempt at what Dr. B. was suggesting when I left her office this evening... this isn't working tho -->
                <!--<xsl:for-each select="distinct-values(//date/@when)">
                    
                    <xsl:variable name="dot" select="count(//date[@when=.]/following-sibling::definition/@ana='adjective')"/>
                    
                    <circle cx="7750" cy="{$dot}" r="5" fill="red"/>
                </xsl:for-each>-->
                
                
                
                <!--nll 2015-12-08:  Okay, so here is where I've got a couple dots!!  But I'm not sure if this is correct..Someone check me??-->
                    <!--<xsl:variable name="yPos1" select="(((count(//date[@when='1550' or '1554' or '1555']/following-sibling::definition[@ana='adjective'])) div (count(//definition[@ana]))) * 100)"/>
                <xsl:variable name="yPos2" select="(((count(//date[@when='1550' or '1554' or '1555']/following-sibling::definition[@ana='noun'])) div (count(//definition[@ana]))) * 100)"/>
                <circle cx="7750" cy="-{$yPos1}" r="5" fill="orange"/>
                <circle cx="7750" cy="-{$yPos2}" r="5" fill="green"/>
               
               <xsl:apply-templates/>-->
                
                
                
            </g>
        </svg>
    </xsl:template>    
</xsl:stylesheet>