<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="about-nav" data-aos="fade-down">
            <div class="container">
                <div class="categroly">
                    <div class="box-category">
                        <p>Danh mục</p>
                        <em class="material-icons">expand_more</em>
                    </div>
                    <ul>
                        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
                    </ul>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone">
        <li>
            <xsl:if test="position()=1">
                <xsl:if test="IsActive='true'">
                    <xsl:attribute name="class">
                        <xsl:text disable-output-escaping="yes">active</xsl:text>
                    </xsl:attribute>
                </xsl:if>
            </xsl:if>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a class="nav-link">
                <xsl:attribute name="href">
                    <xsl:text disable-output-escaping="yes">#about-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>