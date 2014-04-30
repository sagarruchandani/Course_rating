package course_rating

class StudentController {

    def index() {
		
	}
	
	def login = {
		//validate student login
		println params.username
		def s = Student.findByUsername(params.username)
		if (s) {
			// username and password match -> log in
			session.student = s
			redirect(uri:'/')
			//redirect(controller:'main')
		} else {
		
			render (view : "login")
			
		}
	}
	def register = {
		// nothing here. just redirect to registration page
	}
	def new_student = {
		// after submit button on registration page create new student profile
		// create domain object and assign parameters using data binding
		def s = new Student(username:params.username,email:params.email,password:params.password,confirm:params.confirm
		,student_id:null,course1:null,course2:null,course3:null,course4:null,course5:null,course6:null
		,course7:null,course8:null,course9:null,course10:null,course11:null,course12:null,mobile:null)
		
		s.save(flush:true)
		println params
		if (! s.save()) {
			println "Not saved"
			redirect(action:'register')
			// validation failed, render registration page again
			//return [student:s]
		} else {
			// validate/save ok, store user in session, redirect to homepage
		
			session.student = s
			redirect(uri:'/')
		}
	}
	def logout = {
		session.invalidate()
		//render (view : "index")
		redirect(uri:'/')
		}
	
	def all_courses ={
	
		[allCourse:Courses.findAll()]	
		
	}
	def software ={
		
			[allCourse:Courses.findByCourse_id('software')]
			
		}
}
