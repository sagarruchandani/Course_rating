package course_rating

class CourseController {
  
	
    def index() { }

	def showAll = {
		
		[allCourse:Courses.findAll()]
		
	}
	def soft = {
		
		def soft_data = Ratings.findAllByCategory('Software')
		// find all for now. we need to add categoty column in ratings table
		println soft_data
		
		// logic: Average = total rating / number of people 
		// send 5 arrays each containing 6 elements: subject, number of people with rating 1,2,3,4,5 and average rating
		
		/*
		 select course_id,round(sum(rating)/count(rating)) as rate, count(student_id) as counter from ratings where course_id in (select course_id from ratings)
group by course_id order by rate desc,counter desc limit 5; 
		 
		*/
		def graph2 = Ratings.executeQuery("select course_id,round(sum(rating)/count(rating)) as rate, count(student_id) as counter"+
			" from Ratings as r where r.course_id in :cours "+
"group by r.course_id order by rate desc,counter desc limit 5",[cours: soft_data.course_id], [max: 5])
		
		def top_courses=[]
		println graph2
	def i=2
		graph2.each {
			obj ->
			//println obj
			
			obj.each{
				ob ->
				i+=1
				if(i%3==0)
					{
						println ob
						top_courses += ob
					}
					else {
						//println "not required"
					}
			
				}
			}
		println top_courses
		
		def graph3 = Ratings.executeQuery("select course_id,rating,count(student_id) as coun from Ratings as r"
			+" where r.course_id in :sele group by r.course_id,r.rating",[sele: top_courses])
		
//		println graph2

		println graph3		
		def j=0
		top_courses.each{
			
			println top_courses
			graph3.each {
				ob->
				
				if (ob==top_courses)
				{
					
					
				}
			
			}
		}
		
		[software:Courses.findAll("from Courses as b where b.category=:category", [category: 'Software'])]
		
	}
	def comp = {
		
		[computer:Courses.findAll("from Courses as b where b.category=:category", [category: 'Computer'])]
		
	}
	def selected = {
	
		def scatter_data = Ratings.findAllByCourse_id(params.id)
		def x=[]
		scatter_data.each{
		obj->
			x= x + [[obj.dateCreated , obj.rating]]
			}
		println x
		//println d2
		
		[select:Courses.findByCourse_id(params.id),ratings:Ratings.findAllByCourse_id(params.id),scatter_data:x]
		}
	
	def rate = {
	    	
		
	}
	def graph ={
		def soft_data = Ratings.findAllByCategory('Software')
		// find all for now. we need to add categoty column in ratings table
		println soft_data
		
		
		def graph2 = Ratings.executeQuery("select course_id,round(sum(rating)/count(rating)) as rate "+
			" from Ratings as r where r.course_id in :cours "+
"group by r.course_id order by rate desc desc limit 5",[cours: soft_data.course_id], [max: 5])
		
		[softdata:graph2]	
				
	}
	
	def e_learn = {
		
	}
	
	}
