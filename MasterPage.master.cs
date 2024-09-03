using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ARM;
using Lock_ARM_Asp.Class;

public partial class MasterPage : System.Web.UI.MasterPage
{
    Class1 cls = new Class1();
    Random Rand = new Random();
    object obj = new object();
    private static byte[] KeyAES = new byte[16];
    private static ARM.ARMClass axARMClass1 = new ARMClass();
    void CheckLock()
    {
        uint Rand1;
        byte bteRes = 0;
        object obj = new object();
        byte[] bte1 = new byte[16];
        byte bb = 0;
        byte[] bteRand = new byte[16];

        while (bteRes != 1 && bteRes != 101 && bteRes != 106 && bteRes != 113)
        {
            Rand1 = (uint)Rand.Next(2147483647);
            obj = axARMClass1.Authenticate(Rand1);
            bteRes = cls.CheckAuthenticate(obj, Rand1);
        }
        if (bteRes == 1)
        {
            KeyAES = System.Text.Encoding.Default.GetBytes("");
            bte1 = cls.CreateUserKey("", KeyAES);
            axARMClass1.FindFirstARM(bte1, "", "");
            for (int i = 0; i < 16; i++)
                bteRand[i] = (byte)Rand.Next(255);
            obj = axARMClass1.GetARMErrorCode(bteRand);
            bb = cls.GenerateErrorCode(obj, KeyAES, bteRand);
            //LblText.Text = bb.ToString();
            if (bb == 100)
            {

            }
        }
        else if (bteRes == 113)
        {
            Response.Write("<script language='javascript'> {window.open('close.html', '_self', null);}</script>");
        }
        else if (bteRes == 101)
        {
            Response.Write("<script language='javascript'> {window.open('close.html', '_self', null);}</script>");
        }
        else if (bteRes == 106)
        {
            Response.Write("<script language='javascript'> { window.open('close.html', '_self', null);}</script>");
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        CheckLock();
    }
}
