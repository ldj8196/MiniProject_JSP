<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    <div class="my-page">
                <div class="or-table">
                    
                    <div class="ot">
                            <table class="table table-hover">
                                <thead class="ot1">
                                <tr>
                                    <th scope="col">주문번호</th>
                                    <th scope="col">견적번호</th>
                                    <th scope="col">출발항</th>
                                    <th scope="col">도착항</th>
                                    <th scope="col">출발일</th>
                                    <th scope="col">도착일</th>
                                    <th scope="col">총부담액</th>			
                                </tr>
                                </thead>
                            <tbody class="ot1">
                                <c:forEach var="obj" items="${aa}" >
                                <tr>
                                    <td scope="row">333</td>
                                    <td>333</td>
                                    <td>${obj.departureport}</td>
                                    <td>333</td>
                                    <td>333</td>
                                    <td>333</td>
                                    <td>333</td>            
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

