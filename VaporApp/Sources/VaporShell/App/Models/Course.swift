import Vapor
import Fluent

public final class Course: Content {

    public var id: String?
    public var semesterLength: String?
    public var semester: Int
    public var shortDescription: String
    public var description: String?
    public var dualCreditDailySchedule: String?
    public var location: String?
    public var periodBitMap: Int?
    public var availability: [[Int]]
    
    public init(courseData: CourseData) throws {
        /*
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
        */
        self.id = courseData.id
        self.semesterLength = courseData.semesterLength
        self.semester = courseData.semester
        self.shortDescription = courseData.shortDescription
        self.description = courseData.description
        self.dualCreditDailySchedule = courseData.dualCreditDailySchedule
        self.location = courseData.location
        self.periodBitMap = courseData.periodBitMap
        self.availability = Self.availabilityAsPeriods(bitmap: courseData.periodBitMap ?? 0)
    }

    // Returns an array of an array of integers
    // Each inner array contains the period(s) that that class is available
    // For example, [[1], [2], [2, 3]] indicates a class is available
    // during the first period, second period, and a vertically double-blocked 2/3 period
    private static func availabilityAsPeriods(bitmap: Int) -> [[Int]] {
        var periods = [[Int]]()

        // Handle all single-period cases (bits 0 ... 10)
        // These bits map directly to the specified period
        // bit 0 -> period 0, bit 1 -> period 1, etc.
        for bit in 0...10 {
            if(bitmap & (1 << bit) != 0) {
                let period = bit
                periods.append([period])
            }
        }

        // Handle all vertically double-blocked periods (bits 11 ... 20)
        // These bits map to period pairs, e.g. 0/1, 1/2, 2/3, etc.
        for bit in 11...20 {
            if(bitmap & (1 << bit) != 0) {
                let firstPeriod = bit - 11
                let secondPeriod = firstPeriod + 1
                periods.append([firstPeriod, secondPeriod])
            }
        }

        // Handle all horizontally double-blocked periods (bits 21 ... 23)
        // These bits map to period pairs, e.g. 2/5, 3/6, 4/7
        for bit in 21...23 {
            if(bitmap & (1 << bit) != 0) {
                let firstPeriod = bit - 19
                let secondPeriod = firstPeriod + 3
                periods.append([firstPeriod, secondPeriod])
            }
        }

        return periods
    }
}
