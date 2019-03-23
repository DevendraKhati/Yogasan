<%@ Page Title="" Language="C#" MasterPageFile="~/YogasanMaster.Master" AutoEventWireup="true" CodeBehind="Timetable.aspx.cs" Inherits="yogasan.Timetable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:gridview runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="Unnamed1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            <asp:BoundField DataField="Monday" HeaderText="Monday" SortExpression="Monday" />
            <asp:BoundField DataField="Tuesday" HeaderText="Tuesday" SortExpression="Tuesday" />
            <asp:BoundField DataField="Wednesday" HeaderText="Wednesday" SortExpression="Wednesday" />
            <asp:BoundField DataField="Thursday" HeaderText="Thursday" SortExpression="Thursday" />
            <asp:BoundField DataField="Friday" HeaderText="Friday" SortExpression="Friday" />
            <asp:BoundField DataField="Saturday" HeaderText="Saturday" SortExpression="Saturday" />
            <asp:BoundField DataField="Sunday" HeaderText="Sunday" SortExpression="Sunday" />
        </Columns>
    </asp:gridview>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:yogasanConnectionString %>" SelectCommand="SELECT * FROM [timetable]"></asp:SqlDataSource>
</form>
</asp:Content>
