<!-- 
     Copyright 2006-2017 Vidyasagar Mundroy

     Licensed under the Apache License, Version 2.0 (the "License");
     you may not use this file except in compliance with the License.
     You may obtain a copy of the License at

         http://www.apache.org/licenses/LICENSE-2.0

     Unless required by applicable law or agreed to in writing, software
     distributed under the License is distributed on an "AS IS" BASIS,
     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
     See the License for the specific language governing permissions and
     limitations under the License.
-->

<!--
 --- Function: 		Displays data transfer related buttons for source table list frame. 
 -->
 
<TABLE WIDTH="100%">

<TR STYLE="BACKGROUND:LIGHTSTEELBLUE">
<TD ALIGN=CENTER>
<INPUT TYPE=BUTTON VALUE="Transfer" ONCLICK="transfer_data(this.form)">
</TD>

<TD ALIGN=CENTER>
<INPUT TYPE=BUTTON VALUE="Refresh" ONCLICK="refresh_data(this.form, 1)">
</TD>

<TD ALIGN=CENTER>
<INPUT TYPE=BUTTON VALUE="Help" ONCLICK="display_help_source(this.form, 1)">
</TD>

</TR>

</TABLE>
