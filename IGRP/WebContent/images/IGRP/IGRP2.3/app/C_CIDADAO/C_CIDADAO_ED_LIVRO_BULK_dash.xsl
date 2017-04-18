<?xml version="1.0" encoding="utf-8"?><!-- DWXMLSource="xml/C_CIDADAO_ED_LIVRO_BULK_dash.xml" --><xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="ISO-8859-1" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>

<xsl:template match="/">
<xsl:call-template name="home-top-inc"/>

		  <!-- ED_LIVRO ED_LIVRO- GESTAO LIVRO BULK LISTA -->

		  <!-- START YOUR CODE HERE -->

			<!--PAGE TITLE-->
	  <div class="box-content">

		  <xsl:call-template name="page-title">
			 <xsl:with-param name="title" select="rows/content/title" />
		  </xsl:call-template>

		  <!--NOTIFICATION MESSAGES-->
		  <xsl:apply-templates mode="notif_messages" select="rows/content/messages" >
			 <xsl:with-param name="class" select="'notification'"/>
		  </xsl:apply-templates>


		  <!--START PAGE--><form action="#" method="post" id="formular_default" name="formular_default" class="default_filter"><!--FILTRO --><!--START FORM--><div class="box-content"><!--HIDDEN FIELDS--><xsl:apply-templates mode="form-hidden" select="rows/content/filter/value" /><label><span><xsl:value-of select="rows/content/filter/label/descricao"/></span><input type="text" name="{rows/content/filter/value/descricao/@name}" value="{rows/content/filter/value/descricao}"  class="" maxlength="500" /></label><label><span><xsl:value-of select="rows/content/filter/label/editora"/></span><input type="text" name="{rows/content/filter/value/editora/@name}" value="{rows/content/filter/value/editora}"  class="" maxlength="30" /></label><label><span><xsl:value-of select="rows/content/filter/label/categoria_id"/></span><select name="{rows/content/filter/list/categoria_id/@name}" class=""><xsl:for-each select="rows/content/filter/list/categoria_id/option"><option value="{value}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if><xsl:value-of select="text"/></option></xsl:for-each></select></label><!--TOOLBAR FILTER--><xsl:apply-templates mode="button-bar" select="rows/content/filter/tools-bar" /></div><!--END FORM--><!--TOOL BAR--><xsl:apply-templates mode="tools-bar" select="rows/content/table/tools-bar" /><!-- CONTEXT-MENU --><xsl:apply-templates mode="context-menu" select="rows/content/table/context-menu"/><xsl:call-template name="filter-az"><xsl:with-param name="name" select="rows/content/filter/value/titulo/@name" /><xsl:with-param name="value" select="rows/content/filter/value/titulo" /></xsl:call-template><!--INICIO DA TABELA--><div class="table"><table class="sortable"><!--CABECALHO DA TABELA--><thead><tr><xsl:if test="rows/content/table/label/titulo"><th align="left"><xsl:value-of select="rows/content/table/label/titulo"/></th></xsl:if><xsl:if test="rows/content/table/label/descricao"><th align="left"><xsl:value-of select="rows/content/table/label/descricao"/></th></xsl:if><xsl:if test="rows/content/table/label/editora"><th align="left"><xsl:value-of select="rows/content/table/label/editora"/></th></xsl:if><xsl:if test="rows/content/table/label/dt_publicacao"><th align="center"><xsl:value-of select="rows/content/table/label/dt_publicacao"/></th></xsl:if><xsl:if test="rows/content/table/label/uti_insercao"><th align="center"><xsl:value-of select="rows/content/table/label/uti_insercao"/></th></xsl:if><xsl:if test="rows/content/table/label/status"><th align="center"><xsl:value-of select="rows/content/table/label/status"/></th></xsl:if></tr></thead><!--CORPO DA TABELA--><tbody><xsl:for-each select="rows/content/table/value/row"><xsl:variable name="pos" select="(position()+1) mod 2"/><tr class="IGRP_contextMenu"><xsl:apply-templates mode="context-param" select="context-menu" /><xsl:if test="titulo"><td class="table_row{$pos}" align="left"><xsl:value-of select="titulo" /></td></xsl:if><xsl:if test="descricao"><td class="table_row{$pos}" align="left"><xsl:value-of select="descricao" /></td></xsl:if><xsl:if test="editora"><td class="table_row{$pos}" align="left"><xsl:value-of select="editora" /></td></xsl:if><xsl:if test="dt_publicacao"><td class="table_row{$pos}" align="center"><xsl:value-of select="dt_publicacao" /></td></xsl:if><xsl:if test="uti_insercao"><td class="table_row{$pos}" align="center"><xsl:value-of select="uti_insercao" /></td></xsl:if><xsl:if test="status"><td class="table_row{$pos}" align="center"><xsl:value-of select="status" /></td></xsl:if></tr></xsl:for-each></tbody></table></div><!--FIM DA TABELA--></form><!--END PAGE-->


	  </div>


		  <!-- END YOUR CODE HERE -->



<xsl:call-template name="home-bottom-inc"/>
</xsl:template>
<!--TEMPLATE FOR HEAD-->
<xsl:include href="../../xsl/tmpl/IGRP-home-include.tmpl.xsl?v=24"/>



</xsl:stylesheet>