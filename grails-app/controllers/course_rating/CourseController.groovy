package course_rating

class CourseController {

    def index() { }

	def showAll = {
		
		[allCourse:Courses.findAll()]
		
		}
	
	
	def selected = {
		[select:Courses.findByCourse_id(params.id),ratings:Ratings.findAllByCourse_id(params.id)]
		}
	
	def rate = {
	    	
		
	}
	
	}
