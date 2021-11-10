package com.jdc.balance.model.service;

import java.time.LocalDate;
import java.util.List;

import com.jdc.balance.model.vo.BalanceVO;

public interface BalanceService {

	public List<BalanceVO> search(LocalDate from, LocalDate to, String category);

}
