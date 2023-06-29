<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    <div class="my-page">
                <div class="or-table">
                    
                    <div class="ot">
                            <table class="table table-hover">
                                <thead class="ot1">
                                <tr>
                                    <th scope="col">화물번호</th>
                                    <th scope="col">화물분류</th>
                                    <th scope="col">화물무게</th>
                                    <th scope="col">아이디</th>
                                    <th scope="col">출발항</th>
                                    <th scope="col">도착항</th>
                                </tr>
                                </thead>
                            <tbody class="ot1">
                                <tr>
                                    <td scope="row">"${sessionScope.cargono}"</td>
                                    <td>"${sessionScope.cargotype}"</td>
                                    <td>"${sessionScope.cargoweight}"</td>
                                    <td>333</td>
                                    <td>333</td>
                                    <td>333</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>