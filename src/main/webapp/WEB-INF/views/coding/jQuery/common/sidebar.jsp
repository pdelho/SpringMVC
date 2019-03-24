		<div class="col-lg-3 mb-4">
                <div class="list-group">
                	<a href="<spring:url value ="/coding/jQuery"/>" class="list-group-item<%=request.getRequestURI().endsWith("/coding/jQuery.jsp") ? " active " : " " %>">jQeery Index</a>
                    <a href="<spring:url value ="/jQuery/1"/>" class="list-group-item<%=request.getRequestURI().endsWith("/jQuery/1.jsp") ? " active " : " " %>">hide() and show()</a>
                    <a href="<spring:url value ="/jQuery/2"/>" class="list-group-item<%=request.getRequestURI().endsWith("/jQuery/2.jsp") ? " active " : " " %>">fadeToggle()</a>
                    <a href="<spring:url value ="/jQuery/3"/>" class="list-group-item<%=request.getRequestURI().endsWith("/jQuery/3.jsp") ? " active " : " " %>">slideToggle()</a>
                    <a href="<spring:url value ="/jQuery/4"/>" class="list-group-item<%=request.getRequestURI().endsWith("/jQuery/4.jsp") ? " active " : " " %>">animate()</a>
                    <a href="<spring:url value ="/jQuery/5"/>" class="list-group-item<%=request.getRequestURI().endsWith("/jQuery/5.jsp") ? " active " : " " %>">stop()</a>
                    <a href="<spring:url value ="/jQuery/6"/>" class="list-group-item<%=request.getRequestURI().endsWith("/jQuery/6.jsp") ? " active " : " " %>">callback</a>
                    <a href="<spring:url value ="/jQuery/7"/>" class="list-group-item<%=request.getRequestURI().endsWith("/jQuery/7.jsp") ? " active " : " " %>">chaining</a>
                </div>
        </div>