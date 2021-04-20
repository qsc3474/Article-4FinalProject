<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body id="home-version-1" class="home-version-1 sticky-header transparent-header menu-two" data-style="default">
	
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	
		<div id="main_content">
		
			<!-- 여행정보 -->
			<section id="TravelInfo" class="info-sec bg-white">
				<div class="container">
					<div class="text-center pb">
						<h3 class="underline-magical"><span class="underline--magical"> 반려동물과 떠나는 여행</span></h3>
						<p class="font-18">사랑하는 반려동물과 함께 떠나는 여행! 무엇을 준비해야 할까요?</p>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="about-box wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s" style="width: 70%; margin: 0 auto;">
								<img src="${ pageContext.servletContext.contextPath }/resources/media/img/travelInfo.jpg">
							</div>
						</div>
						<div class="col-md-12" style="margin-top: 25px;">
							<ul class="info">
								<li>
									<h4><span>01</span> 목줄 	&amp; 하네스</h4>
									<p>반려동물에게 여행이란 산책과도 비슷한 거죠. 여행 시에 반려동물을 잃어버릴 수 있으니 목줄 &amp; 하네스를 꼭꼭 착용해야 합니다.</p>
								</li>
								<li>
									<h4><span>02</span> 이동가방 &amp; 카시트</h4>
									<p>장시간 이동을 해야 하는 경우에 반려동물들은 생각보다 많은 스트레스를 받습니다. 이동거리를 편안하게 해주기 위한 이동장 &amp; 카시트와 함께라면 반려동물의
										스트레스도 줄어들지 않을까요.</p>
								</li>
								<li>
									<h4><span>03</span> 전용그릇 &amp; 물병</h4>
									<p>여행은 맛있는 걸 듬뿍 먹기 위해 떠나는 거죠! 여행 가서 반려동물들도 맛있는 밥을 먹기 위한 전용 밥그릇을 챙겨야 합니다. 낯선 환경에서 잘 먹지
										않을수도 있기
										때문에 집에서 사용하던 전용 그릇으로 사료를 급여한다면 반려동물에겐 안심이 될 수 있습니다.
									</p>
								</li>
								<li>
									<h4><span>04</span> 배변봉투</h4>
									<p>반려동물과 외출 시에 꼭 챙겨야 하는 펫티켓! 바로 배변봉투입니다. 가까운 거리를 가든, 먼 거리를 가든 배변봉투는 필수템 입니다.
									</p>
								</li>
								<li>
									<h4 style="color: #3EB595;">해외여행 시 필수 항목 체크
									</h4>
									<p>
										<a
											href="http://www.qia.go.kr/livestock/qua/livestock_dogcat_quar_con.jsp">농림축산검역본부</a>
									</p>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</section>
			<!-- /여행정보 -->
	
			<!-- 음식정보 -->
			<section id="FoodInfo" class="info-sec bg-light">
				<div class="container">
					<div class="text-center pb">
						<h3 class="underline-magical"><span class="underline--magical"> 반려동물에게 좋은 음식</span></h3>
						<p class="font-18">사람보다 나이를 빠르게 먹는 반려동물 어떤 음식을 급여하면 좋을까요?</p>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="about-box wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s" style="width: 70%; margin: 0 auto;">
								<img src="${ pageContext.servletContext.contextPath }/resources/media/img/can-dogs-eat-broccoli.jpg">
							</div>
						</div>
						<div class="col-md-12" style="margin-top: 25px;">
							<ul class="info">
								<li>
									<h4><span>01</span> 브로콜리 &amp; 단호박</h4>
									<p>브로콜리에는 다양한 비타민이 들어있고 식이섬유가 풍부하여 변비가 있는 반려견에게 좋습니다</p>
									<p>단호박은 섬유질이 많이 들어있어서 체중 조절이 필요한 아이들에게 도움이 될 수 있습니다. </p>
								</li>
								<li>
									<h4><span>02</span> 아스파라거스</h4>
									<p>아스파라긴산을 많이 함유하고 있는 아스파라거스는 자양강장이나 체력 회복에 효과가 있다고 합니다. 세포와 에너지를 만드는 데 도움을 주는 비타민과 미네랄이
										풍부한 아스파라거스는 살짝 데친 후 다져서 사료에 섞어주거나 간식으로 통으로 급여해도 좋습니다. 아스파라거스에는 아스파라긴산, 루틴, 칼륨, 엽산,
										비타민B, C, E 등 많은 영양소가 들어있는데요. 이것은 세포를 보호하고 암 예방을 도와주며, 면역력 유지를 기대할 수 있습니다.</p>
								</li>
								<li>
									<h4><span>03</span> 닭가슴살 </h4>
									<p>근육량이 저하되는 경향이 있는 노견에게는 양질의 단백질이 필요합니다. 닭가슴살은 양질의 단백질과 아미노산이 풍부하며, 뇌 건강에도 좋고 근육 발달에
										도움을 준다고 합니다. 또, 비교적 적은 칼로리로 체중조절이 필요한 아이들에겐 좋은 음식입니다.
									</p>
								</li>
								<li>
									<h4><span>04</span> 양배추</h4>
									<p>식이섬유와 비타민, 칼슘이 풍부한 양배추는 항산화 효과도 뛰어나 슈퍼푸드로 불리기도 합니다. 위장 건강에 좋은 음식으로 널리 알려져 있는 양배추는
										식분증을 가지고 있는 아이들에게 좋은 음식입니다. 오랜 시간 가열을 하면 비타민C가 파괴되므로 살짝 데치거나 날것을 급여하는 것이 좋습니다.
									</p>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</section>
			<!-- /음식정보 -->
	
			<!-- 헤어볼 -->
			<section id="HairBall" class="info-sec bg-white">
				<div class="container">
					<div class="text-center pb">
						<h3 class="underline-magical"><span class="underline--magical"> 고양이 구토의 원인, 헤어볼</span></h3>
						<p class="font-18">고양이 구토의 원인 헤어볼이란?</p>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="about-box wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s" style="width: 70%; margin: 0 auto;">
								<img src="${ pageContext.servletContext.contextPath }/resources/media/img/cat-with-ball.jpg">
							</div>
						</div>
						<div class="col-md-12" style="margin-top: 25px;">
							<ul class="info">
								<li>
									<h4><span>01</span> 정기적인 빗질</h4>
									<p>빗질을 통해 고양이의 죽은 털을 제거해 주면 고양이가 그루밍을 하면서 털을 먹는 일이 눈에 띄게 줄어든다고 합니다. 또한 빗질을 통하여 고양이의
										혈액순환을 도와줄 수 있는 일석이조입니다.</p>
								</li>
								<li>
									<h4><span>02</span> 헤어볼 방지 영영제 &amp; 사료</h4>
									<p>헤어볼 방지용 영양제와 사료는 털 빠짐을 줄여줄 뿐만 아니라 헤어볼이 소화되어 배출될 수 있도록 도와줍니다. 단, 꾸준히 급여를 해야 효과를 볼 수
										있으니 주의하세요!</p>
								</li>
								<li>
									<h4><span>03</span> 신선한 물 급여하기
									</h4>
									<p>수분 섭취를 충분히 하도록 유도해야 합니다. 체내에 수분이 부족하다면 헤어볼 문제로 인하여 심각한 문제가 발생할 수 있기 때문입니다. 물을 잘 마시지
										않는 고양이 라면 습식사료와 파우치 간식을 통하여 수분을 보충해 주세요!
									</p>
								</li>
								<li>
									<h4><span>04</span> 캣그라스 급여
									</h4>
									<p>
									</p>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</section>
			<!-- /헤어볼 -->
	
			<!-- 코 상태 -->
			<section id="NoseInfo" class="info-sec bg-light">
				<div class="container">
					<div class="text-center pb">
						<h3 class="underline-magical"><span class="underline--magical"> 반려동물의 올바른 코 상태</span></h3>
						<p class="font-18">최상의 상태는 무엇일까? 반려동물의 코</p>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="about-box wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s" style="width: 70%; margin: 0 auto;">
								<img src="${ pageContext.servletContext.contextPath }/resources/media/img/info04.jpg">
							</div>
						</div>
						<div class="col-md-12" style="margin-top: 25px;">
							<ul class="info">
								<li>
									<h4><span>01</span> 반려동물의 올바른 코 상태</h4>
									<p>최상의 상태는 무엇일까? 반려동물의 코</p>
								</li>
								<li>
									<h4><span>02</span> 강아지의 코</h4>
									<p>강아지의 콧구멍 속에는 촉촉한 점막이 있고, 코가 항상 촉촉한 이유는 냄새를 예민하게 맡는 것과 연관되어 있습니다.
										콧구멍 속에서 점막을 분비하여 항상 촉촉한 상태를 유지시켜줍니다.
										강아지가 코를 핥는 이유도 촉촉함을 유지하기 위한 행동으로 냄새의 입자가 점막에 잘 붙어있도록 하는 것입니다.
										강아지는 땀샘이 크게 발달되어 있지 않기 때문에 체열조절에 어려움이 있습니다.
										그나마 땀샘이 발달되어 있는 곳은 발바닥과 콧등입니다. 강아지의 코가 건조하거나 말라있다면 건강 체크를 한번
										해보아야 하는데요. 원인은 여러 가지입니다.
	
										①겨울철 실내 난방  ②알레르기 반응  ③여름철 탈수 증상
										하지만 사람마다 체질이 다르듯 강아지도 체질이 달라서 코의 촉촉함도 편차가 있으니 꼭 건강이 나쁜 것 만은 아닙니다. 평상시 아이의 상태를 세밀히
										관찰하는 습관이 필요합니다.</p>
								</li>
								<li>
									<h4><span>03</span> 고양이의 코</h4>
									<p>고양이의 코는 매우 민감한 신체 부위이자 다양한 역할을 하고 있습니다. 후각은 사람의 10만 배나 높으며 발정기 때에는 페로몬을 감지하는 역할도 합니다.
										고양이 코는 촉촉한 것이 제일 좋습니다. 건조하거나 콧물을 흘린다면 질병을 의심할 수 있고 치료가 필요할 수 있습니다. 증상에 따라 질병도 달라집니다.
										또한, 나이를 많이 먹으면 코가 건조할 수 있으니 이 경우 질병이 아닌 노화 때문이라고 보시는 것이 좋습니다. 코에 이상이 생기면
										식욕 부진으로 이어지고 이로 인해 체력과 면역력이 저하될 수 있으니 평상시와 다른 코 상태를 보여준다면 병원에 가서 수의사와 상담하시는 것이 좋습니다.
									</p>
								</li>
								<li>
									<h4><span>04</span> 캣그라스 급여
									</h4>
									<p>
									</p>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</section>
			<!-- /코 상태 -->
	
			<!-- 초코렛 -->
			<section id="ChocoInfo" class="info-sec bg-white">
				<div class="container">
					<div class="text-center pb">
						<h3 class="underline-magical"><span class="underline--magical"> 반려동물에게 초콜렛이란</span></h3>
						<p class="font-18">미리 알아두면 좋은 상식 반려동물에게 초콜릿이란?</p>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="about-box wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s" style="width: 70%; margin: 0 auto;">
								<img src="${ pageContext.servletContext.contextPath }/resources/media/img/chocolate.jpg">
							</div>
						</div>
						<div class="col-md-12" style="margin-top: 25px;">
							<ul class="info">
								<li>
									<h4><span>01</span> 삼킨 초콜릿의 종류, 양 파악</h4>
									<p>반려동물이 어떠한 종류의 초콜릿과 얼마큼의 양을 삼켰는지 파악한 후 수의사에게 알린 뒤 처치법을 안내받아 실행합니다.
									</p>
								</li>
								<li>
									<h4><span>02</span> 빠르게 병원으로 이동
									</h4>
									<p>소량의 초콜릿을 먹었다면 설사, 배탈 정도로 끝나는 경우가 있지만 반려동물마다 반응이 다를 수 있기 때문에 빠르게 병원으로 가는 것이 제일 좋은
										방법입니다.
									</p>
								</li>
								<li>
									<h4><span>03</span> 구토시키기
									</h4>
									<p>반려동물을 억지로 구토 시키기 위해서는 과산화수소를 사용합니다. 구토를 하여 초콜릿을 뱉어내게 합니다.
										(반드시 수의사와 함께 하세요.) 구토를 한 뒤에도 20시간 이상 관찰을 하여 이상 증상이 없는지 확인을 해야 합니다.
									</p>
								</li>
								<li>
									<h4><span>04</span> 미리 예방하기</h4>
									<p>반려동물에게 초콜릿은 독과 같은 존재이니 미리 예방하는 것이 좋습니다.
										초콜릿을 먹을 땐 뒤처리를 반드시 하고 뒤처리를 할 땐 반려동물이 닿지 않는 곳에 하는 것이 제일 좋습니다.
									</p>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</section>
			<!-- /초코렛 -->
	
			<!-- adoption -->
			<section id="AdoptionInfo" class="info-sec bg-light">
				<div class="container">
					<div class="text-center pb">
						<h3 class="underline-magical"><span class="underline--magical"> 사지말고 입양하세요</span></h3>
						<p class="font-18">유기견 입양 시 주의사항을 알아볼까요?</p>
						<p>입양하기 전, 한 번 더 생각해주세요.유기견 입양 시 주의사항을 알아볼까요?유기견 입양</p>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="about-box wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s" style="width: 70%; margin: 0 auto;">
								<img src="${ pageContext.servletContext.contextPath }/resources/media/img/adoption.jpg">
							</div>
						</div>
						<div class="col-md-12" style="margin-top: 25px;">
							<ul class="info">
								<li>
									<h4><span>01</span> 충분한 시간 주기</h4>
									<p>반려동물이 어떠한 종류의 초콜릿과 얼마큼의 양을 삼켰는지 파악한 후 수의사에게 알린 뒤 처치법을 안내받아 실행합니다.
									</p>
								</li>
								<li>
									<h4><span>02</span>산책과 훈련은 천천히</h4>
									<p>갑자기 변화된 환경에서 산책과 훈련은 오히려 독이 될 수 있습니다. 최소한 한 달간은 충분한 휴식과 적응 기간을 가지고 산책과 훈련은 천천히 시작해
										주세요!
									</p>
								</li>
								<li>
									<h4><span>03</span> 입양 후 건강 책임지기
									</h4>
									<p>입양 후 나의 가족이 되는 강아지의 건강을 책임져야 합니다. 강아지도 사람과 마찬가지로 몸이 아플 수 있으며, 다칠 수도 있습니다.
									</p>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</section>
			<!-- /초코렛 -->
			
		</div>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>