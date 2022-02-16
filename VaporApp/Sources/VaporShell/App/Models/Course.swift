import Vapor
import Fluent

public final class Course: Content, Codable {

    public var id: String?
    public var description: String?
   //  public var shortDescription: String?
    //      public var longDescription: String?
    //public var description: String
    public var semester: Int?
    public var location: String?
    public var level: String?
    /*  public var creditsLow: Double?
        public var creditsHigh: Double?
        public var gradesLow: Int?
        public var gradesHigh: Int?
        public var isApplication: Bool
        public var courseLevel: String?
        public var applicationCode: String?*/
    public var periodsAvailable: [[Int?]]
    public var semesterLength: String?
    public var dualCreditDailySchedule: String?
    public var categories: String?
    public var subcategories: String?


    public init(data: CourseData) throws {


        self.id = data.id
        self.description = data.description
      //  self.shortDescription = data.shortDescription
        //    self.longDescription = data.longDescription
        self.semester = data.semester
        self.location = data.location
        self.level = data.level
        /*        self.creditsLow = data.creditsLow
                  self.creditsHigh = data.creditsHigh
                  self.gradesLow = data.gradesLow
                  self.gradesHigh = data.gradesHigh
                  self.isApplication = data.isApplication
                  self.courseLevel = Self.getCourseLevel(data: data)
                  self.applicationCode = data.applicationCode*/
        self.periodsAvailable = Self.availabilityAsPeriods(bitmap: data.periodBitmap)
        self.semesterLength = data.semesterLength
        self.categories = data.categories
        self.subcategories = data.subcategories
    }

    /*
     private static func getCourseLevel(data: CourseData) -> String? {
     if(data.isOnLevel) {
     return "isOnLevel"
     } else if(data.isPreAP) {
     return "isPreAP"
     } else if(data.isDualCredit) {
     return "isDualCredit"
     } else if(data.isAP) {
     return "isAP"
     } else if(data.isIB) {
     return "isIB"
     } else {
     return nil
     }
     }

     */

    // Returns an array of an array of integers
    // Each inner array contains the period(s) that that class is available
    // For example, [[1], [2], [2, 3]] indicates a class is available
    // during the first period, second period, and a vertically double-blocked 2/3 period
    public static func availabilityAsPeriods(bitmap: Int) -> [[Int]] {
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

    // public func availabilityAsPeriods() -> Set<Int> {
    //     var periods : Set<Int> = []
    //     for periodSet in self.periodsAvailable {
    //         for period in periodSet {
    //             periods.insert(period!)
    //         }
    //     }
    //     return periods
    // }

    public static func checkAvailability(forPeriods periods: Set<Int>, courseData: CourseData) -> Bool {
        let periodsAvailable2D = self.availabilityAsPeriods(bitmap: courseData.periodBitmap)
        
        for periodSets in periodsAvailable2D {
            for period in periodSets {
                if(periods.contains(period)) {
                    return true
                }
            }
        }
        
        return false
    }

    private static func removeS(fromSemester semester: String) throws -> Int {
        // Drop the initial 'S' from semester (S1, S2)
        guard semester.count == 2,
              semester.first == "S" else {
            throw Abort(.badRequest, reason: "Expected format S1 or S2; received: \(semester)")
        }

        guard let semesterInteger = Int(String(semester.last!)),
              (1...2).contains(semesterInteger) else {
            throw Abort(.badRequest, reason: "Second char of semester must be int; received: \(semester)")
        }
        return semesterInteger
    }
}
