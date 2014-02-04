<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Temperaturer.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Konvertera Temperaturer</title>
    <link href="~/Content/Style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h1>Konvertera Temperaturer</h1>
    <form id="form1" runat="server">
     
    <!-- Starttemperatur-->
    <div class="editor-label">
        <asp:Label ID="startTempLabel" runat="server" Text="Starttemperatur" 
            AssociatedControlID="startTemp"></asp:Label>
    </div>
    <div class="editor-field">  
        <asp:TextBox ID="startTemp" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Starttemperatur måste anges" 
            ControlToValidate="startTemp" SetFocusOnError="True" Text="*" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ErrorMessage="Starttemperatur måste anges i hela grader" ControlToValidate="startTemp" 
            Operator="DataTypeCheck" Type="Integer" SetFocusOnError="True" Display="Dynamic">
        </asp:CompareValidator>
     </div>

     <!-- Sluttemperatur-->
    <div class="editor-label">
        <asp:Label ID="slutTempLabel" runat="server" Text="Sluttemperatur" 
            AssociatedControlID="slutTemp"></asp:Label>
    </div>
    <div class="editor-field">  
        <asp:TextBox ID="slutTemp" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Sluttemperatur måste anges" 
            ControlToValidate="slutTemp" SetFocusOnError="True" Text="*" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator2" runat="server" 
            ErrorMessage="Sluttemperatur måste anges i hela grader" ControlToValidate="slutTemp" 
            Operator="DataTypeCheck" Type="Integer" SetFocusOnError="True" Display="Dynamic">
        </asp:CompareValidator>
     </div>
    </form>
</body>
</html>
