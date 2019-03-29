<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="/css/signupnew.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <div class="bg_border">
            <img src="images/bg_borderpage.png">
        </div>
        <h2 style="text-align: center;">Sign Up:</h2>

        <div class="wrapperdeal">
            <div id="box_signup" style="margin-top: 30px;">
                <div id="back_signupdeal">
                    <div id="bg_banner">
                        <div id="banner_signup"></div>
                        <div id="title_signup"></div>
                    </div>

                    <div id="box_restrictions">
                        Restrictions: <span id="restrictions"></span>
                    </div>
                    <div class="row_title_top">One time use only. Must show valid ID with your name at front desk.</div>
                    <div id="box_serial" style="display: none;">
                        Serial Number: XXXXXX
                    </div>
                </div>

                <div id="row_title" class="row_title_top" style="display: block;">Sign Up to receive future promotions &amp; birthday gifts to your inbox.</div>

                <div class="signdeal">

                    <!--Sign In form Begin-->
                    <div id="formsigndeal">
                        <div class="formrowdeal">
                            <div class="formrowtopdeal">First Name <span style="color: Red;">*</span>:</div>
                            <div class="formrowtextdeal">
                                <input class="txtboxsigndeal" type="text" value="" id="txtFirstName">
                            </div>
                        </div>
                        <div class="formrowdeal">
                            <div class="formrowtopdeal">Last Name <span style="color: Red;">*</span>:</div>
                            <div class="formrowtextdeal">
                                <input class="txtboxsigndeal" type="text" value="" id="txtLastName">
                            </div>
                        </div>
                        <div class="formrowdeal">
                            <div class="formrowtopdeal">Email <span style="color: Red;">*</span>:</div>
                            <div class="formrowtextdeal">
                                <input class="txtboxsigndeal" type="text" value="" id="txtEmail">
                            </div>
                        </div>
                        <div class="formrowdeal">
                            <div class="formrowtopdeal">Phone <span style="color: Red;">*</span>:</div>
                            <div class="formrowtextdeal">
                                <input class="txtboxsigndeal" type="text" value="" id="txtPhone">
                            </div>
                        </div>
                        <div class="formrowdeal">
                            <div class="formrowtopdeal">Birthdate <span style="color: Red;">*</span>:</div>
                            <div class="formrowtextdeal">
                                <input class="txtboxsigndeal" type="text" value="" id="datepicker">
                            </div>
                        </div>
                        <div class="formrowdeal buttonrowdeal">
                            <div id="bSubmit">Submit</div>
                        </div>
                        <!--opt notify-->
                        <div id="formnotifysignup">
                            <div id="formnotifycontentsignup">
                            </div>
                            <div id="formnotifyoksignup">OK</div>
                        </div>
                        <!--opt notify-->
                    </div>
                    <!--Sign In form End-->
                </div>
            </div>
        </div>
        <div id="loadspinner" >
            <div id="img_loader">
                <img src="images/spinner.gif" alt="loader">
            </div>
        </div>

    </div>
</asp:Content>

