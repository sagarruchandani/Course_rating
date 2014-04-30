<html>

<div> 
	<g:form url="[controller:'course',action:'selected']">
	
	
		
	<g:each in="${select}" var="item">
			   ${item.course_id}:${item.title}
            <br>   
     Description: ${item.description}          
    </g:each>              
   <br>    
   
   
    <g:each in="${ratings}" var="item">

            <br>   
     Name: ${item.student_id}    <br>      
     Comments: ${item.comments}   <br>       
     Rating: ${item.rating}        <br>  
     posted at: <g:formatDate date="${item.dateCreated }"/>
   <br>
    </g:each>   
             
     </g:form>
</div>

</html>