package com.jdc.balance.controller;

import java.io.IOException;

import com.jdc.balance.BaseController;
import com.jdc.balance.Destination;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({ "/manager/balance" })
public class BalanceController extends BaseController {
	private static final long serialVersionUID = 1L;

	@Override
	protected void process(HttpServletRequest req, HttpServletResponse resp, String path)
			throws ServletException, IOException {
		search(req, resp);
	}

	private void search(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		navigate(new Destination.Builder().req(req).resp(resp).
				view("manager/report").pageTitle("Reports")
				.viewTitle("Balance Report").activeMenu("reports").build());
	}

}