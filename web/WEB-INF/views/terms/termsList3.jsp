<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환자의권리 페이지</title>
</head>
<body id="home-version-1" class="home-version-1 sticky-header transparent-header menu-two" data-style="default">
	
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	
		<div id="main_content">
		
			<!-- title -->
        <section class="step-title">
            <div class="section-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
                <h2>환자의 권리</h2>
            </div>
        </section>

        <!-- 환자의권리 페이지 -->
        <section id="accordion-wrapper" class="accordion-sec">
            <div class="container">
                    <div class="col-md-12">
                        <div class="choose wow fadeInUp" data-wow-delay="0.5s">
                            <div class="panel-group" id="accordion">
                                <div class="panel panel-default panel-active">
                                    <div class="panel-heading">
                                        <div class="panel-title"><a data-toggle="collapse" class="panel-toggle active" data-parent="#accordion" href="#collapseOne">진료받을 권리</a></div>
                                    </div>
                                    <div id="collapseOne" class="panel-collapse collapse in">
                                        <div class="panel-body"> 환자는 자신의 건강보호와 증진을 위하여 보건의료서비스를 받을 권리를 갖고, 성별·나이·종교·신분·국적·언어·인종 및 신체적, 정신적, 경제적 사정 등을 이유로 차별 받거나 건강에 관한 권리를 침해 받지 아니하며, 의료진은 정당한 사유 없이 진료를 거부할 수 없습니다. </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <div class="panel-title"><a data-toggle="collapse" class="panel-toggle" data-parent="#accordion" href="#collapseTwo">알 권리 및 자기결정권</a></div>
                                    </div>
                                    <div id="collapseTwo" class="panel-collapse collapse">
                                        <div class="panel-body">환자는 의료진 등으로부터 담당의료진의 전문분야, 질병상태, 치료목적, 치료계획, 치료방법, 치료예상결과 및 부작용, 퇴원계획, 진료비용, 의학적 연구대상 여부, 장기이식 및 기증 여부 등에 관하여 충분한 설명을 듣고 자세히 물어볼 수 있으며 이에 관한 동의 여부를 결정할 권리가 있습니다. 윤리적인 범위 내에서 특정치료 및 계획된 진료가 시작된 이후 이를 중단하거나 거절 할 수 있고 대안적 진료에 대한 설명을 듣고 결정할 수 있습니다.</div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <div class="panel-title"><a data-toggle="collapse" class="panel-toggle" data-parent="#accordion" href="#collapseThree">비밀을 보호받을 권리</a></div>
                                    </div>
                                    <div id="collapseThree" class="panel-collapse collapse">
                                        <div class="panel-body"> 환자는 진료와 관련된 신체상, 건강상의 비밀과 사생활의 비밀을 침해 받지 아니하며, 의료진과 의료기관은 환자의 동의를 받거나 범죄 수사 등 법률에서 정한 경우 외에는 개인정보 공개를 포함하여 비밀을 누설, 발표할 수 없습니다. </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <div class="panel-title"><a data-toggle="collapse" class="panel-toggle" data-parent="#accordion" href="#collapseTwo">상담 및 조정을 신청할 권리</a></div>
                                    </div>
                                    <div id="collapseTwo" class="panel-collapse collapse">
                                        <div class="panel-body"> 환자는 의료서비스 관련 분쟁이 발생한 경우, 내부기관 또는 외부기관(한국소비자원, 한국의료분쟁조정중재원 등)에 상담 및 조정을 신청할 수 있습니다. </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <div class="panel-title"><a data-toggle="collapse" class="panel-toggle" data-parent="#accordion" href="#collapseTwo">가치관이나 신념을 존중 받을 권리</a></div>
                                    </div>
                                    <div id="collapseTwo" class="panel-collapse collapse">
                                        <div class="panel-body"> 환자는 문화적, 종교적 가치관이나 신념 등의 이유로 차별 받거나 권리를 침해 받지 않습니다.</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.choose -->
                    </div>
                    <!-- /.col-md-6 -->
            </div>
            <!-- /.container -->

        </section>
		</div>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>