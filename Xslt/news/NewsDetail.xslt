<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="kv-section news-detail">
            <div class="container">
                <div class="row">
                    <div class="col-xl-9 col-lg-12">
                        <div class="kv-title" data-aos="fade-up">
                            <h1>
                                <xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of>
                            </h1>
                        </div>
                        <div class="timeline" data-aos="fade-up">
                            <div class="date">
                                <xsl:value-of select="/NewsDetail/CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                            </div>
                            <div class="icon-social">
                                <ul>
                                    <li>
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:text disable-output-escaping="yes">https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
                                                <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullUrl"></xsl:value-of>
                                            </xsl:attribute>
                                            <em class="fab fa-facebook-square"></em>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <em class="fab fa-instagram"></em>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="content" data-aos="fade-up">
                            <xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </div>
                    <div class="col-lg-12 col-xl-3">
                        <ul class="tintuc-sidebar">
                            <div class="title-sidebar" data-aos="fade-down">Tin tức khác</div>
                            <div class="row">
                                <xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
                            </div>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsOther">
        <li class="col-xl-12 col-md-6" data-aos="fade-left">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
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
                <div class="tintuc-text">
                    <div class="date">
                        <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <h1 class="text">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </h1>
                </div>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>