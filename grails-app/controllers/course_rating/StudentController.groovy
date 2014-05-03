package course_rating

class StudentController {

    def index() {
		redirect(uri:'/')
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
	
	def profile ={
		def s = Student.findByUsername(session?.student.username);
		
		
		if(s){
			
			[student:s]
			//render(uri:'/profile')
		
		}
					
	}
	
	def addCourses ={
		
		def c = Courses.findAll();
		[Courses:c]
	}
	
	def addCoursesToProfile= {
		def s = Student.findByUsername(session?.student.username)
		s.course1 = params.course_id;
		}
	
	
	def preRecommender = {
		
		def s = Student.findByUsername(session?.student.username)
		
		def listed = [s.course1,s.course2,s.course3,s.course4,s.course5,s.course6,s.course7,s.course8,s.course9,s.course10]
		
		def co = Courses.findAll();
		
		listed.eachWithIndex { obj, i ->
			if (obj==null) listed=listed-obj
		}
		println listed
		println listed.size()
		[listed:listed,cours:co]			
	}
	
	def recommend = {
		
		def x = params
		// loop and get individual rating and course_id
		println params.rating
		println params.course_id
		println x
		params.rating.eachWithIndex { obj, i ->
			println obj
		}
		params.course_id.eachWithIndex { obj, i ->
			println obj
		}
		
		
		File infile= new File("data/courserate.csv");
		BufferedReader br2 = new BufferedReader(new FileReader(infile));
		
		//////////
		/*MysqlDataSource dataSource = new MysqlDataSource();
		dataSource.setServerName("my_database_host");
		dataSource.setUser("my_user");
		dataSource.setPassword("my_password");
		dataSource.setDatabaseName("my_database_name");
		
		JDBCDataModel dataModel = new MySQLJDBCDataModel(
			dataSource, "my_prefs_table", "my_user_column",
			"my_item_column", "my_pref_value_column", "my_timestamp_column");
		*/
		////////
		
	}
	
	
}
