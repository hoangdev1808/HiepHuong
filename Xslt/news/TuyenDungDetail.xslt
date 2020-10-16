<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="kv-section hr-detail">
            <div class="container">
                <div class="row">
                    <div class="col-xl-9 col-lg-12 col-md-12 col-12">
                        <div class="kv-title">
                            <h1>
                                <xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of>
                                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                            </h1>
                        </div>
                        <div class="timeline">
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
                            <div class="box-apply">
                                <a class="btn btn__down" href="">Tải mẫu đơn ứng tuyển</a>
                                <a class="btn btn__apply">
                                    <xsl:attribute name="data-type">
                                        <xsl:text>iframe</xsl:text>
                                    </xsl:attribute>
                                    <xsl:attribute name="data-fancybox">
                                        <xsl:text>Form ứng tuyển</xsl:text>
                                    </xsl:attribute>
                                    <xsl:attribute name="data-src">
                                        <xsl:value-of select="/NewsDetail/ApplyUrl" disable-output-escaping="yes"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="title">
                                        <xsl:value-of select="Title"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:value-of select="/NewsDetail/Apply"></xsl:value-of>
                                    <xsl:text disable-output-escaping="yes">Nộp đơn ứng tuyển</xsl:text>
                                </a>
                            </div>
                        </div>
                        <div class="full-content">
                            <xsl:apply-templates select="/NewsDetail/NewsAttributes"></xsl:apply-templates>
                        </div>
                        <!-- <xsl:apply-templates select="/NewsDetail/NewsAttributes"></xsl:apply-templates> -->
                    </div>
                    <div class="col-xl-3 col-lg-12 col-md-12 col-12">
                        <div class="sidebar">
                            <div class="sidebar-title">
                                <p>Thông tin liên hệ</p>
                                <span>Người liên hệ: Ms. Loan</span>
                            </div>
                            <ul>
                                <li>
                                    <span class="material-icons">location_on</span>
                                    <span>
                                        <p>
                                            <strong>Showroom: </strong>Số 18, Quang Trung, Tp. Quảng Ngãi.
                                        </p>
                                        <p>
                                            <strong>Plaza Hiệp Hương: </strong>Số 31 Quang Trung, Tp. Quảng Ngãi.
                                        </p>
                                    </span>
                                </li>
                                <li>
                                    <span class="material-icons">call</span>
                                    <p>0914305775 – 0908626600</p>
                                </li>
                                <li>
                                    <span class="material-icons">mail</span>
                                    <p>ctyhiephuongqn@gmail.com</p>
                                </li>
                            </ul>
                        </div>
                        <div class="sidebar">
                            <div class="sidebar-title">
                                <p>công việc tương tự</p>
                            </div>
                            <ul class="list">
                                <xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsAttributes">
        <div class="attribute">
            <p class="title">
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </p>
            <xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
        </div>
    </xsl:template>
    <xsl:template match="NewsOther">
        <li>
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <h1>
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </h1>
                <p>
                    <xsl:text disable-output-escaping="yes">Nơi làm việc: </xsl:text>
                    <xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
                </p>
                <span>
                    <xsl:text disable-output-escaping="yes">Hạn nộp hồ sơ: </xsl:text>
                    <xsl:value-of select="EndDate" disable-output-escaping="yes"></xsl:value-of>
                </span>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>