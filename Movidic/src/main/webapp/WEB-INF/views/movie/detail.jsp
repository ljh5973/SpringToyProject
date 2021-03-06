<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Anime Template">
<meta name="keywords" content="Anime, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Anime | Template</title>

</head>

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/modal.css"
	type="text/css">
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>


	<!-- Breadcrumb Begin -->
	<div class="breadcrumb-option">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__links">
						<a href="../"><i class="fa fa-home"></i> Home</a> <a
							href="./category">Categories</a> <span>${movie.genre}</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<!-- Anime Section Begin -->
	<section class="anime-details spad">
		<div class="container">
			<div class="anime__details__content">
				<div class="row">
					<div class="col-lg-3">
						<div class="anime__details__pic set-bg"
							data-setbg="${movie.image}">
							<div class="comment">
								<i class="fa fa-comments"></i> ${count.replie_cnt}
							</div>
							<div class="view">
								<i class="fa fa-eye"></i> ${count.view_cnt }
							</div>
						</div>
					</div>
					<div class="col-lg-9">
						<div class="anime__details__text">
							<div class="anime__details__title">
								<h3>${movie.title}</h3>
							</div>
							<!-- 평점 -->
							<%-- 							<div class="anime__details__rating">
								<div class="rating">
									<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
										class="fa fa-star"></i></a> <a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
										class="fa fa-star-half-o"></i></a>
								</div>
								
								<span>${rating.count} Votes</span>
							</div> --%>
							<div class="anime__details__rating">
								<div class="rating">
									<c:if test="${rating.count == 0}">
										<i class="fa fa-star-half"></i>
									</c:if>

									<c:if test="${rating.rating >=0 and rating.rating< 0.75}">
										<i class="fa fa-star-half"></i>
									</c:if>
									<c:if
										test="${0.75 <= rating.rating and rating.rating <= 1.25  }">
										<i class="fa fa-star"></i>
									</c:if>

									<c:if test="${rating.rating > 1.25 and rating.rating< 1.75}">
										<i class="fa fa-star"></i>
										<i class="fa fa-star-half"></i>
									</c:if>
									<c:if
										test="${1.75 <= rating.rating and rating.rating <= 2.25  }">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
									</c:if>

									<c:if test="${rating.rating > 2.25 and rating.rating< 3.75}">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-half"></i>
									</c:if>
									<c:if
										test="${3.75 <= rating.rating and rating.rating <= 4.25  }">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
									</c:if>

									<c:if test="${rating.rating > 4.25 and rating.rating< 4.90}">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-half"></i>
									</c:if>
									<c:if
										test="${4.90 <= rating.rating and rating.rating <= 5.01  }">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
									</c:if>
								</div>

								<span>${rating.count} Votes</span>
							</div>

							<p>${movie.summary}</p>
							<div class="anime__details__widget">
								<div class="row">
									<div class="col-lg-6 col-md-6">
										<ul>
											<li><span>장르:</span> ${movie.genre}</li>
											<li><span>상영시간:</span> ${movie.duration}</li>
											<li><span>관람등급:</span> ${movie.film_ration}</li>
										</ul>
									</div>
									<div class="col-lg-6 col-md-6">
										<ul>
											<fmt:formatDate value="${movie.openData}"
												pattern="yyyy/MM/dd" var="opendate" />
											<li><span>개봉일:</span> ${opendate}</li>
											<li><span>평점:</span> ${rating.rating} / ${rating.count}
												Votes</li>
											<li><span>조회수:</span> ${count.view_cnt} views</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="anime__details__btn">
								<button class="follow-btn" onclick="gradeBtn()">
									<i class="fa fa-star-o"></i>평점주기
								</button>
								<a href="watch?mno=${movie.mno }" class="watch-btn"><span>시청하기</span></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8 col-md-8">
					<div class="anime__details__review">
						<div class="section-title">
							<h5>Reviews</h5>
						</div>
						<div id="replies"></div>
					</div>

					<!-- 댓글 입력 -->
					<div class="anime__details__form">
						<div class="section-title">
							<h5>Your Comment</h5>
						</div>
						<%--  <c:if test="${not empty login }"> --%>
						<div>
							<input id="mno" type="hidden" value="${movie.mno}"> <input
								id="login_name" type="hidden" value="${login.name}"> <input
								id="login_email" type="hidden" value="${login.email}" />
							<textarea id="content" placeholder="Your Comment"></textarea>
							<button type="submit" id="submit">
								<i class="fa fa-location-arrow"></i> Review
							</button>
						</div>
						<%--  </c:if> --%>
					</div>
				</div>

				<!-- TODO 장르에 맞는 것을 검색 예) -> like 액션 등등  -->
				<div class="col-lg-4 col-md-4">
					<div class="anime__details__sidebar">
						<div class="section-title">
							<h5>you might like...</h5>
						</div>
						<div class="filter__gallery"></div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Anime Section End -->



	<!-- Search model Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">
				<i class="icon_close"></i>
			</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->


	<!-- Grade Modal area -->
	<div class="modal gradeModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">별점 주기</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close" onclick="modalClose()">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<span class="star-input"> <span class="input"> <input
							type="radio" name="star-input" value="1" id="p1"> <label
							for="p1">1</label> <input type="radio" name="star-input"
							value="2" id="p2"> <label for="p2">2</label> <input
							type="radio" name="star-input" value="3" id="p3"> <label
							for="p3">3</label> <input type="radio" name="star-input"
							value="4" id="p4"> <label for="p4">4</label> <input
							type="radio" name="star-input" value="5" id="p5"> <label
							for="p5">5</label>
					</span> <output for="star-input">
							<b>0</b>점
						</output>
					</span>
				</div>
				<div class="modal-footer">
					<button id="saveBtn" type="button" class="btn btn-primary">Save
						changes</button>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal" onclick="modalClose()">Close</button>
				</div>
			</div>
		</div>
	</div>

</body>


<script
	src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/js/category.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/js/replies.js?version=02"></script>
<script
	src="${pageContext.request.contextPath }/resources/js/modal.js?version=02"></script>



</html>