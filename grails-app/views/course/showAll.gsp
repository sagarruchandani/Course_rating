<html>
<g:each in="${allCourse}" var="item">
<div> 
	<g:form url="[controller:'course',action:'selected']">
			   <g:link controller="course" action="selected" id="${item.course_id}" >
				${item.course_id}:${item.title}
                 </g:link>
     </g:form>
</div>
 </g:each>
</html>