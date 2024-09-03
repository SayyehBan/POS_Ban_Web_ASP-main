<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row" dir="rtl">

        <div class="row" id="panelPrecios">
            <li class="col-md-12 col-xs-12">
                <p class="orange">اطلاعات دستگاه</p>
            </li>
            <!-------------------------------------------------------------------------->
            <div class="col-md-2 col-xs-4">
                <asp:Label ID="Lbl_Noskhe_Dastgha" runat="server" AssociatedControlID="Txt_SCMD_DataEdit">نسخه ی دستگاه:</asp:Label>
                <asp:TextBox runat="server" ID="Txt_SCMD_DataEdit" placeholder="نسخه دستگاه" MaxLength="200" CssClass=" form-control" AutoPostBack="True" />
                <asp:Button runat="server" ID="Btn_SendCMD" Text="نمایش نسخه" OnClick="Btn_SendCMD_Click" />
            </div>
            <!-------------------------------------------------------------------------->
            <div class="col-md-2 col-xs-4">
                <asp:Label ID="Lbl_Tedad_Dastga_Motsel" runat="server" AssociatedControlID="Txt_NumberOfDevicesEdit">تعداد دستگاه های متصل </asp:Label>
                <asp:TextBox runat="server" ID="Txt_NumberOfDevicesEdit" MaxLength="200" placeholder="تعداد دستگاه های متصل " CssClass=" form-control" />
                <asp:Button runat="server" ID="Btn_SearchDevices" Text="نمایش نسخه" OnClick="Btn_SearchDevices_Click" />
            </div>
            <!-------------------------------------------------------------------------->
            <div class="col-md-2 col-xs-4">
                <asp:Label ID="Lbl_Select" runat="server" AssociatedControlID="Txt_DeviceNumberEdit1">انتخاب دستگاه</asp:Label>
                <asp:TextBox runat="server" ID="Txt_DeviceNumberEdit1" MaxLength="200" placeholder="انتخاب دستگاه" CssClass=" form-control" />
                <asp:Label ID="Lbl_Select_Divce" runat="server" AssociatedControlID="Txt_SelectDeviceEdit">دستگاه انتخاب شده</asp:Label>
                <asp:TextBox runat="server" ID="Txt_SelectDeviceEdit" MaxLength="200" placeholder="دستگاه انتخاب شده" CssClass=" form-control" />
                <asp:Button runat="server" ID="Btn_SelectDevice" Text="نانتخاب دستگاه" OnClick="Btn_SelectDevice_Click" />
            </div>
        </div>
        <!-------------------------------------------------------------------------->
        <div class="row" id="panelPrecios">
            <li class="col-md-12 col-xs-12">
                <p class="orange">رسید مشتری</p>
            </li>
            <!-------------------------------------------------------------------------->
            <div class="col-md-2 col-xs-4">
                <asp:Label ID="Label1" runat="server" AssociatedControlID="Txt_CompTraceLabeledEdit">شماره پیگیری:</asp:Label>
                <asp:TextBox runat="server" ID="Txt_CompTraceLabeledEdit" placeholder="شماره پیگیری" MaxLength="200" CssClass=" form-control" AutoPostBack="True" />
            </div>
            <!-------------------------------------------------------------------------->
            <div class="col-md-2 col-xs-4">
                <asp:Label ID="Label2" runat="server" AssociatedControlID="Txt_CompRRNLabeledEdit">کد مرجع: </asp:Label>
                <asp:TextBox runat="server" ID="Txt_CompRRNLabeledEdit" MaxLength="200" placeholder="کد مرجع" CssClass=" form-control" />
            </div>
            <!-------------------------------------------------------------------------->
            <div class="col-md-2 col-xs-4">
                <asp:Label ID="Label3" runat="server" AssociatedControlID="Txt_CompResponseLabeledEdit">کد پاسخ:</asp:Label>
                <asp:TextBox runat="server" ID="Txt_CompResponseLabeledEdit" MaxLength="200" placeholder="کد پاسخ" CssClass=" form-control" />
            </div>
            <!-------------------------------------------------------------------------->
            <div class="col-md-2 col-xs-4">
                <asp:Label ID="Label4" runat="server" AssociatedControlID="Txt_CompActionCodeLabeledEdit">کد تراکنش:</asp:Label>
                <asp:TextBox runat="server" ID="Txt_CompActionCodeLabeledEdit" MaxLength="200" placeholder="کد تراکنش" CssClass=" form-control" />
            </div>
            <!-------------------------------------------------------------------------->
            <div class="col-md-2 col-xs-4">
                <asp:Label ID="Label5" runat="server" AssociatedControlID="Txt_CompSNLabeledEdit">شماره سریال:</asp:Label>
                <asp:TextBox runat="server" ID="Txt_CompSNLabeledEdit" MaxLength="200" placeholder="شماره سریال" CssClass=" form-control" />
            </div>
            <!-------------------------------------------------------------------------->
            <div class="col-md-2 col-xs-4">
                <asp:Label ID="Label6" runat="server" AssociatedControlID="Txt_CompCardNumberLabeledEdit">شماره کارت:</asp:Label>
                <asp:TextBox runat="server" ID="Txt_CompCardNumberLabeledEdit" MaxLength="200" placeholder="شماره کارت" CssClass=" form-control" />
            </div>
            <!-------------------------------------------------------------------------->
            <div class="col-md-2 col-xs-4">
                <asp:Label ID="Label7" runat="server" AssociatedControlID="Txt_TerminalIDLabeledEdit">شناسه ترمینال:</asp:Label>
                <asp:TextBox runat="server" ID="Txt_TerminalIDLabeledEdit" MaxLength="200" placeholder="شناسه ترمینال" CssClass=" form-control" />
            </div>
        </div>
        <!-------------------------------------------------------------------------->
        <div class="row" id="panelPrecios">
            <li class="col-md-12 col-xs-12">
                <p class="orange">خرید</p>
            </li>
            <!-------------------------------------------------------------------------->
            <div class="col-md-2 col-xs-4">
                <asp:Label ID="Label8" runat="server" AssociatedControlID="Cmb_POS">شرکت دستگاه کارت خوان:</asp:Label>
                <asp:DropDownList runat="server" ID="Cmb_POS">
                    <asp:ListItem>سایان کارت</asp:ListItem>
                    <asp:ListItem>پرداخت نوین آرین</asp:ListItem>
                    <asp:ListItem>سامان کیش</asp:ListItem>
                    <asp:ListItem>پارسیان</asp:ListItem>
                    <asp:ListItem>فن آوا</asp:ListItem>
                    <asp:ListItem>پاسارگاد</asp:ListItem>
                    <asp:ListItem>به پرداخت ملت</asp:ListItem>
                    <asp:ListItem>ایران کیش</asp:ListItem>
                    <asp:ListItem>آسان پرداخت</asp:ListItem>
                    <asp:ListItem>داده ورزی سداد</asp:ListItem>
                    <asp:ListItem>مبنا آریا</asp:ListItem>
                </asp:DropDownList>
            </div>
            <!-------------------------------------------------------------------------->
            <div class="col-md-2 col-xs-4">
                <asp:Label ID="Label9" runat="server" AssociatedControlID="Cmb_CompPort">پورت: </asp:Label>
                <asp:DropDownList runat="server" ID="Cmb_CompPort">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
            </div>
            <!-------------------------------------------------------------------------->
            <div class="col-md-2 col-xs-4">
                <asp:Label ID="Label10" runat="server" AssociatedControlID="Txt_CompBuyEdit">مبلغ خرید:</asp:Label>
                <asp:TextBox runat="server" ID="Txt_CompBuyEdit" MaxLength="200" placeholder="مبلغ خرید" CssClass=" form-control" />
            </div>
            <!-------------------------------------------------------------------------->
            <div class="col-md-2 col-xs-4">
                <asp:Label ID="Label11" runat="server" AssociatedControlID="Txt_CompFactorEdit">شماره فاکتور یا شماره خرید:</asp:Label>
                <asp:TextBox runat="server" ID="Txt_CompFactorEdit" MaxLength="200" placeholder="شماره فاکتور یا شماره خرید" CssClass=" form-control" />
            </div>
            <!-------------------------------------------------------------------------->
            <div class="col-md-2 col-xs-4">
                <asp:Label ID="Label12" runat="server" AssociatedControlID="Txt_CompMSGEdit">پیغام:</asp:Label>
                <asp:TextBox runat="server" ID="Txt_CompMSGEdit" MaxLength="200" placeholder="پیغام" CssClass=" form-control" />
            </div>
            <!-------------------------------------------------------------------------->
            <div class="col-md-2 col-xs-4">    
                 <asp:Button runat="server" ID="Btn_CompBuy" Text="خرید" OnClick="Btn_CompBuy_Click"/>
                 <asp:Button runat="server" ID="Btn_Result" Text="نتیجه تراکنش" OnClick="Btn_Result_Click"/>
                 <asp:Button runat="server" ID="Btn_Comp" Text="لغو انتظار" OnClick="Btn_Comp_Click"/>   
                <br/>
                <asp:Label runat="server" ID="Lbl_Msg"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>

