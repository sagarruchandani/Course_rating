package course_rating

class Courses {

	String Title
	String Description
	String Course_id
	Integer Course_id2
	String Category
	String Sub_type
	static mapping = {
		version false
		//id false
		//id generator:'assigned', column:'Student_id', type:'integer'
		id name: 'id'
	}
	
    static constraints = {
    }
}
