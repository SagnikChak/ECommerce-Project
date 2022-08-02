<%@page import="java.io.PrintStream"%>
<%@page import="com.jdbc.CreateTables"%>

<%

	try
	{
		CreateTables.tables();
	}
	catch(Exception e)
	{
		System.out.println(e);
	}

%>