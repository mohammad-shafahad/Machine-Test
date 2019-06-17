<%@page import="projectpackage.DBManager" %>

<%
String fname=request.getParameter("fname");
out.println(fname);
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String dob=request.getParameter("dob");
int mobile=Integer.parseInt(request.getParameter("mob"));
String designation=request.getParameter("designation");
String gender=request.getParameter("gender");
String[] hob = request.getParameterValues("hob");
String hobb="";
if(hob!=null)
{
for(int i=0;i<hob.length;i++){
    hobb=hobb+hob[i]+",";  
out.println(hobb);
}}

DBManager db=new DBManager();

String query="insert into userinfo values('"+fname+"','"+lname+"','"+email+"','"+dob+"','"+mobile+"','"+designation+"','"+gender+"','"+hobb+"')";
if(db.executeNonQuery(query)==true){
    out.println("<script>alert('successfully registered');window.location.href='index.html';</script>");
}
else{
    out.println("<script>alert('not registered');window.location.href='index.html';</script>");
}

%>
