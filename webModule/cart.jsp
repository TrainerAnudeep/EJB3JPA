<%@ page import="com.example.stateful.*,javax.ejb.*,javax.naming.*,java.util.logging.*,java.util.*"%>
<%!
private Cart cart;
public void jspInit()
{
	try
	{
		Context c=new InitialContext();
		cart=(Cart)c.lookup("EJB3-CartBean#com.example.stateful.Cart");
	}
	catch(NamingException ex)
	{
	Logger.getLogger(getClass().getName()).log(Level.SEVERE,"exception caught",ex);
	throw new RuntimeException(ex);
	}
}
public void jspDestroy()
{
cart=null;
}

%>

<html>
<body>
<h1 align=center>ShoppingCart</h1>
<hr>
<h3>Adding items to Shopping Cart</h3>
<form method="get">
Enter Item Name:<input type="text" name="item" size="25"><br>
<input type="submit" value="Add item">
</form>
<%
String item=request.getParameter("item");
if(item!=null)
cart.addItem(item);
Collection<String> items=cart.getItems();
%>
<p>
<%= items%>
</body>
</html>