<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.FormList.SearchEsrRisk" Codebehind="SearchEsrRisk.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
        <base target="_self"></base>    
		<title>:::Message Address List:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/JavaScript"  src="../js/common.js"></script>
		<script language="javascript">
		<!--	
		   function Select_Risk()
		   {			      
		      var opener = window.dialogArguments;
		      var chkListContainer = document.getElementById("RiskCheckList"); 
              var chkList = chkListContainer.getElementsByTagName("input");      
              var cblv="", cbid=""; 
              for(var i=0; i <chkList.length;i++) { 
                if (chkList[i].checked)
                {                 
                  cblv += document.getElementById("RiskCheckList_"+i.toString()).nextSibling.innerHTML+"; ";
                  cbid += i.toString()+";";              
                 }
              }   

		      if (isIE())
		      {
		        opener.document.TransPRRS.RiskFactorTxt.value=cblv.toString();	
		        opener.document.TransPRRS.RiskFactor.value=cbid.toString();	
		        opener.focus();	        
		      }
		      else
		      {
		         window.opener.document.TransPRRS.RiskFactorTxt.value=cblv.toString();
		         window.opener.document.TransPRRS.RiskFactor.value=cbid.toString();
		         window.opener.focus();		        
		      }		      
		      window.close();		      
		   }	
		//-->
		</script>
		
</head>
<body>
    <form id="SearchRiskForm" runat="server">        
        <div align="center">
        <br />
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
        <tr><td colspan="2" height="20px"></td></tr>
        <tr>
          <td width="80px"></td>
          <td>
            <input type="button"  name="btnSelect" id="btnSelect" value="Select" Style="width: 150px" class="buttonbluestyle" runat="server"  onclick="javascript:Select_Risk();"   />            
          </td>
        </tr>
        <tr><td colspan=2 height="5"></td></tr>
        <tr><td colspan=2 height="3" style="background-color: #cc99cc"></td></tr>
        <tr><td colspan=2 height="8"></td></tr>   
       
		<tr>
          <td width="80px"></td>
		  <td>
		   <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
            <tr>
             <td width="10px"></td>             
             <td>
                <asp:CheckBoxList ID="RiskCheckList" runat="server">
                   <asp:ListItem>a.) Prematurity of less than 32 weeks gestation and/or low birth weight of less than 1500 grams.</asp:ListItem>
                   <asp:ListItem>b.) Assisted ventilation for 48 hours or longer during the first 28 days of life.</asp:ListItem>
                   <asp:ListItem>c.) Small for gestational age:  below the third percentile on the National Center for Health Statistics growth charts.</asp:ListItem> 
                   <asp:ListItem>d.) Asphyxia Neonatorum associated with a five minute Apgar score of 0 to 5.</asp:ListItem> 
                   <asp:ListItem>e.) Severe and persistent metabolic abnormality.</asp:ListItem>
                   <asp:ListItem>f.) Neonatal seizures or nonfebrile seizures during the first three years of life.</asp:ListItem> 
                   <asp:ListItem>g.) Central nervous system lesion or abnormality.</asp:ListItem>
                   <asp:ListItem>h.) Central nervous system infection.</asp:ListItem>
                   <asp:ListItem>i.) Biomedical insult including, but not limited to injury, accident or illness which may seriously or permanently affect developmental outcome.</asp:ListItem> 
                   <asp:ListItem>j.) Multiple congenital anomalies or genetic disorders which may affect developmental outcome.</asp:ListItem>
                   <asp:ListItem>k.) Prenatal exposure to known teratogens."></asp:ListItem>
                   <asp:ListItem>l.) Prenatal substance exposure, positive infant neonatal toxicology screen or symptomatic neonatal toxicity or withdrawal.</asp:ListItem>
                   <asp:ListItem>m.) Clinically significant failure to thrive.</asp:ListItem>
                   <asp:ListItem>n.) Persistent hypotonia or hypertonia, beyond that otherwise associated with a known diagnostic condition.</asp:ListItem>
                   <asp:ListItem>o.) DD parent.</asp:ListItem>
                   <asp:ListItem>p.) Not a significant delay.</asp:ListItem>           
                </asp:CheckBoxList>
			 </td>
            </tr>
            </table>  
          </td>
        </tr>
		</table> 
		</div>
    </form>
</body>
</html>