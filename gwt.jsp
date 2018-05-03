<!DOCTYPE html>
<!--
 * Licensed to The Apereo Foundation under one or more contributor license
 * agreements. See the NOTICE file distributed with this work for
 * additional information regarding copyright ownership.
 *
 * The Apereo Foundation licenses this file to you under the Apache License,
 * Version 2.0 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at:
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 -->
<%@ page language="java" pageEncoding="utf-8" contentType="text/html;charset=utf-8" errorPage="/error.jsp"%>
<%@ page import="org.unitime.localization.impl.Localization"%>
<%@ page import="org.unitime.timetable.util.Constants"%>
<%@ taglib uri="http://www.unitime.org/tags-custom" prefix="tt" %>
<html>
  <head>
    <meta name="gwt:property" content="locale=<%=Localization.getFirstLocale()%>">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link type="text/css" rel="stylesheet" href="unitime/gwt/standard/standard.css">
    <link type="text/css" rel="stylesheet" href="styles/unitime.css">
    <link type="text/css" rel="stylesheet" href="styles/unitime-mobile.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!--[if IE]>
	    <link type="text/css" rel="stylesheet" href="styles/unitime-ie.css">
    <![endif]-->
    <tt:hasProperty name="tmtbl.custom.css">
    	<link rel="stylesheet" type="text/css" href="%tmtbl.custom.css%" />
    </tt:hasProperty>
    <link rel="shortcut icon" href="images/timetabling.ico">
    <title>UniTime <%=Constants.VERSION%>| University Timetabling Application</title>
    <script language="JavaScript" type="text/javascript" src="scripts/rtt.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
  </head>
  <body class="unitime-Body">
    <iframe src="javascript:''" id="__gwt_historyFrame" tabIndex="-1" style="position:absolute;width:0;height:0;border:0"></iframe>
    <iframe src="javascript:''" id="__printingFrame" tabIndex="-1" style="position:absolute;width:0;height:0;border:0"></iframe>

    <div class='top-menu'>
    	<tt:notHasProperty name="unitime.menu.style" user="true">
	    	<div id='UniTimeGWT:DynamicTopMenu' style="display: block; height: 23px;"></div>
    	</tt:notHasProperty>
    	<tt:propertyEquals name="unitime.menu.style" user="true" value="Dynamic On Top">
    		<div id='UniTimeGWT:DynamicTopMenu' style="display: block; height: 23px;"></div>
    	</tt:propertyEquals>
    	<tt:propertyEquals name="unitime.menu.style" user="true" value="Static On Top">
    		<div id='UniTimeGWT:TopMenu' style="display: block; height: 23px;"></div>
    	</tt:propertyEquals>
    </div>

	<tt:hasProperty name="tmtbl.global.info">
    	<div class='unitime-PageMessage'><tt:property name="tmtbl.global.info"/></div>
	</tt:hasProperty>
	<tt:hasProperty name="tmtbl.global.warn">
    	<div class='unitime-PageWarn'><tt:property name="tmtbl.global.warn"/></div>
	</tt:hasProperty>
	<tt:hasProperty name="tmtbl.global.error">
    	<div class='unitime-PageError'><tt:property name="tmtbl.global.error"/></div>
	</tt:hasProperty>
	<tt:page-warning prefix="tmtbl.page.warn." style="unitime-PageWarn"/>
	<tt:page-warning prefix="tmtbl.page.info." style="unitime-PageMessage"/>
	<tt:page-warning prefix="tmtbl.page.error." style="unitime-PageError"/>
	<div id='UniTimeGWT:CustomPageMessages'></div>
	<tt:offering-locks/>

	<div class="unitime-Page">
        <div class='row'>
        	<div class='sidebar' id="unitime-SideMenu">
            		<tt:propertyEquals name="unitime.menu.style" user="true" value="Stack On Side">
            			<div id='UniTimeGWT:SideStackMenu' style="display: block;" ></div>
        	    	</tt:propertyEquals>
            		<tt:propertyEquals name="unitime.menu.style" user="true" value="Tree On Side">
            			<div id='UniTimeGWT:SideTreeMenu' style="display: block;" ></div>
        	    	</tt:propertyEquals>
            		<tt:propertyEquals name="unitime.menu.style" user="true" value="Static Stack On Side">
            			<div id='UniTimeGWT:StaticSideStackMenu' style="display: block;" ></div>
        		    </tt:propertyEquals>
            		<tt:propertyEquals name="unitime.menu.style" user="true" value="Static Tree On Side">
            			<div id='UniTimeGWT:StaticSideTreeMenu' style="display: block;" ></div>
        		    </tt:propertyEquals>
            		<tt:propertyEquals name="unitime.menu.style" user="true" value="Dynamic Stack On Side">
            			<div id='UniTimeGWT:SideStackMenu' style="display: block;" ></div>
        		    </tt:propertyEquals>
            		<tt:propertyEquals name="unitime.menu.style" user="true" value="Dynamic Tree On Side">
            			<div id='UniTimeGWT:SideTreeMenu' style="display: block;" ></div>
        		    </tt:propertyEquals>
            <script language="JavaScript" type="text/javascript">
            	var sideMenu = document.getElementById("unitime-SideMenu").getElementsByTagName("div");
            	if (sideMenu.length > 0) {
            		var c = unescape(document.cookie);
            		var c_start = c.indexOf("UniTime:SideBar=");
            		if (c_start >= 0) {
            			c_start = c.indexOf("|W:", c_start) + 3;
            			var c_end = c.indexOf(";", c_start);
            			if (c_end < 0) c_end=c.length;
            			var width = c.substring(c_start, c_end);
            			sideMenu[0].style.width = width + "px";
            			// alert(c.substring(c.indexOf("UniTime:SideBar=") + 16, c_end));
            		} else {
            			sideMenu[0].style.width = (sideMenu[0].id.indexOf("StackMenu") >= 0 ? "172px" : "152px");
            		}
            	}
            </script>
        	</div>
            <div class='container'>
                <div class='body row' id="unitime-Page">
            	<div class="unitime-PageHeader col-sm-12" id="unitime-Header">
        			<div class="mobile-menu-button" id='UniTimeGWT:MobileMenuButton'></div>
        			<a href='main.jsp' tabIndex="-1" class="logo"></a>
        			<div class="content">
    					<div id='UniTimeGWT:Title' class="title"></div>
    					<div class='unitime-Header'><div id='UniTimeGWT:Header' class="unitime-InfoPanel"></div></div>
    					<div id='UniTimeGWT:TitlePanel' class='navigation'></div>
    				</div>
        		</div>
        		<div class="mobile-menu" id='UniTimeGWT:MobileMenuPanel'></div>
        		<div class="content">
        			<div id="UniTimeGWT:Loading" class="unitime-PageLoading">
        				Page is loading, please wait ...
        			</div>
        	    	<div id='UniTimeGWT:Body'></div>
        	    </div>
            </div><div class='footer' id="unitime-Footer">
        		<div class="unitime-Footer col-sm-12">
    				<div class="cell left">
    					<div id='UniTimeGWT:Version'></div>
    				</div>
        			<%-- WARNING: Changing or removing the copyright notice will violate the license terms. If you need a different licensing, please contact us at support@unitime.org --%>
    				<div class="cell middle"><tt:copy/></div>
    				<div class="cell right"><tt:registration/></div>
        		</div>
        		<tt:hasProperty name="tmtbl.page.disclaimer">
        			<div class='unitime-Disclaimer'><tt:property name="tmtbl.page.disclaimer"/></div>
        		</tt:hasProperty>
        		<div class="unitime-VisibleAriaStatus" id='UniTimeGWT:AriaStatus'></div>
        	</div>
        </div>
    </div>
</div>

    <script type="text/javascript" language="javascript" src="unitime/unitime.nocache.js"></script>
  </body>
</html>
