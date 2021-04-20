<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

	<!-- footer -->
        <footer id="footer" class="footer-fixed">
            <div class="container">
                <div class="footer-details">
                    <div class="footer-logo">
                        <a href="index.html"><span class="footer-logo">개편한세상</span></a>
                    </div>
                    <h5 class="footer-heading">개편한 세상은 개편한 세상을 위해 노력합니다.</h5>
                    <p>PetHospital - All rights reserved @2021 - Developed By <a href="#">개편한세상</a></p>
                </div>
                <div class="col-sm-12 copy-right">
                    <ul class="text-center foot-info">
                        <li><a href="${ pageContext.servletContext.contextPath }/terms/termsList1">회원약관<span>|</span></a></li>
                        <li><a href="${ pageContext.servletContext.contextPath }/terms/termsList2">개인정보처리방침<span>|</span></a></li>
                        <li><a href="${ pageContext.servletContext.contextPath }/terms/termsList3">환자의 권리와의무</a></li>
                        <li><select id="inputState" class="form-control">
                                <option selected>패밀리사이트</option>
                                <option>개편한호텔</option>
                            </select>
                        </li>
                    </ul>
                </div>
            </div>
        </footer>
        <!-- /footer -->

	<!-- Dependency Scripts -->


</html>