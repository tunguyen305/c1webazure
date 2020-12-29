<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="GridViewIntro.WebForm1" EnableViewState="true"  %>
<%@ Register Assembly="C1.Web.Wijmo.Controls.45" Namespace="C1.Web.Wijmo.Controls.C1GridView" TagPrefix="wijmo" %>
<%@ Register assembly="C1.Web.Wijmo.Controls.45" namespace="C1.Web.Wijmo.Controls.C1Tabs" tagprefix="wijmo" %>
<%@ Register assembly="C1.Web.Wijmo.Controls.45" namespace="C1.Web.Wijmo.Controls.C1Menu" tagprefix="wijmo" %>


<%@ Register assembly="C1.Web.Wijmo.Controls.45" namespace="C1.Web.Wijmo.Controls.C1ComboBox" tagprefix="wijmo" %>


<%@ Register assembly="C1.Web.Wijmo.Controls.45" namespace="C1.Web.Wijmo.Controls.C1Input" tagprefix="wijmo" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        /*.wijmo-wijgrid-innercell .wijmo-wijcombobox{
            border:1px solid red;
        }
        .wijmo-wijgrid .wijmo-wijgrid-innercell{
            padding: 0;
        }
        .wijgridth .wijmo-wijgrid-innercell {
            height:100%;
            padding:25px 5px;
        }
        .wijmo-wijgrid-headertext {
            transform:rotate(-45deg);
        }*/
        .wijmo-wijgrid .wijmo-wijgrid-headerrow .wijmo-c1basefield{
            padding: 30px 0 !important;
        }
        .ui-datepicker{
            z-index:999!important;
        }
    </style>
    <script>
        function OnGridRender(e,args) {
            console.log(e, args);
        }
    </script>
    <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  });
        function zoomPage() {
            $("#zoom").css("zoom", 1.3);
        }
  </script>
   
</head>

<body>
    <button onclick="zoomPage()">Zoom 1.3</button>
    <form id="form1" runat="server">
        <div id="zoom"> 
            <span>GridView</span>
            <wijmo:C1GridView ID="C1GridView1" runat="server" AutogenerateColumns="True"  Height="437px" Width="100%"
                HeaderStyle-Wrap="true" AllowPaging="true" PageSize="25" AllowColSizing="true"
                AutoGenerateEditButton="True" Culture="en-IN"  FreezingMode="None" RowHeight="19" ScrollMode="Auto"
                StaticColumnIndex="-1" StaticRowIndex="-1" AllowVirtualScrolling="False" >
                <ScrollingSettings Mode="Auto" />
                <PagerSettings Mode="Numeric"  Position="Bottom" />
                
            </wijmo:C1GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:D:\SAMPLES\ASP.NET MVC CORE\CS\MVCEXPLORER\SRC\MVCEXPLORER\WWWROOT\APP_DATA\C1NWIND.MDFConnectionString %>" SelectCommand="SELECT [FirstName], [LastName], [EmployeeID], [BirthDate], [HireDate] FROM [Employees]"></asp:SqlDataSource>
           
&nbsp;</div>
    </form>
</body>
</html>