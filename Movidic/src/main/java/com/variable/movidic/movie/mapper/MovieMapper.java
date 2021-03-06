package com.variable.movidic.movie.mapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.variable.movidic.domain.CountVO;
import com.variable.movidic.domain.MovieVO;
import com.variable.movidic.domain.RatingVO;
import com.variable.movidic.util.Criteria;

public interface MovieMapper {

	public ArrayList<MovieVO> getRankData();
	public ArrayList<MovieVO> getLatelyData();
	public ArrayList<MovieVO> getCategoryData(Criteria cri);
	public ArrayList<MovieVO> getSidebarData();
	public int getTotal(Criteria cri);
	public ArrayList<MovieVO> getCategoryData();
	MovieVO read(int mno);
	//조회수, 댓글 수 조회
	CountVO getCount(int mno);
	//조회수 증가
	int updateHitCnt(int mno);	
	//최근 등록 댓글 영화 목록 조회
	List<MovieVO> getRecentReplie();
	//평점 추가
	int insertRating(RatingVO ratingVO);
	//
	Map<String, Integer> avgRating(int mno);
	RatingVO checkRating(RatingVO ratingVO);
	
	

}
