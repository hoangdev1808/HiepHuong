<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="swiper-container kv-banner__slide">
            <div class="swiper-wrapper">
                <xsl:apply-templates select="/BannerList/Banner" mode="Slider"></xsl:apply-templates>
            </div>
            <a class="crolldown" href="#home-1">
                <span class="ri-arrow-down-line"></span>
            </a>
        </div>
    </xsl:template>
    <xsl:template match="Banner" mode="Slider">
        <div class="swiper-slide">
            <div class="swiper-inner">
                <img >
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </div>
            <div class="content">
                <xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
                <a class="btn btn-more">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes">tìm hiểu thêm</xsl:text>
                </a>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>