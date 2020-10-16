<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="section home-1">
            <div class="container">
                <div class="block-title">
                    <h2>
                        <xsl:value-of select="/NewsList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
                    </h2>
                </div>
            </div>
            <div class="content border-top">
                <div class="container">
                    <div class="slide-special">
                        <div class="swiper-container slide-block">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
                            </div>
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News">
        <div class="swiper-slide">
            <div class="item">
                <figure>
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
                    <figcaption>
                        <div class="date">
                            <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                        <div class="desc">
                            <a href="">
                                <h1>
                                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                </h1>
                            </a>
                        </div>
                        <div class="categroly">
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="ZoneTitle"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:value-of select="ZoneTitle" disable-output-escaping="yes"></xsl:value-of>
                            </a>
                        </div>
                    </figcaption>
                </figure>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>