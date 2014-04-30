package course_rating

class Student {

	String username
	String password
	String confirm
	String email
	String mobile
	Integer student_id
	String course1
	String course2
	String course3
	String course4
	String course5
	String course6
	String course7
	String course8
	String course9
	String course10
	String course11
	String course12
	
	Integer id
	/*static transients = ['student_id']
	void setStudent_id(Integer nid) {
		id = student_id
	}
	Integer getStudent_id() {
		return student_id
	}*/
	//static hasMany = [courses: Courses]
	//static mappedBy = [courses: "Title"]
	
	static mapping = {
		version false
		//id false
		//id generator:'assigned', column:'Student_id', type:'integer'
		id name: 'id'
	}
    static constraints = {
		username unique:true
		password nullable: true
		email nullable: true
		mobile nullable: true
		course1 nullable: true
		course2 nullable: true
		course3 nullable: true
		course4 nullable: true
		course5 nullable: true
		course6 nullable: true
		course7 nullable: true
		course8 nullable: true
		course9 nullable: true
		course10 nullable: true
		course11 nullable: true
		course12 nullable: true
		student_id nullable: true
		}
}
