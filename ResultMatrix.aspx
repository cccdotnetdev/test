<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="ResultMatrix.aspx.cs" Inherits="ResultMatrix" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link rel="stylesheet" href="content/css/tipsy.css" type="text/css" />
    <script language="javascript" type="text/javascript" src="content/scripts/jquery.tipsy.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".testtooltip").each(function myfunction() {
                $(this).tipsy({ gravity: 'n', html: true });
            });

                        var anchs = $("a.testtooltip");
            $.each(anchs, function (ind, value) {
                $(value).click(function () {
                    if ($(this).next().is(":visible")) {
                        $(this).next().hide();
                    } else {
                        $(this).next().show();
                    }
                    return false;
                });
            });
        });
    </script>
    <div class="middel">
        <div class="container">
            <div class="up_curv">
                <ul>
                    <li>Survey</li>
                </ul>
            </div>
            <div class="middle_containar">
                <div class="locations-index-main-first">
                    <div class="">
                        <ul class="navigation">
                            <li>1 : <a href="createsurvey.aspx">Create Survey</a></li>
                            <li>2 : <a href="RecordTypePreview.aspx">Record Types Preview</a></li>
                            <li class="active">3 : Result Matrix</li>
                        </ul>
                        <div style="clear: both;">
                        </div>
                    </div>
                    <div class="box_filter">
                        <table cellpadding="1" cellspacing="1" width="100%">
                            <tr>
                                <td align="left">
                                    <span><strong>Survey / Drug Name :</strong> </span>&nbsp;
                                    <asp:Label ID="lblDrugName" runat="server"></asp:Label>
                                </td>
                                <td align="left">
                                    <strong>Analyst :</strong>&nbsp;
                                    <asp:Label ID="lblAnalyst" runat="server"></asp:Label>
                                </td>
                                <td align="left">
                                    <strong>Status :</strong>&nbsp;
                                    <asp:Label ID="lblStatus" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                         <div id="divMatrix" runat="server" style="overflow-x: scroll; width: 98%; margin: 0 auto;">
                                    </div>
                                    <div style="clear:both;">
                                    </div>
                        <table border="0" cellspacing="0" cellpadding="5" width="100%">                           
                            <tr>
                                <td>
                                    <a href="RecordTypePreview.aspx" title="">Previous</a>
                                </td>
                                <td colspan="5" align="right">
                                    <asp:LinkButton ID="lnkSave" runat="server" OnClick="Save_Click">Confirm & Save</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="down_curv">
            </div>
        </div>
    </div>
</asp:Content>
