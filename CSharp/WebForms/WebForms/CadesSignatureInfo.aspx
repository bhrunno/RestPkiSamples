﻿<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadesSignatureInfo.aspx.cs" Inherits="WebForms.CadesSignatureInfo" %>

<%@ PreviousPageType VirtualPath="~/CadesSignature.aspx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

	<h2>CAdES Signature</h2>

	<p>File signed successfully!</p>

	<p>Signer information:</p>
	<ul>
		<li>Subject: <%= signerCertificate.SubjectName.CommonName %></li>
		<li>Email: <%= signerCertificate.EmailAddress %></li>
		<li>ICP-Brasil fields
			<ul>
				<li>Tipo de certificado: <%= signerCertificate.PkiBrazil.CertificateType %></li>
				<li>CPF: <%= signerCertificate.PkiBrazil.Cpf %></li>
				<li>Responsavel: <%= signerCertificate.PkiBrazil.Responsavel %></li>
				<li>Empresa: <%= signerCertificate.PkiBrazil.CompanyName %></li>
				<li>CNPJ: <%= signerCertificate.PkiBrazil.Cnpj %></li>
                <li>RG: <%= signerCertificate.PkiBrazil.RGNumero %> <%= signerCertificate.PkiBrazil.RGEmissor %> <%= signerCertificate.PkiBrazil.RGEmissor %></li>
                <li>OAB: <%= signerCertificate.PkiBrazil.OabNumero %> <%= signerCertificate.PkiBrazil.OabUF %></li>
			</ul>
		</li>
	</ul>

    <h3>Actions:</h3>
    <ul>
        <li><a href='Download?fileId=<%= signatureFilename %>'>Download the signed file</a></li>
        <%--<li><a href='OpenCadesSignature?userfile=<%= signatureFilename %>'>Open/validate the signed file</a></li>--%>
        <li><a href='/CadesSignature?cmsfile=<%= signatureFilename %>'>Co-sign with another certificate</a></li>
    </ul>
</asp:Content>
