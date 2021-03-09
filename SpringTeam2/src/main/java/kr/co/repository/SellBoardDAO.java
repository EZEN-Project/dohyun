package kr.co.repository;

import java.util.List;

import kr.co.domain.SellBoardVO;

public interface SellBoardDAO {

	public void insert(SellBoardVO vo);

	public SellBoardVO read(int bnum);

	public List<String> getAttaches(int bnum);

	public SellBoardVO updateUI(int bnum);

	public void updateUI(SellBoardVO vo);

	public void delete(int bnum);

}
