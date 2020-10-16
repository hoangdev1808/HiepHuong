<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="kv-section list-tabel">
            <div class="container">
                <div class="kv-title red">
                    <p>
                        <xsl:value-of select="NewsList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
                    </p>
                </div>
                <table>
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>Vị trí ứng tuyển</th>
                            <th>Khu vực</th>
                            <th>Số lượng</th>
                            <th>Thời hạn</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:apply-templates select="NewsList/News" mode="DeskTop"></xsl:apply-templates>
                    </tbody>
                </table>
                <div class="hr-v-mobile row">
                    <xsl:apply-templates select="NewsList/News" mode="Mobile"></xsl:apply-templates>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News" mode="DeskTop">
        <tr>
            <td>
                <xsl:if test="position()&lt;10">
                    <xsl:text>0</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:if>
                <xsl:if test="position()>=10">
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:if>
            </td>
            <td>
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
                    </xsl:attribute>
                    <h1>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </h1>
                </a>
            </td>
            <td>
                <xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
            </td>
            <td>
                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
            </td>
            <td>
                <xsl:value-of select="EndDate" disable-output-escaping="yes"></xsl:value-of>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="News" mode="Mobile">
        <div class="col-md-6">
            <div class="item">
                <h1>
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </a>
                </h1>
                <p>
                    <em class="mdi mdi-account-group"></em>
                    <span>
                        <xsl:text disable-output-escaping="yes">Số lượng: </xsl:text>
                        <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                    </span>
                </p>
                <p>
                    <em class="mdi mdi-map-marker"></em>
                    <span>
                        <xsl:text disable-output-escaping="yes">Khu vực: </xsl:text>
                        <xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
                    </span>
                </p>
                <p>
                    <em class="mdi mdi-clock-start"></em>
                    <span>
                        <xsl:text disable-output-escaping="yes">Ngày bắt đầu: </xsl:text>
                        <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                    </span>
                </p>
                <p>
                    <em class="mdi mdi-clock-end"></em>
                    <span>
                        <xsl:text disable-output-escaping="yes">Hạn nộp hồ sơ: </xsl:text>
                        <xsl:value-of select="EndDate" disable-output-escaping="yes"></xsl:value-of>
                    </span>
                </p>
                <a class="btn-view">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes">Xem chi tiết</xsl:text>
                </a>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>