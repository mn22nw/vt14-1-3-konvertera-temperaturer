<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Temperaturer.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Konvertera Temperaturer</title>
    <link href="~/Content/Style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div id="page">
        <div id="container">
            <h1>Konvertera Temperaturer</h1>
            <form id="form1" runat="server">
            <%-- Felmeddelanden --%>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="validation-summary-errors"
                   HeaderText="Fel inträffade. Korrigera och försök igen." />    
            <!-- Starttemperatur-->
            <div class="editor-label">
                <asp:Label ID="startTempLabel" runat="server" Text="Starttemperatur" 
                    AssociatedControlID="startTemp"></asp:Label>
            </div>
            <div class="editor-field">  
                <asp:TextBox ID="startTemp" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Starttemperatur måste anges" CssClass="error" 
                    ControlToValidate="startTemp" SetFocusOnError="True" Text="*" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="Starttemperatur måste anges i hela grader" CssClass="error" Text="*" ControlToValidate="startTemp" 
                    Operator="DataTypeCheck" Type="Integer" SetFocusOnError="True" Display="Dynamic">
                </asp:CompareValidator>
             </div>
      
             <%-- Sluttemperatur --%>
            <div class="editor-label">
                <asp:Label ID="slutTempLabel" runat="server" Text="Sluttemperatur" 
                    AssociatedControlID="slutTemp"></asp:Label>
            </div>
            <div class="editor-field">  
                <asp:TextBox ID="slutTemp" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Sluttemperatur måste anges" CssClass="error"
                    ControlToValidate="slutTemp" SetFocusOnError="True" Text="*" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ErrorMessage="Sluttemperatur måste anges i hela grader" Text="*" 
                    ControlToValidate="slutTemp" CssClass="error"
                    Operator="DataTypeCheck" Type="Integer" SetFocusOnError="True" Display="Dynamic">
                </asp:CompareValidator>
                <asp:CompareValidator ID="CompareValidator3" runat="server" 
                    ErrorMessage="Sluttemperaturen får inte vara lägre än starttemperaturen" Text="*" 
                    ControlToValidate="slutTemp" CssClass="error" 
                    Operator="GreaterThan" Type="Integer" SetFocusOnError="True" Display="Dynamic" ControlToCompare="startTemp">
                </asp:CompareValidator>
                
             </div>

            <%-- Temperatursteg --%>
            <div class="editor-label">
                <asp:Label ID="Label1" runat="server" Text="Temperatursteg" 
                    AssociatedControlID="tempSteg"></asp:Label>
            </div>
            <div class="editor-field">  
                <asp:TextBox ID="tempSteg" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Sluttemperatur måste anges" CssClass="error" 
                    ControlToValidate="tempSteg" SetFocusOnError="True" Text="*" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator4" runat="server" CssClass="error" 
                    ErrorMessage="Sluttemperatur måste anges i hela grader" Text="*" ControlToValidate="tempSteg" 
                    Operator="DataTypeCheck" Type="Integer" SetFocusOnError="True" Display="Dynamic">
                </asp:CompareValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server"  CssClass="error" 
                    ErrorMessage="Temperatursteget måste ligga mellan 1-100." Text="*" 
                    MaximumValue="100" MinimumValue="1" ControlToValidate="tempSteg"></asp:RangeValidator>
             </div>
            <%-- Radioknappar --%>
                <div class="editor-label">
                <asp:Label ID="Typ" runat="server" Text="Typ av konvertering" ></asp:Label>
                </div>
                
                <asp:RadioButton ID="radio1" runat="server" GroupName="radiob" />
                <asp:RadioButton ID="radio2" runat="server" GroupName="radiob" />

             <%-- Kommandoknapp --%>

            <div>
                <asp:Button ID="Konvertera" runat="server" Text="Konvertera" />
            </div>
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            
            </form>
           
        </div>
         <div id="tabell">


         </div>
    </div>
</body>
</html>
