<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="kv-section project-detail">
            <div class="container">
                <div class="kv-title">
                    <h1>
                        <xsl:value-of select="/ProductDetail/Title" disable-output-escaping="yes"></xsl:value-of>
                    </h1>
                </div>
                <div class="timeline">
                    <div class="icon-social">
                        <ul>
                            <li>
                                <a>
                                    <xsl:attribute name="href">
                                        <xsl:text disable-output-escaping="yes">https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
                                        <xsl:value-of disable-output-escaping="yes" select="/ProductDetail/FullUrl"></xsl:value-of>
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
                <div class="full-content">
                    <div class="kv-desc">
                        <p>
                            <xsl:value-of select="/ProductDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
                        </p>
                    </div>
                    <div class="kv-slide">
                        <div class="swiper-container gallery-top">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="/ProductDetail/ProductImages" mode="Top"></xsl:apply-templates>
                            </div>
                        </div>
                        <div class="swiper-container-thumbs gallery-thumbs">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="/ProductDetail/ProductImages" mode="Thumbs"></xsl:apply-templates>
                            </div>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                    <div class="attribute">
                        <xsl:value-of select="/ProductDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
                        <a class="btn btn-readmore" href="">Xem thêm
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            <em class="ri-arrow-down-s-line"></em>
                        </a>
                        <table>
                            <xsl:apply-templates select="/ProductDetail/ProductAttributes"></xsl:apply-templates>
                        </table>
                    </div>
                </div>
            </div>
        </section>
        <div class="project-other kv-section">
            <div class="container">
                <div class="attribute">
                    <p class="title">
                        <xsl:value-of select="/ProductDetail/Title" disable-output-escaping="yes"></xsl:value-of>
                    </p>
                </div>
                <div class="kv-other">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="/ProductDetail/ProductOther"></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="ProductOther">
        <div class="swiper-slide">
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
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <h1 class="title">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </h1>
                        <p>
                            <xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
                        </p>
                    </a>
                    <a class="btn btn-viewmore">
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:text disable-output-escaping="yes">Xem thêm</xsl:text>
                        <span class="lnr lnr-arrow-right"></span>
                    </a>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
    <xsl:template match="ProductAttributes">
        <tr>
            <td>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </td>
            <td>
                <xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="ProductImages" mode="Top">
        <div class="swiper-slide">
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
        </div>
    </xsl:template>
    <xsl:template match="ProductImages" mode="Thumbs">
        <div class="swiper-slide">
            <div class="img">
                <img >
                    <xsl:attribute name="src">
                        <xsl:value-of select="ThumbnailUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>