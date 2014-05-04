package course_rating

class Ratings {

	String course_id
	Integer Course_id2
	Integer student_id
	Integer rating
	String comments
	Date dateCreated
	static mapping = {
		version false
		//id false
		//id generator:'assigned', column:'Student_id', type:'integer'
		id name: 'id'
	}
    static constraints = {
    }
}
