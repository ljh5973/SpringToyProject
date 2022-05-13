package com.variable.movidic.movie.mapper;

import java.util.ArrayList;

import com.variable.movidic.domain.MovieVO;

public interface MovieMapper {

	public ArrayList<MovieVO> getRankData();
	public ArrayList<MovieVO> getLatelyData();
	public ArrayList<MovieVO> getCategoryData();
}
