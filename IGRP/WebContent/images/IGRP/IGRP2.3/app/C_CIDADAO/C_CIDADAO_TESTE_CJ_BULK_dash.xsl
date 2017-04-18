<?xml version="1.0" encoding="utf-8"?><!-- DWXMLSource="xml/C_CIDADAO_TESTE_CJ_BULK_dash.xml" --><xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"><xsl:output method="html" encoding="ISO-8859-1" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/><xsl:template match="/"><xsl:call-template name="home-top-inc"/>

        <!-- TESTE_CJ GESTAO AGREGADOS BULK LISTA -->

        <!-- START YOUR CODE HERE --><!--PAGE TITLE-->
     <div class="box-content">

   <xsl:call-template name="page-title">
          <xsl:with-param name="title" select="rows/content/title" />
        </xsl:call-template>

        <!--NOTIFICATION MESSAGES-->
        <xsl:apply-templates mode="notif_messages" select="rows/content/messages" >
          <xsl:with-param name="class" select="'notification'"/>
        </xsl:apply-templates>


        <!--START PAGE--><form action="#" method="post" id="formular_default" name="formular_default" class="default_filter"><!--FILTRO --><!--START FORM--><div class="box-content"><!--HIDDEN FIELDS--><xsl:apply-templates mode="form-hidden" select="rows/content/filter/value" /><xsl:if test="rows/content/filter/label/nome"><label><span><xsl:value-of select="rows/content/filter/label/nome"/></span><input type="text" name="{rows/content/filter/value/nome/@name}" value="{rows/content/filter/value/nome}"   maxlength="100"  class=""><xsl:call-template name="FIELD_validator"><xsl:with-param name="field" select="rows/content/filter/label/nome" /></xsl:call-template></input></label></xsl:if><xsl:if test="rows/content/filter/label/nif"><label><span><xsl:value-of select="rows/content/filter/label/nif"/></span><input type="number" name="{rows/content/filter/value/nif/@name}" value="{rows/content/filter/value/nif}"   maxlength="22"  class="number"><xsl:call-template name="FIELD_validator"><xsl:with-param name="field" select="rows/content/filter/label/nif" /></xsl:call-template></input></label></xsl:if><xsl:if test="rows/content/filter/label/bi"><label><span><xsl:value-of select="rows/content/filter/label/bi"/></span><input type="number" name="{rows/content/filter/value/bi/@name}" value="{rows/content/filter/value/bi}"   maxlength="22"  class="number"><xsl:call-template name="FIELD_validator"><xsl:with-param name="field" select="rows/content/filter/label/bi" /></xsl:call-template></input></label></xsl:if><!--TOOLBAR FILTER--><xsl:apply-templates mode="button-bar" select="rows/content/filter/tools-bar" /></div><!--END FORM--><!--TOOL BAR--><xsl:apply-templates mode="tools-bar" select="rows/content/table/tools-bar" /><!-- CONTEXT-MENU --><xsl:apply-templates mode="context-menu" select="rows/content/table/context-menu"/><!--INICIO DA TABELA--><div class="table"><table class="sortable IGRP_table"><!--CABECALHO DA TABELA--><thead><tr><xsl:if test="rows/content/table/label/nome"><th align="left"><xsl:value-of select="rows/content/table/label/nome"/></th></xsl:if><xsl:if test="rows/content/table/label/sexo"><th align="left"><xsl:value-of select="rows/content/table/label/sexo"/></th></xsl:if><xsl:if test="rows/content/table/label/bi"><th align="center"><xsl:value-of select="rows/content/table/label/bi"/></th></xsl:if><xsl:if test="rows/content/table/label/nif"><th align="center"><xsl:value-of select="rows/content/table/label/nif"/></th></xsl:if><xsl:if test="rows/content/table/label/data_nasc"><th align="center"><xsl:value-of select="rows/content/table/label/data_nasc"/></th></xsl:if><xsl:if test="rows/content/table/label/email"><th align="center"><xsl:value-of select="rows/content/table/label/email"/></th></xsl:if><xsl:if test="rows/content/table/label/morada"><th align="center"><xsl:value-of select="rows/content/table/label/morada"/></th></xsl:if></tr></thead><!--CORPO DA TABELA--><tbody><xsl:for-each select="rows/content/table/value/row"><xsl:variable name="pos" select="(position()+1) mod 2"/><tr class="IGRP_contextMenu"><xsl:apply-templates mode="context-param" select="context-menu" /><xsl:if test="nome"><td class="table_row{$pos}" align="left"><xsl:value-of select="nome" /></td></xsl:if><xsl:if test="sexo"><td class="table_row{$pos}" align="left"><xsl:value-of select="sexo" /></td></xsl:if><xsl:if test="bi"><td class="table_row{$pos}" align="center"><xsl:value-of select="bi" /></td></xsl:if><xsl:if test="nif"><td class="table_row{$pos}" align="center"><xsl:value-of select="nif" /></td></xsl:if><xsl:if test="data_nasc"><td class="table_row{$pos}" align="center"><xsl:value-of select="data_nasc" /></td></xsl:if><xsl:if test="email"><td class="table_row{$pos}" align="center"><xsl:value-of select="email" /></td></xsl:if><xsl:if test="morada"><td class="table_row{$pos}" align="center"><xsl:value-of select="morada" /></td></xsl:if></tr></xsl:for-each></tbody></table></div><!--FIM DA TABELA--></form><!--END PAGE-->


     </div>


        <!-- END YOUR CODE HERE -->



<xsl:call-template name="home-bottom-inc"/>
</xsl:template>
<!--TEMPLATE FOR HEAD-->
<xsl:include href="../../xsl/tmpl/IGRP-home-include.tmpl.xsl?v=2012121912"/>

<xsl:include href="../../xsl/tmpl/IGRP-field-validator.tmpl.xsl?v=2012121912"/>

</xsl:stylesheet>