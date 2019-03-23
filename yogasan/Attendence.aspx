<%@ Page Title="Attendence" Language="C#" MasterPageFile="~/YogasanMaster.Master" AutoEventWireup="true" CodeBehind="Attendence.aspx.cs" Inherits="yogasan.Attendence" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style>
       div.transbox {
  margin: 30px;
  background-color: #ffffff;
  
  opacity: 0.4;
  filter: alpha(opacity=60); /* For IE8 and earlier */
  font-weight: bold;
  border: 3px solid #f1f1f1;
  
 align-self:center;
  width: 80%;
  padding: 20px;
  
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="transbox">
<form runat="server">
    <asp:Button ID="Button1" runat="server" Text="Button" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Button" />
</form>
    </div>
</asp:Content>
