<%@ Page Title="New User" Language="C#" MasterPageFile="~/YogasanMaster.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="yogasan.Index" %>
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
    
<form  runat="server" class="col-sm-9">
  <div class="transbox">
 <div class="form-group">
    <label>Full Name:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="                    Name is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
     </label>&nbsp;<input type="text" class="form-control" id="name" name="name" runat="server" placeholder="Enter name">
  </div>
        <div class="form-group">
    <label>Mobile Number:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="mobile" ErrorMessage="Mobile Number is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="mobile" ErrorMessage="Invalid Mobile Number" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" ForeColor="#0000CC"></asp:RegularExpressionValidator>
            </label>
&nbsp;<input type="text" class="form-control" id="mobile" name="mobile" runat="server" placeholder="Mobile number">
  </div>
      
      <div class="form-group">
    <label>Email:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" ErrorMessage="Email Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="email" ErrorMessage="Invalid Email" ForeColor="#0000CC" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;<input type="text" class="form-control" id="email" name="email" runat="server" placeholder="Enter email">
  </div>
                
 <div class="form-group">
    <label>Address:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="address" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<input type="text" class="form-control" id="address" name="address" runat="server" placeholder="Enter address">
  </div>
        <div class="form-group">
    <label>Occupation:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="occupation" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<input type="text" class="form-control" id="occupation" name="occupation" runat="server" placeholder="Occupation">

  &nbsp;</div>          
       
    <div class="form-group">
    <label>Time Slot:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="time" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<input type="text" class="form-control" id="time" name="time" runat="server" placeholder="Enter time">
  </div>
        <div class="form-group">
    <label>Membership Charge:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="fee" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<input type="text" class="form-control" id="fee" name="fee" runat="server" placeholder="Membership Fees">
  </div>          
    <div class="form-group">
    <label>Fee Paid:<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="paid" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
        </label>
    &nbsp;<input type="text" class="form-control" id="paid" name="paid" runat="server" placeholder="Fees Paid">
  </div>
  
 <%--  Button for Submit --%>
  <br />
      
        <asp:Button ID="Button1" runat="server" Text="Add User" class="btn btn-default btn-primary" OnClick="Button1_Click" />
    </div>
</form>
    </asp:Content>
