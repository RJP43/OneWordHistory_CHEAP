<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="samplesColl" select="collection('samples')"/>
    <xsl:variable name="y-interval" select="100"/>
    <xsl:variable name="x-interval" select="200"/>
    
    <xsl:template match="/">
        <svg width="100%" height="100%">
            <g transform="translate(200, 600)">
                <!-- title -->
                <text x="525" y="-525" text-anchor="middle">From 1550-1915, Frequency of Particular Parts of Speech as seen in Sample Data</text>
                <!-- y-Axis -->
                <line x1="0" x2="0" y1="0" y2="-450" stroke="black" stroke-width="1"/>
                <!-- x-Axis -->
                <line x1="-1" x2="1050" y1="0" y2="0" stroke="black" stroke-width="1"/>
                <!-- y-axis marks -->
                <text x="-25" y="-100" text-anchor="middle">25%</text>
                <line x1="-10" x2="1050" y1="-100" y2="-100" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
                <text x="-25" y="-200" text-anchor="middle">50%</text>
                <line x1="-10" x2="1050" y1="-200" y2="-200" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
                <text x="-25" y="-300" text-anchor="middle">75%</text>
                <line x1="-10" x2="1050" y1="-300" y2="-300" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
                <text x="-25" y="-400" text-anchor="middle">100%</text>
                <line x1="-10" x2="1050" y1="-400" y2="-400" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
                <!-- x-axis marks -->
                <text x="200" y="25" text-anchor="middle">16th Cent. Samples</text>
                <line x1="200" x2="200" y1="10" y2="-10" stroke="black" stroke-width="1"/>
                <text x="400" y="25" text-anchor="middle">17th Cent. Samples</text>
                <line x1="400" x2="400" y1="10" y2="-10" stroke="black" stroke-width="1"/>
                <text x="600" y="25" text-anchor="middle">18th Cent. Samples</text>
                <line x1="600" x2="600" y1="10" y2="-10" stroke="black" stroke-width="1"/>
                <text x="800" y="25" text-anchor="middle">19th Cent. Samples</text>
                <line x1="800" x2="800" y1="10" y2="-10" stroke="black" stroke-width="1"/>
                <text x="1000" y="25" text-anchor="middle">20th Cent. Samples</text>
                <line x1="1000" x2="1000" y1="10" y2="-10" stroke="black" stroke-width="1"/>
            </g>
        </svg>
        
    </xsl:template>
    
</xsl:stylesheet>