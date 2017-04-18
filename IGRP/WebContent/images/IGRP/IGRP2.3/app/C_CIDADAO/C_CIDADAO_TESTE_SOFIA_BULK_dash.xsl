<?xml version="1.0" encoding="utf-8"?><!-- DWXMLSource="xml/C_CIDADAO_TESTE_SOFIA_BULK_dash.xml" --><xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="ISO-8859-1" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>

<xsl:template match="/">
<xsl:call-template name="home-top-inc"/>

		  <!-- TESTE_SOFIA MODULO EXEMPLO 1 FRANCISCO BULK LISTA -->

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


		  <!--START PAGE--><!--TAB MENU --><xsl:apply-templates mode="tab-menu" select="rows/content/menu" /><form action="#" method="post" id="formular_default" name="formular_default" class="default_filter"><!--FILTRO --><!--START FORM--><div class="box-content"><!--HIDDEN FIELDS--><xsl:apply-templates mode="form-hidden" select="rows/content/filter/value" /><xsl:if test="rows/content/filter/label/nome"><label><span><xsl:value-of select="rows/content/filter/label/nome"/></span><input type="text" name="{rows/content/filter/value/nome/@name}" value="{rows/content/filter/value/nome}"  class="" maxlength="100" /><xsl:call-template name="lookup-tool"><xsl:with-param name="page" select="'LOOKUP'" /><xsl:with-param name="action" select="'LOOKUP_NASC'" /><xsl:with-param name="name" select="rows/content/filter/value/nome/@name" /><xsl:with-param name="js_lookup" select="rows/content/filter/lookup/nome" /></xsl:call-template></label></xsl:if><xsl:if test="rows/content/filter/label/nr_bi"><label><span><xsl:value-of select="rows/content/filter/label/nr_bi"/></span><input type="text" name="{rows/content/filter/value/nr_bi/@name}" value="{rows/content/filter/value/nr_bi}"  class="" maxlength="22" /><xsl:call-template name="lookup-tool"><xsl:with-param name="page" select="'LOOKUP'" /><xsl:with-param name="action" select="'LOOKUP_BI'" /><xsl:with-param name="name" select="rows/content/filter/value/nr_bi/@name" /><xsl:with-param name="js_lookup" select="rows/content/filter/lookup/nr_bi" /></xsl:call-template></label></xsl:if><xsl:if test="rows/content/filter/label/nr_nif"><label><span><xsl:value-of select="rows/content/filter/label/nr_nif"/></span><input type="text" name="{rows/content/filter/value/nr_nif/@name}" value="{rows/content/filter/value/nr_nif}"  class="" maxlength="22" /><xsl:call-template name="lookup-tool"><xsl:with-param name="page" select="'LOOKUP'" /><xsl:with-param name="action" select="'LOOKUP_NIF'" /><xsl:with-param name="name" select="rows/content/filter/value/nr_nif/@name" /><xsl:with-param name="js_lookup" select="rows/content/filter/lookup/nr_nif" /></xsl:call-template></label></xsl:if><xsl:if test="rows/content/filter/label/data_nasc"><label><span><xsl:value-of select="rows/content/filter/label/data_nasc"/></span><input type="date" name="{rows/content/filter/value/data_nasc/@name}" value="{rows/content/filter/value/data_nasc}" class="IGRP_datepicker date" /></label></xsl:if><xsl:if test="rows/content/filter/label/email"><label><span><xsl:value-of select="rows/content/filter/label/email"/></span><input type="email" name="{rows/content/filter/value/email/@name}" value="{rows/content/filter/value/email}"  class="email" maxlength="50" /></label></xsl:if><xsl:if test="rows/content/filter/label/morada"><label><span><xsl:value-of select="rows/content/filter/label/morada"/></span><input type="text" name="{rows/content/filter/value/morada/@name}" value="{rows/content/filter/value/morada}"  class="" maxlength="100" /><xsl:call-template name="lookup-tool"><xsl:with-param name="page" select="'LOOKUP'" /><xsl:with-param name="action" select="'LOOKUP_GEOG'" /><xsl:with-param name="name" select="rows/content/filter/value/morada/@name" /><xsl:with-param name="js_lookup" select="rows/content/filter/lookup/morada" /></xsl:call-template></label></xsl:if><!--TOOLBAR FILTER--><xsl:apply-templates mode="button-bar" select="rows/content/filter/tools-bar" /></div><!--END FORM--><!--TOOL BAR--><xsl:apply-templates mode="tools-bar" select="rows/content/table/tools-bar" /><!-- CONTEXT-MENU --><xsl:apply-templates mode="context-menu" select="rows/content/table/context-menu"/><!--INICIO DA TABELA--><div class="table"><table class="sortable IGRP_table"><!--CABECALHO DA TABELA--><thead><tr><xsl:if test="rows/content/table/label/nome"><th align="left"><xsl:value-of select="rows/content/table/label/nome"/></th></xsl:if><xsl:if test="rows/content/table/label/nome_mae"><th align="left"><xsl:value-of select="rows/content/table/label/nome_mae"/></th></xsl:if><xsl:if test="rows/content/table/label/nome_pai"><th align="left"><xsl:value-of select="rows/content/table/label/nome_pai"/></th></xsl:if><xsl:if test="rows/content/table/label/sexo"><th align="left"><xsl:value-of select="rows/content/table/label/sexo"/></th></xsl:if><xsl:if test="rows/content/table/label/nr_bi"><th align="center"><xsl:value-of select="rows/content/table/label/nr_bi"/></th></xsl:if><xsl:if test="rows/content/table/label/nr_nif"><th align="center"><xsl:value-of select="rows/content/table/label/nr_nif"/></th></xsl:if><xsl:if test="rows/content/table/label/data_nasc"><th align="center"><xsl:value-of select="rows/content/table/label/data_nasc"/></th></xsl:if><xsl:if test="rows/content/table/label/email"><th align="left"><xsl:value-of select="rows/content/table/label/email"/></th></xsl:if><xsl:if test="rows/content/table/label/morada"><th align="left"><xsl:value-of select="rows/content/table/label/morada"/></th></xsl:if><xsl:if test="rows/content/table/label/id"><th class="checkbox sorttable_nosort" align="center"><input type="checkbox" name="p_id_all" value="{value}" class="IGRP_checkall" /></th></xsl:if></tr></thead><!--CORPO DA TABELA--><tbody><xsl:for-each select="rows/content/table/value/row"><xsl:variable name="pos" select="(position()+1) mod 2"/><tr class="IGRP_contextMenu"><xsl:apply-templates mode="context-param" select="context-menu" /><xsl:if test="nome"><td class="table_row{$pos}" align="left"><xsl:value-of select="nome" /></td></xsl:if><xsl:if test="nome_mae"><td class="table_row{$pos}" align="left"><xsl:value-of select="nome_mae" /></td></xsl:if><xsl:if test="nome_pai"><td class="table_row{$pos}" align="left"><xsl:value-of select="nome_pai" /></td></xsl:if><xsl:if test="sexo"><td class="table_row{$pos}" align="left"><xsl:value-of select="sexo" /></td></xsl:if><xsl:if test="nr_bi"><td class="table_row{$pos}" align="center"><xsl:value-of select="nr_bi" /></td></xsl:if><xsl:if test="nr_nif"><td class="table_row{$pos}" align="center"><xsl:value-of select="nr_nif" /></td></xsl:if><xsl:if test="data_nasc"><td class="table_row{$pos}" align="center"><xsl:value-of select="data_nasc" /></td></xsl:if><xsl:if test="email"><td class="table_row{$pos}" align="left"><xsl:value-of select="email" /></td></xsl:if><xsl:if test="morada"><td class="table_row{$pos}" align="left"><xsl:value-of select="morada" /></td></xsl:if><xsl:if test="id"><td class="table_row{$pos} checkbox" align="center"><input type="checkbox" name="p_id" value="{id}"><xsl:if test="id_check=id"><xsl:attribute name="checked">checked</xsl:attribute></xsl:if></input><xsl:value-of select="id_desc" /></td></xsl:if></tr></xsl:for-each></tbody></table></div><!--FIM DA TABELA--></form><!--END PAGE-->


	  </div>


		  <!-- END YOUR CODE HERE -->



<xsl:call-template name="home-bottom-inc"/>
</xsl:template>
<!--TEMPLATE FOR HEAD-->
<xsl:include href="../../xsl/tmpl/IGRP-home-include.tmpl.xsl?v=20120419"/>



</xsl:stylesheet>