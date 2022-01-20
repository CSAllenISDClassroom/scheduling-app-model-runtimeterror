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
    public var periodsAvailable: [[Int]]
    
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

        //returns an array of an array of integers
        //each inner array contains the period(s) that that class is available
        //for example, [[1], [2], [2, 3], [2, 5]] indicates that that class is available
        //during first period, second period, the double-blocked vertical period 2-3,
        //and the double-blocked horizontal period 2-5
        func availabilityAsPeriods(bitmap:Int) -> [[Int]] {
            var periods = [[Int]]()
            
            //handle all single-period cases (bits 0-10)
            //these bits map directly to the specified period
            for bit in 0 ... 10 {
                if bitmap & (1 << bit) != 0 {
                    let period = bit
                    periods.append([period])
                }
            }

            //handle all vertical double-blocked periods (bits 11-20)
            //these bits map to period pairs, eg. 0-1, 1-2, 2-3, etc.
            for bit in 11 ... 20 {
                if bitmap & (1 << bit) != 0 {
                    let firstPeriod = bit - 11
                    let secondPeriod = firstPeriod + 1
                    periods.append([firstPeriod, secondPeriod])
                }
            }

            //handle all horizontal double-blocked periods (bits 21-23)
            //these bits map to the three horizontally blocked periods (2-5, 3-6, 3-7)
            for bit in 21 ... 23 {
                if bitmap & (1 << bit) != 0  {
                    let firstPeriod = bit - 19
                    let secondPeriod = firstPeriod + 3
                    periods.append([firstPeriod, secondPeriod])
                }
            }
            return periods
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
        self.periodsAvailable = availabilityAsPeriods(bitmap: courseData.availabilityBitMap!) 
        
    }

}
