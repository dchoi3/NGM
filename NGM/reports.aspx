﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="reports.aspx.vb" Inherits="NGM.reports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reports</title>
    <link href="styleSheet/styleSheetIndex.css" rel="stylesheet" type="text/css"/>
    <link href="styleSheet/styleSheetReports.css" rel="stylesheet" type="text/css"/>
    <script type = "text/javascript">
         function SetTarget() {
         document.forms[0].target = "_blank";
     }
</script>
</head>
<body>
<form runat="server">
	<div id="reportsOverlay">
	<header>
		<div id="calendarDDContainer" class="headerContainer">
		    <img class="roundIcons" id="calenderIcon" src="images/roundIcons/calendarIcon.png" width="50" height="50" alt="calendarIcon"/>
            <asp:DropDownList ID="calenderStartDD" runat="server"  class="calendarDD">
            </asp:DropDownList>
            <asp:DropDownList ID="calenderEndDD" runat="server"  class="calendarDD">
            </asp:DropDownList>
		</div>
		<div id="locationDDContainer" class="headerContainer">
			<img class="roundIcons" id="addIcon" src="images/roundIcons/locationIcon.png" width="50" height="50" alt="LocationIcon"/>
		    <asp:DropDownList ID="locationDD" runat="server" Height="2.5em">
                <asp:ListItem>TEST</asp:ListItem>
            </asp:DropDownList>
		</div>
		<div id="headerButtons" class="headerContainer">
			<a><asp:ImageButton runat="server" class="headerButtons" type="image" name="editIcon" id="homeIcon" src="images/headerIcons/homeIcon.png"/></a>
			<a><asp:ImageButton runat="server" class="headerButtons" type="image" name="voidIcon" id="printIcon" src="images/headerIcons/printIcon.png"/></a>
			<a><asp:ImageButton runat="server" class="headerButtons" type="image" name="helpIcon" id="poshelpIcon" src="images/headerIcons/helpIcon.png" OnClientClick = "SetTarget();"/></a>
		</div>
	</header>
	<div id="reportsContainer">
        <asp:MultiView ID="reportsMultiView" runat="server">
            <asp:View ID="summaryView" runat="server">
		        <div id="hourlyReportsContatiner" class="reportsSection">
			        <img src="images/banners/reports_hourly.jpg" width="330" height="40" alt="hourlyTopper"/>
	            </div>
		        <div id="dailyReportsContainer" class="reportsSection">
			        <img src="images/banners/reports_daily.jpg" width="330" height="40" alt="dailyTopper"/>
		        </div>
            </asp:View>
            <asp:View ID="detailedView" runat="server">
		        <div id="detailedContainer">
			        <img src="images/banners/reports_detailed.jpg" width="680" height="40" alt="detailedTopper"/>
	            </div>
            </asp:View>
        </asp:MultiView>
		<div id="asideContainer" class="reportsSection">
			<img src="images/logos/reportsLogo.png" id="reportsLogo" alt="logoBanner"/>
			<asp:ImageButton runat="server" src="images/largeButtons/reports_detailed.png" id="detailedButton" width="300" alt="detailedButton"/>
		</div>
	</div>
	<footer id="reportsFooter">
		<p id="hotKeyRef"> 
				Escape - [ESC] &nbsp;|&nbsp; Home - [CTRL-H] &nbsp;|&nbsp; Print - [CTRL-P] &nbsp;|&nbsp; Help - [F11]
			</p>
		<p id="companyName">&copy; New Generation Merchandising</p>
	</footer>
	</div>
</form>
</body>
</html>