<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="img-popup">
            <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <a>
            <xsl:attribute name="href">
                <xsl:value-of select="BriefContent"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="data-fancybox">
                <xsl:text disable-output-escaping="yes">Popup</xsl:text>
            </xsl:attribute>
            <xsl:attribute name="data-src">
                <xsl:value-of select="BriefContent"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <img >
                <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
            </img>
            <div class="icon">
                <img src="/Data/Sites/1/skins/default/assets/gioithieu/play.png" alt=""/>
            </div>
        </a>
    </xsl:template>
</xsl:stylesheet>