<%@ Page Title="Contact" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content">
        <div class="bg_border">
            
        </div>
        <h2>Contact:</h2>
        <div class="contact_from">
            <%=contact.PageContent %>

            <div class="contact_from_l">
                <div class="contact_from_title">Send us a message</div>
                <div class="form_m">
                    <!--Contact form Begin-->
                    <div id="form">
                        <div class="formrow">
                            <div class="formrowtop">Your Name*:</div>
                            <div class="formrowtext">
                                <input class="txtbox" type="text" value="" id="txtName" placeholder="Your Name">
                            </div>
                        </div>
                        <div class="formrow">
                            <div class="formrowtop">Your Email*:</div>
                            <div class="formrowtext">
                                <input class="txtbox" type="text" value="" id="txtEmail" placeholder="Your Email">
                            </div>
                        </div>
                        <div class="formrow">
                            <div class="formrowtop">Phone Number*:</div>
                            <div class="formrowtext">
                                <input class="txtbox" type="text" value="" id="txtPhone" placeholder="Phone Number">
                            </div>
                        </div>
                        <div class="formrow">
                            <div class="formrowtop">Content*:</div>
                            <div class="formrowtext">
                                <textarea class="txtbox textarea" rows="10" id="txtContent" placeholder="Message"></textarea>
                            </div>
                        </div>
                        <p></p>
                        <div class="formrow buttonrow">
                            <div id="formwait">Please wait...</div>
                            <button type="button" id="bSend" class="btn btn-default" >Submit</button>
                        </div>
                        <p></p>
                        <!--opt notify-->
                        <div id="formnotify">
                            <div id="formnotifycontent">
                            </div>
                            <div id="formnotifyok">OK</div>
                        </div>
                        <!--opt notify-->
                    </div>
                    <!--Contact form End-->
                </div>

            </div>
        </div>

    </div>

</asp:Content>

