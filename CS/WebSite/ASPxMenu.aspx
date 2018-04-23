﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ASPxMenu.aspx.cs" Inherits="ASPxMenu" %>

<%@ Register Assembly="DevExpress.Web.v11.2, Version=11.2.10.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxMenu" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<script type="text/javascript">
    function OnItemClick(s, e) {
        if (confirm("Do you really want to open '" + e.item.GetText() + "' ?"))
            window.open(e.item.name)
    }
</script>
    <form id="form1" runat="server">
    <div>
        <a href="Default.aspx"><< go Back</a>
        <dx:ASPxMenu ID="menuExample" runat="server" ClientInstanceName="menu">
            <ClientSideEvents ItemClick="OnItemClick" />
            <Items>
                <dx:MenuItem Name="http://www.devexpress.com/" Text="DevExpress Home">
                </dx:MenuItem>
                <dx:MenuItem Name="http://search.devexpress.com/" Text="DevExpress Search">
                </dx:MenuItem>
                <dx:MenuItem Name="http://www.devexpress.com/Support/" Text="DevExpress Support">
                </dx:MenuItem>
            </Items>
        </dx:ASPxMenu>
    </div>
    </form>
</body>
</html>
