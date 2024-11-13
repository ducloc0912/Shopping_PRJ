<%-- 
    Document   : managerOrder
    Created on : Mar 17, 2024, 7:34:36 PM
    Author     : chi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Manager Order</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="icon" type="image/png" href="images/icons/favicon.ico" />

        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">

        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">

        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">

        <link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">

        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">

        <meta name="robots" content="noindex, follow">
    </head>
    <body class="container-fluid">
        <a type="button" class="btn btn-primary" href="HomeController" style="margin-bottom: 3rem; margin-left: 10rem; margin-top: 2rem;">Back to Home</a>
        <a type="button" href="Revenue" class="btn btn-success" style="margin-bottom: 3rem; margin-left: 10rem; margin-top: 2rem;">Revenue</a>
        <div class="limiter">
            <div class="">
                <div class="">
                    <div class="table">
                        <div class="row header">
                            <div class="cell">
                                ID
                            </div>
                            <div class="cell">
                                Customer
                            </div>
                            <div class="cell">
                                Total
                            </div>
                            <div class="cell">
                                Order Date
                            </div>
                            <div class="cell">
                                Notes
                            </div>
                            <div class="cell">
                                Status
                            </div>
                            <div class="cell">
                                Confirm
                            </div>
                        </div>
                        <c:forEach var="o" items="${orders}">
                            <div class="row">
                                <div class="cell" data-title="ID">
                                    ${o.id}
                                </div>
                                <div class="cell" data-title="Customer">
                                    ${o.user.userId}
                                </div>
                                <div class="cell" data-title="Total">
                                    ${o.total}
                                </div>
                                <div class="cell" data-title="Order Date">
                                    ${o.orderDate}
                                </div>
                                <div class="cell" data-title="Notes">
                                    ${o.notes}
                                </div>
                                <div class="cell" data-title="Status">
                                    <c:if test="${o.status eq 'PENDING'}">
                                        <button type="button" class="btn btn-primary">Pending</button>
                                    </c:if>
                                    <c:if test="${o.status eq 'SHIPPING'}">
                                        <button type="button" class="btn btn-warning">Shipping</button>
                                    </c:if>
                                    <c:if test="${o.status eq 'CLOSE'}">
                                        <button type="button" class="btn btn-secondary">Close</button>
                                    </c:if>
                                </div>

                                <div class="cell" data-title="Confirm">
                                    <c:if test="${o.status eq 'PENDING'}">
                                        <a href="UpdateStatusOrder?id=${o.id}&status=SHIPPING" type="button" class="btn btn-warning">Shipping</a>
                                    </c:if>
                                    <c:if test="${o.status eq 'SHIPPING'}">
                                        <a href="UpdateStatusOrder?id=${o.id}&status=CLOSE" type="button" class="btn btn-secondary">Close</a>
                                    </c:if>  
                                        <c:if test="${o.status eq 'CLOSE'}">
                                            <button disabled="" type="button" class="btn btn-success">Done</button>
                                    </c:if> 
                                </div>
                            </div>
                        </c:forEach>


                    </div>
                </div>
            </div>
        </div>

        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>

        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

        <script src="vendor/select2/select2.min.js"></script>

        <script src="js/main.js"></script>

        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>

        <script defer src="https://static.cloudflareinsights.com/beacon.min.js/v84a3a4012de94ce1a686ba8c167c359c1696973893317" integrity="sha512-euoFGowhlaLqXsPWQ48qSkBSCFs3DPRyiwVu3FjR96cMPx+Fr+gpWRhIafcHwqwCqWS42RZhIudOvEI+Ckf6MA==" data-cf-beacon='{"rayId":"865d03d09bf085f8","b":1,"version":"2024.2.4","token":"cd0b4b3a733644fc843ef0b185f98241"}' crossorigin="anonymous"></script>
    </body>
</html>
