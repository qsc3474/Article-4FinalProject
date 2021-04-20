<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개편한세상-가격정보</title>

<style>
.nav-tabs>li>a{
    color: #36b2b0;
        }
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>

<section id="service" class="service-sec ">
      <div class="section-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
        <h2>진료이용 금액</h2>
        <p>
          개편한 세상은 투명한 진료 금액정보 공개 하고 있습니다.
        </p>
      </div>
      <div class="row col-md-10 col-md-offset-1">
        <div class="col-md-10 col-md-offset-1 col-lg-8 col-lg-offset-2">
          <ul class="nav nav-tabs nav-tabs-lined nav-tabs-lined-bottom">
            <li class=""><a href="#tab1-1" data-toggle="tab" aria-expanded="false">내과</a></li>
            <li class="active"><a href="#tab1-2" data-toggle="tab" aria-expanded="true">외과</a></li>
            <li><a href="#tab1-3" data-toggle="tab">치과</a></li>
            <li><a href="#tab1-4" data-toggle="tab">안과</a></li>
          </ul>
          <div class="space20"></div>
          <div class="tab-content">
            <div class="tab-pane fade" id="tab1-1">
              <table class="table table-striped table-dark mt">
              <colgroup>
                   <col width="20%">
                   <col width="20%">
                   <col width="40%">
                   <col width="20%">
                </colgroup>
                <thead>
                  <tr>
                    <th scope="col">번호</th>
                    <th scope="col">진료코드</th>
                    <th scope="col">진료과목</th>
                    <th scope="col">진료금액</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>IM-1</td>
                    <td>방광결석 제거 수술</td>
                    <td>550,000원</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>IM-2</td>
                    <td>요도결석 제거 수술</td>
                    <td>500,000원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>IM-3</td>
                    <td>신장 제거 수술</td>
                    <td>1,300,000원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>IM-4</td>
                    <td>쿠싱 검사</td>
                    <td>113,240원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>IM-5</td>
                    <td>갑상선기능저하 </td>
                    <td>110,000원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>IM-6</td>
                    <td>유선종양 제거 수술</td>
                    <td>671,040원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>IM-7</td>
                    <td>백혈병 항원 검사</td>
                    <td>40,871원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>IM-8</td>
                    <td>각막궤양 수술 </td>
                    <td>1,762,500원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>IM-9</td>
                    <td>경계성종양 수술 </td>
                    <td>179,891원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>IM-10</td>
                    <td>자궁축농증 수술</td>
                    <td>499,930원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>IM-11</td>
                    <td>자궁난소적출 수술</td>
                    <td>440,000원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>IM-12</td>
                    <td>뇌종양</td>
                    <td>900,000원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>IM-13</td>
                    <td>심장사상충 키트 검사</td>
                    <td>25,000원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>IM-14</td>
                    <td>심장 PDA 수술 </td>
                    <td>2,000,000원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>IM-15</td>
                    <td>흉부방사선 검사</td>
                    <td>45,000원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>IM-16</td>
                    <td>영상 찰영 검진(MRI, CT)</td>
                    <td>673,000원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>IM-17</td>
                    <td>초음파 검사</td>
                    <td>43,190원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>IM-18</td>
                    <td>분변검사 </td>
                    <td>20,000원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>IM-19</td>
                    <td>CRP염증 검사</td>
                    <td>30,000원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>IM-20</td>
                    <td>만성 구토 설사 검사</td>
                    <td>100,000원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>IM-21</td>
                    <td>혈청 혈액검사</td>
                    <td>100,000원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>IM-21</td>
                    <td>곰팡이 검사(DTM 배지 검사)</td>
                    <td>20,000원</td>
                  </tr>
                  
                  
                </tbody>
              </table>
            </div>
            <!-- /.tab-pane -->
            <div class="tab-pane fade active in" id="tab1-2">
              <table class="table table-striped table-dark mt">
              <colgroup>
                   <col width="20%">
                   <col width="20%">
                   <col width="30%">
                   <col width="30%">
                </colgroup>
                <thead>
                  <tr>
                    <th scope="col">번호</th>
                    <th scope="col">진료코드</th>
                    <th scope="col">진료과목</th>
                    <th scope="col">진료금액</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>GS-1</td>
                    <td>골절</td>
                    <td>1,447,352원</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>GS-2</td>
                    <td>슬개골 탈구</td>
                    <td>821,013 (펫) / 한쪽 500,000(마)</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>GS-3</td>
                    <td>전십자인대 재건술</td>
                    <td>733,894 (펫) / 한쪽 450,000(마)</td>
                  </tr>
                  <tr>
                    <th scope="row">5</th>
                    <td>GS-4</td>
                    <td>종양,암 검진 수술</td>
                    <td>250,000 (마)</td>
                  </tr>
                  <tr>
                    <th scope="row">6</th>
                    <td>GS-5</td>
                    <td>이개혈종</td>
                    <td>300,000(마)</td>
                  </tr>
                  <tr>
                    <th scope="row">7</th>
                    <td>GS-6</td>
                    <td>신장제거수술</td>
                    <td>1300000원</td>
                  </tr>
                  <tr>
                    <th scope="row">1</th>
                    <td>GS-7</td>
                    <td>하마종 제거</td>
                    <td>500,000(마)</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>GS-8</td>
                    <td>위 내시경</td>
                    <td>217,368 (펫)</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>GS-9</td>
                    <td>담낭 수술</td>
                    <td>1,218,461(펫)</td>
                  </tr>
                  <tr>
                    <th scope="row">5</th>
                    <td>GS-10</td>
                    <td>유선종양 제거 수술</td>
                    <td>671,048(펫) / 대형 - 750,000 (마)</td>
                  </tr>
                  <tr>
                    <th scope="row">6</th>
                    <td>GS-11</td>
                    <td>경계성종양수술</td>
                    <td>179,891(펫)</td>
                  </tr>
                  <tr>
                    <th scope="row">7</th>
                    <td>GS-3</td>
                    <td>항문(회음부) 탈장 수술</td>
                    <td>782,222 (펫)</td>
                  </tr>
                  <tr>
                    <th scope="row">7</th>
                    <td>GS-3</td>
                    <td>항문낭 제거 수술</td>
                    <td>295,925(펫)</td>
                  </tr>
                </tbody>
              </table>
            </div>
            <!-- /.tab-pane -->
            <div class="tab-pane fade" id="tab1-3">
              <table class="table table-striped table-dark mt">
              <colgroup>
                   <col width="20%">
                   <col width="20%">
                   <col width="30%">
                   <col width="30%">
                </colgroup>
                <thead>
                  <tr>
                    <th scope="col">번호</th>
                    <th scope="col">진료코드</th>
                    <th scope="col">진료과목</th>
                    <th scope="col">진료금액</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>DT-1</td>
                    <td>발치</td>
                    <td>12,311원</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>DT-2</td>
                    <td>스케일링</td>
                    <td>129,536원</td>
                  </tr>
                </tbody>
              </table>

            </div>
            <!-- /.tab-pane -->
            <div class="tab-pane fade" id="tab1-4">
              <table class="table table-striped table-dark mt">
                <thead>
                  <tr>
                    <th scope="col">번호</th>
                    <th scope="col">진료코드</th>
                    <th scope="col">진료과목</th>
                    <th scope="col">진료금액</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>OPH-1</td>
                    <td>백내장</td>
                    <td>2,250,000원</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>OPH-2</td>
                    <td>녹내장</td>
                    <td>500,000원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>OPH-3</td>
                    <td>결막염</td>
                    <td>15,000원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>OPH-4</td>
                    <td>체리아이</td>
                    <td>260,833원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>OPH-5</td>
                    <td>유루증</td>
                    <td>200,000원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>OPH-6</td>
                    <td>각막궤양</td>
                    <td>525,000원</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>OPH-7</td>
                    <td>안구적출</td>
                    <td>400,000원</td>
                  </tr>
                </tbody>
              </table>
            </div>
            <!-- /.tab-pane -->
          </div>
          <!-- /.tab-content -->
        </div>
        <!-- /column -->
      </div>
    </section>
</body>
</html>