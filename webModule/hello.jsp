<%@ page import="com.example.*,javax.naming.*,java.text.*"%>
<%!
	private HelloWorldLocal h=null;
	public void jspInit()
	{
		try
		{
		InitialContext ctx=new InitialContext();
			h=(HelloWorldLocal)ctx.lookup("EJB3-HelloWorldBean#com.example.HelloWorldLocal");
		}
		catch(Exception e)
		{
				e.printStackTrace();
		}
	}
%>
<%
String result=null;
String name=null;
try
{
	name=request.getParameter("name");
	if(name!=null)
	result=h.hello(name);
}
catch(Exception e)
{
	result="Not Valid";
}
%>
<html>
<head><title>Stateless SessionBean</title></head>
<body>
<h1>Using Stateless SessionBean</h1>
<br><br>
<form action="hello.jsp" method="POST">
Enter Your Name:<input type="text" name="name">
<p>
<input type="submit" value="Submit">
</p>
</form>
<p>
<%
if(result!=null)
out.println("<b><font color=teal>"+result+"</font></b>");
%>
</p>
</body>
</html>