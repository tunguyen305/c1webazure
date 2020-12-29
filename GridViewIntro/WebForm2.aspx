<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="GridViewIntro.WebForm2" %>

<%@ Register assembly="C1.Web.Wijmo.Controls.45" namespace="C1.Web.Wijmo.Controls.C1GridView" tagprefix="wijmo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

           <table id="Table8" cellspacing="1" cellpadding="1" width="100%" border="0" style="z-index: 108; left: 8px; position: absolute; top: 115px; height: 10px;">
  <tr> 
    <td align="center"> 
      <font face="MS UI Gothic"> 
        <table class="tablemain" cellspacing="0" cellpadding="0" border="0"> 
          <tbody> 
            <tr> 
              <td align="center"> 
                <table cellspacing="0" cellpadding="0" border="0" style="border: #ffffff 1px solid; border-bottom-width: 0px; width: 896px; background: #d3d3d3; font-weight: normal; padding: 4px;">
                
                  <tbody> 
                    <tr> 
                      <td style="font-size: 8pt; font-family: Verdana; font-weight: normal; line-height: 15px"><span>FieldA⇒ </span>
                        <input type="button" id="btnAddRow" class="btnaddrow" value="Add Row" runat="server" onserverclick="btnAddRow_ServerClick" />
                        <input type="button" id="btnDeleteRow" class="btndeleterow" value="Delete Row" runat="server" onserverclick="btnDeleteRow_ServerClick" />

                        
                  
                        
                    </tr> 
                  </tbody> 
                </table> 
            </tr> 
            <tr> 
              <td> 
                <wijmo:C1GridView ID="UltraWebGrid1" TabIndex="-1" runat="server" Height="144px" Width="893px" DataKeyNames="FieldB" AllowClientEditing="true" 
                    OnRowUpdating="UltraWebGrid1_RowUpdating" AutogenerateColumns="false" ScrollingSettings-Mode="Auto" ShowClientSelectionOnRender="false"> 
                  <CallbackSettings Action="Editing" Mode="Full" /> 
                  <Columns> 
                    <wijmo:C1TemplateField> 
                      <ItemStyle CssClass="selectcell" /> 
                    </wijmo:C1TemplateField> 
                    <wijmo:C1TemplateField HeaderText="FieldB"> 
                      <ItemTemplate> 
                        <asp:DropDownList ID="dropDown1" runat="server" TabIndex="-1" AppendDataBoundItems="true" CssClass="gridDropDown dropdownAlign"> 
                        </asp:DropDownList> 
                      </ItemTemplate> 
                    </wijmo:C1TemplateField> 
                    
                    <wijmo:C1TemplateField HeaderText="FieldC"> 
                      <ItemStyle CssClass="gridTextBox" /> 
                      <ItemTemplate> 
                        <asp:TextBox ID="txtFieldC" TabIndex="-1" runat="server" Text='<%# Eval("FieldC") %>' CssClass="gridTextBox txtBoxAlign"></asp:TextBox> 
                      </ItemTemplate> 
                    </wijmo:C1TemplateField> 
                  </Columns> 
                </wijmo:C1GridView>
                
              </td> 
            </tr> 
            <tr> 
              <td style="overflow: hidden; width: 100%" align="center"> 
                <div style="overflow: hidden; height: 20px; width: 100%"> 
                  <table class="footer" style="height: 100%; table-layout: fixed; width: 1195px; position: relative; left: 0px" cellspacing="0" cellpadding="0" border="0"> 
                    <tfoot> 
                      <tr class="wijmo-wijgrid-footerrow"> 
                        <td class="footercell" style="width: 18px"> 
                          <img style="visibility: hidden;height:18px" border="0" imgtype="blank"></td> 
                        <td id="UltraWebGrid1f_0_1" style="line-height:18px;font-size: 8pt; border-top: #ffffff 1px solid; font-family: Verdana; border-right: #808080 1px solid; width: 85px; border-bottom: #808080 1px solid; font-weight: normal; text-align: left; padding-left: 3px; border-left: #ffffff 1px solid; background-color: #cfe2fa">
                          <nobr>FieldD</nobr>
                        </td>
                        <td id="UltraWebGrid1f_0_2" class="footercell" runat="server" style="width: 130px"> </td>
                      </tr>
                    </tfoot> 
                    <tbody></tbody> 
                  </table> 
                </div> 
              </td> 
            </tr> 
          </tbody> 
        </table> 
      </font> 
    </td> 
  </tr> 
</table>  

        </div>
    </form>
</body>
</html>
