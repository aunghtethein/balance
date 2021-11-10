 <%@page import="com.jdc.balance.model.vo.BalanceVO"%>
<%@page import="com.jdc.balance.model.domain.TransactionDetails"%>
<%@page import="com.jdc.balance.model.domain.Transaction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ page extends="com.jdc.balance.BaseView" %>
	  
    <form action="#" class="form-inline">
    	
    	<div class="form-group">
    		<label>Date From</label>
    		<input type="date" name="from" placeholder="Search From" />
    	</div>
    	
    	<div class="form-group">
    		<label>Date To</label>
 			<input type="date" name="to" placeholder="Search To" />
    	</div>
    	
    	<div class="form-group">
    		<label>Category</label>
    		<select name="category" >
    			<option value="">All Category</option>
    			
    		</select>
    	</div>
    	
    	<div class="form-group">
    	
    		<button type="submit" class="btn mr-4 icon-btn">
    		<img src="<%= getSvg("search") %>" class="icon icon-left" />
    		Search</button>
    	</div>
    </form>
    
    <table>
    	<thead>
    		<tr>
    			<th>Date</th>
    			<th>Category</th>
    			<th>Employee</th>
    			<th class="right">Expense</th>
    			<th class="right">Income</th>
    			<th class="right">Balance</th>
    		</tr>
    	</thead>
    	<jsp:useBean id="list" scope="request" type="java.util.List<BalanceVO>" />
    	
  
    	<tbody>
    		<% for(BalanceVO v : list) {%>
    	
    			<tr>
    				<td>
    					<a href="<%= getPath("/employee/transaction/details?id=" + v.getId())%>">
    						<%= getDateString(v.getDate()) %>	
    					</a>
    				</td>
    				<td><%= v.getEmployee().getName() %></td>
    				<td><%= v.getCategory() %></td>
    				
    				<td class="right">
    					<%= formatNumber(v.getExpense()) %> MMK
    				</td>
    				<td class="right">
    					<%= formatNumber(v.getIncome()) %> MMK
    				</td>
    				<td class="right">
    					<%= formatNumber(v.getBalance()) %> MMK
    				</td>
    			</tr>
    		<%} %>
    	</tbody>
    </table>