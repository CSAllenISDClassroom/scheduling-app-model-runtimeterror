import Vapor
import Fluent

class Course: Codable {

    public var id: String?
    public var description: String
    public var shortDescription: String
    public var longDescription: String?
    public var semester: Int
    public var locationName: String
    public var creditsLow: Double?
    public var creditsHigh: Double?
    public var gradesLow: Int?
    public var gradesHigh: Int?
    public var isApplication: Bool
    public var courseLevel: String?
    public var applicationCode: String?
    //public var periodsAvailable: [[Int]]
    
    public init(courseData:CourseData){
        func getCourseLevel(courseData: CourseData) -> String? {
            if(courseData.isOnLevel) {
                return "isOnLevel"
            } else if(courseData.isPreAP) {
                return "isPreAP"
            } else if(courseData.isDualCredit) {
                return "isDualCredit"
            } else if(courseData.isAP) {
                return "isAP"
            } else if(courseData.isIB) {
                return "isIB"
            } else {
                return nil
            }
        }
        

        func sRemover(courseData: CourseData) -> Int {
            return courseData.semester == "S1" ? 1 : 2
        }
        self.id = courseData.id
        self.description = courseData.description
        self.shortDescription = courseData.shortDescription
        self.longDescription = courseData.longDescription
        self.semester = sRemover(courseData:courseData) 
        //courseData.semester // do magic to remove the S TODO
        self.locationName = courseData.locationName
        self.creditsLow = courseData.creditsLow
        self.creditsHigh = courseData.creditsHigh
        self.gradesLow = courseData.gradesLow
        self.gradesHigh = courseData.gradesHigh
        self.isApplication = courseData.isApplication
        self.courseLevel = getCourseLevel(courseData: courseData)
        self.applicationCode = courseData.applicationCode
    }

}
