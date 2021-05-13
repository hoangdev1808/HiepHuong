<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="kv-section kv-map">
            <div class="container">
                <div class="row">
                    <div class="col-xl-4 col-lg-5 col-md-6">
                        <div class="kv-list">
                            <ul>
                                <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-8 col-lg-7 col-md-6">
                        <div class="map" data-aos="fade-left">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3851.474619979197!2d108.79926191535506!3d15.132257367881795!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3169ad368319c449%3A0x92cea29a835b0651!2zMTggUXVhbmcgVHJ1bmcsIEzDqiBI4buTbmcgUGhvbmcsIFF14bqjbmcgTmfDo2ksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1601880896587!5m2!1svi!2s" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News">
        <li data-aos="fade-up">
            <xsl:if test="position()=1">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="data-href">
                <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
            </xsl:attribute>
            <div class="title" data-aos="fade-up">
                <h1>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                </h1>
            </div>
            <div class="address" data-aos="fade-right">
                <em class="lnr lnr-map-marker"></em>
                <span>
                    <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                </span>
            </div>
        </li>
    </xsl:template>
</xsl:stylesheet>