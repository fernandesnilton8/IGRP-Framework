<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" omit-xml-declaration="yes" encoding="ISO-8859-1" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
  <xsl:template match="/">
    <html><!--XSL Generator (RED / DIM )--><!--HOME-HEADER--><xsl:call-template name="home-header"/>
      <xsl:apply-templates mode="js_validation" select="rows/content/js_validation"/>
      <body><!--HOME TOP--><xsl:call-template name="home-top-main"/><!--CENTER PANE--><div class="general">
          <div id="content">
            <div class="ui-layout-center">
              <xsl:call-template name="dialog-modal"/><!-- START YOUR CODE HERE --><div class="box-content"><!--PAGE TITLE--><xsl:call-template name="page-title">
                  <xsl:with-param name="title" select="rows/content/title"/>
                </xsl:call-template><!--END PAGE TITLE--><!-- START NOTIFICATION MESSAGES--><xsl:apply-templates mode="notif_messages" select="rows/content/messages">
                  <xsl:with-param name="class" select="'notification'"/>
                </xsl:apply-templates><!-- END NOTIFICATION MESSAGES--><form action="#" method="post" id="formular_default" name="formular_default" class="default_filter"><!-- START HIDDEN FILTER--><xsl:apply-templates mode="form-hidden" select="rows/content/filter/value"/><!-- END HIDDEN FILTER--><!-- START HIDDEN FORM--><xsl:apply-templates mode="form-hidden" select="rows/content/form/value"/><!-- END HIDDEN FORM--><!-- START FILTER--><div class="box-content"/><!-- END FILTER--><!--START TOOL BAR TABLE--><xsl:apply-templates mode="tools-bar" select="rows/content/table/tools-bar"/><!--END TOOL BAR TABLE--><xsl:call-template name="filter-az">
                    <xsl:with-param name="name" select="rows/content/filter/value/nome/@name"/>
                    <xsl:with-param name="value" select="rows/content/filter/value/nome"/>
                    <xsl:with-param name="type" select="'filter_az'"/>
                  </xsl:call-template><!-- START TABELA--><!--  CONTEXT-MENU  --><xsl:apply-templates mode="context-menu" select="rows/content/table/context-menu"/>
                  <div class="table">
                    <table class="sortable IGRP_table">
                      <thead>
                        <tr>
                          <xsl:if test="rows/content/table/label/nome">
                            <th align="left">
                              <xsl:value-of select="rows/content/table/label/nome"/>
                            </th>
                          </xsl:if>
                          <xsl:if test="rows/content/table/label/morada">
                            <th align="left">
                              <xsl:value-of select="rows/content/table/label/morada"/>
                            </th>
                          </xsl:if>
                          <xsl:if test="rows/content/table/label/foto_id">
                            <th align="center">
                              <xsl:value-of select="rows/content/table/label/foto_id"/>
                            </th>
                          </xsl:if>
                        </tr>
                      </thead>
                      <tbody>
                        <xsl:for-each select="rows/content/table/value/row[not(@total='yes')]">
                          <xsl:variable name="pos" select="(position()+1) mod 2"/>
                          <tr class="IGRP_contextMenu">
                            <xsl:apply-templates mode="context-param" select="context-menu"/>
                            <xsl:if test="nome">
                              <td align="left" class="table_row{$pos}">
                                <xsl:value-of select="nome"/>
                              </td>
                            </xsl:if>
                            <xsl:if test="morada">
                              <td align="left" class="table_row{$pos}">
                                <xsl:value-of select="morada"/>
                              </td>
                            </xsl:if>
                            <xsl:if test="foto_id">
                              <td align="center" class="table_row{$pos}">
                                <xsl:choose>
                                  <xsl:when test="foto_id != ''">
                                    <a href="{foto_id}" class="_blank">
                                      <xsl:value-of select="foto_id_desc"/>
                                    </a>
                                  </xsl:when>
                                  <xsl:otherwise>
                                    <xsl:value-of select="foto_id_desc"/>
                                  </xsl:otherwise>
                                </xsl:choose>
                              </td>
                            </xsl:if>
                          </tr>
                        </xsl:for-each>
                      </tbody>
                    </table>
                  </div><!-- END TABELA--></form><!-- END YOUR CODE HERE --></div>
            </div><!-- START HOME BOTTOM --><xsl:call-template name="home-side"/>
          </div>
        </div><!--HOME-FOOTER--></body>
    </html>
  </xsl:template>
  <xsl:include href="../../xsl/tmpl/IGRP-home-include.tmpl.xsl?v=20140210"/>
  <xsl:include href="../../xsl/tmpl/IGRP-JSvalidation.tmpl.xsl?v=20140210"/>
  <xsl:include href="../../xsl/tmpl/IGRP-field-validator.tmpl.xsl?v=20140210"/>
  <xsl:include href="../../xsl/tmpl/IGRP-others.tmpl.xsl?v=20140210"/>
</xsl:stylesheet>