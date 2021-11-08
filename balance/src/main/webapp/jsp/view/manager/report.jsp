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
    	
    		<button type="submit" class="btn">Search</button>
    	</div>
    </form>
    
    <table>
    	<thead>
    		<tr>
    			<th>Date</th>
    			<th>Category</th>
    			<th>Employee</th>
    			<th class="right">Income</th>
    			<th class="right">Expense</th>
    			<th class="right">Balance</th>
    		</tr>
    	</thead>
    	<tbody>
    		<% for(int i=0; i<10; i++) {%>
    			<tr>
    				<td>2021-09-12</td>
    				<td>Java Basic</td>
    				<td>Hein Htet</td>
    				<td class="right">100,000</td>
    				<td class="right"></td>
    				<td class="right">2,000,000</td>
    			</tr>
    		<%} %>
    	</tbody>
    </table>