<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ page extends="com.jdc.balance.BaseView" %>

    <form class="form-inline">
    	 	
    	<div class="form-group">
    		<label>From</label>
    		<input type="date" name="from" />
    	</div>
    	
    	<div class="form-group">
    		<label>To</label>
    		<input type="date" name="to" />
    	</div>
    	
    	<div class="form-group">
    		<label>Category</label>
    		<input type="text" placeholder="Search Category" name="category" />
    	</div>
    	
    	
    	<div class="form-group">
			<button type="submit" class="btn btn-e mr-4 icon-btn">
			 <img src="<%= getSvg("search") %>" class="icon icon-left"  />
			Search</button>
			<a class="btn btn-e icon-btn" href="<%= getPath("/employee/transaction/edit?type=" + request.getParameter("type")) %>">
			 <img src="<%= getSvg("plus") %>" class="icon icon-left" />
			 Add New</a>
		</div>
    
    </form>
    
    <table>
    	<thead>
    		<tr>
    			<th>Date</th>
    			<th>Employee</th>
    			<th>Category</th>
    			<th>Approved</th>
    			<th class="right">Items</th>
    			<th class="right">Amount</th>
    		</tr>
    	</thead>
    	
    	<tbody>
    		<% for(int i=0; i<20;i++){ %>
    			<tr>
    				<td>
    					<a href="<%=getPath("/employee/transaction/details")%>">2021-04-12</a>
    				</td>
    				<td>Hein Htet</td>
    				<td>Java Basic Online Class</td>
					<td>Yes</td>
					<td class="right">5</td>	
					<td class="right">500000</td>
    			</tr>
    		<%} %>
    	</tbody>
    </table>
   
	
	
	
	
	
	
	
	
	