using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MSPOSBAN;

public partial class Index : System.Web.UI.Page
{
    MSPOSClass ff = new MSPOSClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(ff.POS_Ver());
        Txt_DeviceNumberEdit1.Text = "1";
        Btn_SearchDevices_Click(sender, e);
        Btn_SelectDevice_Click(sender, e);
        ff.Set_Baud(115200, 115200,        115200);
    }

    protected void Btn_SendCMD_Click(object sender, EventArgs e)
    {
        Txt_SCMD_DataEdit.Text = ff.POS_Dev_INFO();
    }

    protected void Btn_SearchDevices_Click(object sender, EventArgs e)
    {

        ff.POS_Search_Devices();
        Txt_NumberOfDevicesEdit.Text = ff.POS_Select_Device(Convert.ToInt16(Txt_DeviceNumberEdit1.Text));

    }

    protected void Btn_SelectDevice_Click(object sender, EventArgs e)
    {
        Txt_SelectDeviceEdit.Text = ff.POS_Select_Device(Convert.ToInt16(Txt_DeviceNumberEdit1.Text));
    }

    protected void Btn_CompBuy_Click(object sender, EventArgs e)
    {
        short flgWhichRadio = Convert.ToInt16(Cmb_POS.SelectedIndex + 1);
        Lbl_Msg.Text = "لطفا صبر کنيد تا پاسخ از دستگاه دريافت شود";
        Btn_CompBuy.Enabled = false;
        if (ff.POS_Send(flgWhichRadio.ToString(), Txt_CompBuyEdit.Text, Txt_CompFactorEdit.Text,
            Txt_CompMSGEdit.Text, Convert.ToInt16(Cmb_CompPort.SelectedIndex + 1)))
        {
            Btn_Result_Click(sender, e);
        }

        else
        {
            Lbl_Msg.Text="خطا در برقراري ارتباط با دستگاه پوز";
        }

        Btn_CompBuy.Enabled = true;

    }

    protected void Btn_Comp_Click(object sender, EventArgs e)
    {
        short flgWhichRadio = Convert.ToInt16(Cmb_POS.SelectedIndex + 1);
        ff.Cancel_Wait(flgWhichRadio);
    }

    protected void Btn_Result_Click(object sender, EventArgs e)
    {
        short flgWhichRadio = Convert.ToInt16(Cmb_POS.SelectedIndex + 1);
        string Response_Code, Card_Number, Action_Code, RRN, Trace_NO, Terminal_ID, S_N;
        string Res;
        Res = Response_Code = Card_Number = Action_Code = RRN = Trace_NO = Terminal_ID = S_N = "";
        Res = ff.POS_Response(flgWhichRadio, ref Response_Code, ref Card_Number, ref Action_Code, ref RRN, ref Trace_NO, ref Terminal_ID, ref S_N);

        Txt_CompResponseLabeledEdit.Text = Response_Code;
        Txt_CompCardNumberLabeledEdit.Text = Card_Number;
        Txt_CompActionCodeLabeledEdit.Text = Action_Code;
        Txt_CompRRNLabeledEdit.Text = RRN;
        Txt_CompTraceLabeledEdit.Text = Trace_NO;
        Txt_TerminalIDLabeledEdit.Text = Terminal_ID;
        Txt_CompSNLabeledEdit.Text = S_N;
        Lbl_Msg.Text = Res;
       
    }
}