<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Grid0510.aspx.cs" Inherits="GridViewIntro.Grid0510" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <script type="text/javascript">
        function gridRefresh() {
            //var grid = $("#<%= Gr_Meisai.ClientID %>")

            //var grid = new wijmo.grid.FlexGrid('#Gr_Meisai')

            //grid.scrollPosition = new Point(-200, 0);
            //grid.refresh(false);
            //$("#<%= Gr_Meisai.ClientID %>").c1gridview("setSize");
            $("#<%= Gr_Meisai.ClientID %>").c1gridview("doRefresh");
        }
    </script>

    <div>
        <div>
            <asp:RadioButton ID="Rb_notequal" runat="server" Text="各行の高さが等しくない" Checked="true" GroupName="EqualHeight" />
            <asp:RadioButton ID="Rb_equal" runat="server" Text="各行の高さが等しい" GroupName="EqualHeight" />
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="各行の高さを等しくしない場合: "></asp:Label>
            <asp:RadioButton ID="Rb_Auto" runat="server" Text="各行の高さを設定しない" Checked="true" GroupName="SetHeight" />
            <asp:RadioButton ID="Rb_DataBound" runat="server" Text="DataBoundで各行の高さを設定" GroupName="SetHeight" />
            <asp:RadioButton ID="Rb_RowDataBound" runat="server" Text="RowDataBoundで各行の高さを設定" GroupName="SetHeight" />
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="各行の高さを設定する場合: "></asp:Label>
            <asp:RadioButton ID="Rb_Single" runat="server" Text="1行分の高さ" GroupName="HeightNum" />
            <asp:RadioButton ID="Rb_Double" runat="server" Text="2行分の高さ" GroupName="HeightNum" Checked="true" />
        </div>
        <asp:Button ID="B_Show" runat="server" Text="表示" />
        <asp:Button ID="B_GridClear" runat="server" Text="表のクリア" />
        <input type="button" id="B_doRefresh" Value="表の再描画(doRefresh)" onclick="gridRefresh()" />
    </div>
    <div>
        <div id="Gr_Meisai_div" style="height: 455px; width: 725px; table-layout: fixed; font-size: 1.15em;">
            <wijmo:C1GridView ID="Gr_Meisai" runat="server" Culture="ja-JP" RowHeight="19" ScrollMode="Both" AllowAutoSort="False" AutogenerateColumns="False" Height="100%" 
                FreezingMode="Both" 
                StaticColumnIndex="-1" StaticRowIndex="-1" AllowColSizing="True" ClientIDMode="Static" Width="100%">
                <ScrollingSettings FreezingMode="Both" Mode="Both">
                </ScrollingSettings>
                <Columns>
                    
                    <wijmo:C1TemplateField HeaderText="品目番号" Width="170">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%#: Eval("HINCD") %>' ID="L_HINCD_Grd"></asp:Label>
                        </ItemTemplate>
                    </wijmo:C1TemplateField>
                    <wijmo:C1TemplateField HeaderText="品目名称" Width="280">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# HttpUtility.HtmlEncode(Eval("HINNM")) %>' ID="L_HINNM_Grd"></asp:Label>
                        </ItemTemplate>
                    </wijmo:C1TemplateField>
                    <wijmo:C1TemplateField HeaderText="図面" Width="180">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Eval("ZUMEN") %>' ID="L_ZUMEN_Grd"></asp:Label>
                        </ItemTemplate>
                    </wijmo:C1TemplateField>
                </Columns>
            </wijmo:C1GridView>


        </div>

    </div>
        </div>
    </form>
</body>
</html>
