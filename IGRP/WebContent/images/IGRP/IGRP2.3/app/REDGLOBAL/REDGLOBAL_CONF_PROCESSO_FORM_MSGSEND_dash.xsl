<?xml version="1.0" encoding="utf-8"?><!-- DWXMLSource="xml/REDGLOBAL_CONF_PROCESSO_FORM_MSGSEND_dash.xml" --><xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="ISO-8859-1" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>

<xsl:template match="/">
<xsl:call-template name="home-top-inc"/>

		  <!-- CONF_PROCESSO CONFIGURACAO PROCESSO FORM_MSGSEND REGISTAR/EDITAR EVENT_MSG_SEND -->

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


		  <!--START PAGE--><form action="#" method="post" id="formular_default" name="formular_default" class="default_form"  enctype="multipart/form-data"><!--FORMULARIO --><!--START FORM--><!--TOOL BAR--><xsl:apply-templates mode="tools-bar" select="rows/content/form/tools-bar" /><div class="box-content"><!--HIDDEN FIELDS--><xsl:apply-templates mode="form-hidden" select="rows/content/form/value" /><label><span><xsl:value-of select="rows/content/form/label/processo"/></span><input type="text" name="{rows/content/form/value/processo/@name}" value="{rows/content/form/value/processo}"  disabled="disabled"  class="" maxlength="150" /></label><label><span><xsl:value-of select="rows/content/form/label/etapa"/></span><select name="{rows/content/form/list/etapa/@name}" disabled="disabled"  class=""><xsl:for-each select="rows/content/form/list/etapa/option"><option value="{value}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if><xsl:value-of select="text"/></option></xsl:for-each></select></label><label><span>(*) <xsl:value-of select="rows/content/form/label/acti_tp_to_fk"/></span><select name="{rows/content/form/list/acti_tp_to_fk/@name}" class="required"><xsl:for-each select="rows/content/form/list/acti_tp_to_fk/option"><option value="{value}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if><xsl:value-of select="text"/></option></xsl:for-each></select></label><xsl:call-template name="page-title"><xsl:with-param name="title" select="rows/content/form/label/mensagem" /><xsl:with-param name="class" select="'subtitle'" /></xsl:call-template><label><span>(*) <xsl:value-of select="rows/content/form/label/aplicacao_dest"/></span><select name="{rows/content/form/list/aplicacao_dest/@name}" class="required IGRP_change"><xsl:for-each select="rows/content/form/list/aplicacao_dest/option"><option value="{value}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if><xsl:value-of select="text"/></option></xsl:for-each></select></label><label><span>(*) <xsl:value-of select="rows/content/form/label/processo_dest"/></span><select name="{rows/content/form/list/processo_dest/@name}" class="required IGRP_change"><xsl:for-each select="rows/content/form/list/processo_dest/option"><option value="{value}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if><xsl:value-of select="text"/></option></xsl:for-each></select></label><label><span>(*) <xsl:value-of select="rows/content/form/label/etapa_recep"/></span><select name="{rows/content/form/list/etapa_recep/@name}" class="required"><xsl:for-each select="rows/content/form/list/etapa_recep/option"><option value="{value}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if><xsl:value-of select="text"/></option></xsl:for-each></select></label><label><span>(*) <xsl:value-of select="rows/content/form/label/msg_tipo"/></span><input type="text" name="{rows/content/form/value/msg_tipo/@name}" value="{rows/content/form/value/msg_tipo}"  class="required" maxlength="25" /></label></div><!--END FORM--><!--TOOL BAR--><xsl:apply-templates mode="tools-bar" select="rows/content/table/tools-bar" /><!-- CONTEXT-MENU --><xsl:apply-templates mode="context-menu" select="rows/content/table/context-menu"/><!--INICIO DA TABELA--><div class="table"><table class="sortable"><!--CABECALHO DA TABELA--><thead><tr></tr></thead><!--CORPO DA TABELA--><tbody><xsl:for-each select="rows/content/table/value/row"><xsl:variable name="pos" select="(position()+1) mod 2"/><tr class="IGRP_contextMenu"><xsl:apply-templates mode="context-param" select="context-menu" /></tr></xsl:for-each></tbody></table></div><!--FIM DA TABELA--></form><!--END PAGE-->


	  </div>


		  <!-- END YOUR CODE HERE -->



<xsl:call-template name="home-bottom-inc"/>
</xsl:template>
<!--TEMPLATE FOR HEAD-->
<xsl:include href="../../xsl/tmpl/IGRP-home-include.tmpl.xsl?v=20111207"/>



</xsl:stylesheet>