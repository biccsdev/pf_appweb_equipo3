<%-- 
    Document   : index
    Created on : Nov 15, 2024, 11:42:52 AM
    Author     : carlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/style.css"/>
    </head>
    <body>
        <%@ include file="../fragments/Header.jsp" %>
        <div class="content-wrapper">
            <main>
                <c:if test="${not empty posts}">
                    <div class="posts">
                        <c:forEach var="post" items="${posts}">
                            <div class="post">
                                <h2>${post.titulo}</h2>
                                <p>${post.contenido}</p>
                                <a href="detalle.jsp?id=${post.id}">Ver más</a>
                            </div>
                        </c:forEach>
                    </div>
                </c:if>
                <c:if test="${empty posts}">
                    <p>No hay posts disponibles en este momento.</p>
                </c:if>
            </main>
            <aside>
                <a class="create-post" href="./create-post.jsp">
                    <svg
                        fill="#000000"
                        viewBox="0 0 512 512"
                        xmlns="http://www.w3.org/2000/svg"
                        >
                    <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                    <g
                        id="SVGRepo_tracerCarrier"
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        ></g>
                    <g id="SVGRepo_iconCarrier">
                    <title>ionicons-v5-n</title>
                    <path
                        d="M459.94,53.25a16.06,16.06,0,0,0-23.22-.56L424.35,65a8,8,0,0,0,0,11.31l11.34,11.32a8,8,0,0,0,11.34,0l12.06-12C465.19,69.54,465.76,59.62,459.94,53.25Z"
                        ></path>
                    <path
                        d="M399.34,90,218.82,270.2a9,9,0,0,0-2.31,3.93L208.16,299a3.91,3.91,0,0,0,4.86,4.86l24.85-8.35a9,9,0,0,0,3.93-2.31L422,112.66A9,9,0,0,0,422,100L412.05,90A9,9,0,0,0,399.34,90Z"
                        ></path>
                    <path
                        d="M386.34,193.66,264.45,315.79A41.08,41.08,0,0,1,247.58,326l-25.9,8.67a35.92,35.92,0,0,1-44.33-44.33l8.67-25.9a41.08,41.08,0,0,1,10.19-16.87L318.34,125.66A8,8,0,0,0,312.69,112H104a56,56,0,0,0-56,56V408a56,56,0,0,0,56,56H344a56,56,0,0,0,56-56V199.31A8,8,0,0,0,386.34,193.66Z"
                        ></path>
                    </g>
                    </svg>
                    Create new post
                </a>
                <div class="weekly-picks">
                    <h3>This week picks</h3>
                    <a href="">
                        <article>
                            <div class="header">
                                <img src="https://unavatar.io/jack" alt="" />
                                <p>JackFR</p>
                            </div>
                            <h4>
                                Real Madrid just lost 0-1 against Lille. Is this something to
                                wrorry about?
                            </h4>
                        </article>
                    </a>
                    <a href="">
                        <article>
                            <div class="header">
                                <img src="https://unavatar.io/lolman" alt="" />
                                <p>lolman123</p>
                            </div>
                            <h4>
                                Real Madrid just lost 0-1 against Lille. Is this something to
                                wrorry about?
                            </h4>
                        </article>
                    </a>

                    <a href="">
                        <article>
                            <div class="header">
                                <img src="https://unavatar.io/edtarsz" alt="" />
                                <p>edtarsz</p>
                            </div>
                            <h4>
                                Real Madrid just lost 0-1 against Lille. Is this something to
                                wrorry about?
                            </h4>
                        </article>
                    </a>
                </div>
            </aside>
        </div>
    </body>
</html>
