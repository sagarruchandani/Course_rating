package course_rating

class Ratings {

	String course_id
	Integer course
	Integer student_id
	Integer rating
	String category
	String comments
	Date dateCreated
	static mapping = {
		version false
		//id false
		//id generator:'assigned', column:'Student_id', type:'integer'
		id name: 'id'
		sort dateCreated:"asc"
	}
    static constraints = {
    }
}
