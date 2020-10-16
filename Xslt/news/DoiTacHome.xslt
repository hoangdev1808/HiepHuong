<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="row">
            <div class="col-xl-3 left">
                <xsl:apply-templates select="/NewsList/News" mode="DESC"></xsl:apply-templates>
            </div>
            <div class="col-xl-9 right pl-120">
                <div class="row">
                    <xsl:apply-templates select="/NewsList/News" mode="Logo"></xsl:apply-templates>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="DESC">
        <xsl:if test="position()=1">
            <div class="kv-title red">
                <p>
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </p>
            </div>
            <div class="desc">
                <p>
                    <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                </p>
            </div>
            <a class="btn btn-pageLoad">
                <xsl:attribute name="href">
                    <xsl:text disable-output-escaping="yes">/gioi-thieu</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:text disable-output-escaping="yes">Xem thêm</xsl:text>
                <em class="lnr lnr-arrow-right"></em>
            </a>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Logo">
        <xsl:if test="position()!=1">
            <div class="item col">
                <div class="img">
                    <img >
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                <span class="span-1"></span>
                <span class="span-2"></span>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>