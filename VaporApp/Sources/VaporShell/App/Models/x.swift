public final class CourseData: Model {
    public var description: String
    public var semester: String
    public var availabilityBitmap : Int
}

public final class Course: Content {
    public var description: String
    public var semester: Int
    public var availability: [[Int]]

    init(courseData: CourseData) throws {
        self.description = courseData.description
        self.semester = try Self.removeS(fromSemester: courseData.semester)
        self.availability = try Self.availabilityAsPeriods(bitmap: courseData.availabilityBitmap)
    }

    // Returns an array of an array of integer
    // Each inner array contains the period(s) that that class is available
    // For example, [[1], [2], [2,3]] indicates a class that is available
    // During the first period, second period, and a double-blocked vertical
    // 2/3 period
    private static func availabilityAsPeriods(bitmap: Int) -> [[Int]] {
        var periods = [[Int]]()

        // Handle all single-period cases (bits 0 ... 10)
        // These bits map directly to the specified period
        for bit in 0...10 {
            if bitmap & (1 << bit) != 0 {
            let period = bit
            periods.append([period])
            }
        }

        //Handle all vertical, double-blocked periods (bits 11 ... 20)
        // These its map to period pairs, eg. 0/1, 1/2. 2/3, etc.

        for bit in 11...20 {
            if bitmap & (1 << bit) != 0 {
                let firstPeriod = bit - 11
                let secondPeriod = firstPeriod + 1
                periods.append([firstPeriod, secondPeriod])
            }
        }
    }

    private static func removeS(fromSemester semester: String) throws -> Int{
        // Drop the initial 'S' from semester (S1, S2)
        guard semester,count == 2,
              semester.first == "S" else {
            throw Abort(.badrequest, reason: "Expected format S1 or S2")
        }

        guard let semesterInteger = Int(String(semester.last!)),
              (1...2).contains(semesterInteger) else {
            throw Abort(.badRequest, reason: "Second char of semester must be int")
        }

        return semesterInteger
    }
}
