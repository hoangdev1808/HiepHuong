<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="kv-title red" data-aos="fade-down">
            <p>
                <xsl:value-of select="/ZoneList/Title" disable-output-escaping="yes"></xsl:value-of>
            </p>
        </div>
        <div class="news-nav" data-aos="fade-up">
            <div class="box-category">
                <p>Danh mục</p>
                <em class="material-icons">expand_more</em>
            </div>
            <ul>
                <xsl:apply-templates select="/ZoneList/Zone/Zone"></xsl:apply-templates>
            </ul>
        </div>
    </xsl:template>
    <xsl:template match="Zone">
        <li>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a class="nav-link">
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>