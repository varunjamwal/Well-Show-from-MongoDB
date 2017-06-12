<%
    try{
      
    String[] selectedNames = request.getParameterValues("values");
    String[] selectedOperator = request.getParameterValues("OPS");
    String[]  selectedCountry = request.getParameterValues("coun"); 
    String[] selectedState = request.getParameterValues("state");
      %><table border = "2">
            <tr>
                <th><input type="checkbox" onClick="toggle(this)"></input></th>
                <th>Well Name</th>
                <th>Country</th>
                <th>State</th>
                <th>Operator</th>
            </tr><%
    for(int i = 0; i    < selectedNames.length; i++){
         %>
   
            <tr> 
                <td><input type="checkbox" /></td>
                <td><% out.println(selectedNames[i]); %></td>
                <td><% out.println(selectedCountry[i]); %></td>
                <td><% out.println(selectedState[i]);%></td>
                <td><% out.println(selectedOperator[i]);%></td>
            </tr>
    <%    

    }
%></table><%
}
    catch(Exception e){
        
    }
%>
