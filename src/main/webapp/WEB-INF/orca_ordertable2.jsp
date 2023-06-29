<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

    <div class="my-page">
                <div class="or-table">
                    
                    <div class="ot">
                            <table class="table table-hover">
                                <thead class="ot1">
                                <tr>
                                    <th scope="col">견적번호</th>
                                    <th scope="col">부담금액</th>
                                    <th scope="col">항만시설사용료</th>
                                    <th scope="col">화물번호</th>
                                    <th scope="col">운행시퀀스</th>
                                    <th scope="col">진행상태</th>			
                                </tr>
                                </thead>
                            <tbody class="ot1">
                                <c:forEach var="obj" items="${obj}" >
                                <tr>
                                    <td scope="row">${obj.estimateno}</td>
                                    <td scope="row">${obj.totalfare}</td>
                                    <td scope="row">${obj.portfacfare}</td>
                                    <td scope="row">${obj.cargonumber}</td>
                                    <td scope="row">${obj.schedule_no}</td>
                                    <td scope="row">${obj.state}</td>
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
