﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SiteTemplate4.master" AutoEventWireup="true" CodeFile="EditMedicine.aspx.cs" Inherits="Medicine_Inventory_EditMedicine" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2 style="background-color: #d3e7c5">
        Edit Medicine Page
    </h2>
    <p>
        <br />
    </p>
    
    <p>
        <a href="#modalwindow" name="modal" style="color: #990033; font-weight: bold;">
        Show List Of Medicines</a>
        <br />
    </p>
   
        <table style="width: 393px">
            <tr>
                <td style="width: 117px">
        <asp:Label ID="Label3" runat="server" 
            Text="Medicine ID " AssociatedControlID="txtMedicineId" Font-Size="Small"></asp:Label>
                </td>
                <td colspan="2">
        <asp:TextBox ID="txtMedicineId" runat="server" onkeydown="return isNumeric(event.keyCode);" onkeyup="keyUP(event.keyCode)" 
                        onpaste="return false;" Width="150px" ReadOnly="True" Height="23px"
            ></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td style="width: 117px">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 117px">
        <asp:Label ID="Label4" runat="server"
            Text="Medicine Name" AssociatedControlID="txtMedicineName" Font-Size="Small"></asp:Label>
                </td>
                <td colspan="2">
        <asp:TextBox ID="txtMedicineName" runat="server" Width="150px" ReadOnly="True" 
                        Height="23px"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td style="width: 117px">
        <asp:Label ID="Label5" runat="server"
            Text="Category" AssociatedControlID="ddlCategory" Font-Size="Small"></asp:Label>
                </td>
                <td colspan="2">
        <asp:DropDownList ID="ddlCategory" runat="server" DataSourceID="Category" 
            DataTextField="CategoryName" DataValueField="CategoryName" Height="23px" Width="150px" 
                        Enabled="False">
        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 150px">
        <asp:Label ID="Label6" runat="server" 
            Text="Quantity" AssociatedControlID="txtQuantity" Font-Size="Small"></asp:Label>
                </td>
                <td colspan="2">
        <asp:TextBox ID="txtQuantity" runat="server" onkeydown="return isNumeric(event.keyCode);" onkeyup="keyUP(event.keyCode)" 
                        onpaste="return false;" Width="150px" ReadOnly="True" Height="23px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 117px">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td style="width: 117px">
        <asp:SqlDataSource ID="Category" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CategoryConnectionString %>" 
            SelectCommand="SELECT DISTINCT [CategoryName] FROM [Category] ORDER BY [CategoryName]">
        </asp:SqlDataSource>
                    </td>
                <td><center>
        <asp:Button ID="btnSave" runat="server" 
            Text="Save" onclick="btnSave_Click" Width="72px" /></center>
                    </td>
                <td>
                <center>
        <asp:Button ID="btnClear" runat="server" 
            Text="Clear" onclick="btnClear_Click" Width="64px" /></center>
                </td>
               
               
            </tr>
        </table>
    
   
   
   
   
   
   
   
   
    <p>
        &nbsp;</p>
    <p>
        <%--number validations--%>
    </p>
    <p>
        &nbsp;</p>
    
    <div id="boxes">
           <!-- div for Search Medicine-->
            <div id="modalwindow" class="window">
            <br />
   
    <table style="width: 46%;" border="1">
            <tr>
                <td class="stylecenter" style="width: 385px">
                <center>List of Medicines</center></td>
            </tr>
            <tr>
                <td style="width: 385px">
                    <asp:Panel ID="pnlMedicine" ScrollBars="Auto" runat="server" Height="286px">
                <asp:GridView ID="gridViewMedicine" runat="server" AutoGenerateColumns="False" 
                                AutoGenerateSelectButton="True" BackColor="White" BorderColor="#336666" 
                                BorderStyle="Double" BorderWidth="3px" CellPadding="2" 
                                DataKeyNames="MedicineId" DataSourceID="MedicineDataSource" 
                                GridLines="Horizontal" Height="124px" HorizontalAlign="Center" 
                                onselectedindexchanged="gridViewMedicine_SelectedIndexChanged" 
                        Width="436px" CellSpacing="1">
                                <Columns>
                                    <asp:BoundField DataField="MedicineId"  ItemStyle-HorizontalAlign="Center" HeaderText="Medicine Id" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="MedicineId" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="MedicineName" ItemStyle-HorizontalAlign="Center" HeaderText="Medicine Name" 
                                        SortExpression="MedicineName" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Quantity" ItemStyle-HorizontalAlign="Center" HeaderText="Quantity" 
                                        SortExpression="Quantity" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundField>
                                </Columns>
                                <EmptyDataTemplate>No Data to show.</EmptyDataTemplate>
                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                <HeaderStyle BackColor="#009933" Font-Bold="True" HorizontalAlign="Center" 
                                    ForeColor="White" />
                                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="#003300" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                <SortedAscendingHeaderStyle BackColor="#487575" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#275353" />
                            </asp:GridView>
                             </asp:Panel> 
                            <asp:SqlDataSource ID="MedicineDataSource" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:paombongdbConnectionString %>" 
                                SelectCommand="SELECT DISTINCT [MedicineId],[MedicineName],[Quantity] FROM [Medicine] ORDER BY [MedicineName]">
                            </asp:SqlDataSource>
                </td>
            </tr>
            </table>

            </div>
            
            
            <!-- Mask to cover the whole screen -->
            <div id="mask"></div>
    </div>


    
</asp:Content>

