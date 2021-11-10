<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page extends="com.jdc.balance.BaseView"%>

<!--
	int incomes = (int) request.getAttribute("incomeSummary");
	int expense = (int) request.getAttribute("expenseSummary");
	int balance = (int) request.getAttribute("balanceSummary");");
%>

<div>
	<div>
		<h3>Expenses</h3>
		
		<span>${expenseSummary }</span>
	</div>
	
	<div>
	
		<h3>Incomes</h3>
		
		<span>${incomeSummary }</span>
	</div>	
	
	<div>
		<h3>Balance</h3>
		<span>
		formatNumber(balance)ce) %>
		</span>
	</div>
	
	<div>
		<h3>Employee</h3>
		<span>
		request.getAttribute("empCount")t") %>
		</span>
	</div>
	
</div>


<div id="dash-tops">
	<%

	%>
</div>



-->
