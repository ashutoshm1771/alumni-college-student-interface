<%@ page import="java.io.*"  %>
<%@ page import="java.sql.*"  %>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/spardha","root","Sai@9549");
Statement st = con.createStatement();
String an=request.getParameter("aname");
String ac=request.getParameter("acollege");
String apoy=request.getParameter("apoy");
String ab=request.getParameter("abranch");
String aem=request.getParameter("aemail");
String apos=request.getParameter("acompany");
String ap=request.getParameter("aposition");
String ad=request.getParameter("adomain");
String areg=request.getParameter("aregno");
String apass=request.getParameter("apassword");
String acpass=request.getParameter("acpassword");
PreparedStatement ps=con.prepareStatement("insert into alumini values(?,?,?,?,?,?,?,?,?,?)");
if(!(apass.equals(acpass)))
{
	out.println("password not matched");
	out.println("<a href=welcomeAlumni.html><button>Re-Enter Details</button></a>");
}
else
{
	ps.setString(1,an);
	ps.setString(2,ac);
	ps.setString(3,apoy);
	ps.setString(4,ab);
	ps.setString(5,aem);
	ps.setString(6,apos);
	ps.setString(7,ap);
	ps.setString(8,ad);
	ps.setString(9,areg);
	ps.setString(10,apass);
int r=ps.executeUpdate();
if(r==1)
{
	response.sendRedirect("loginalumini.html");
}
}

%>
