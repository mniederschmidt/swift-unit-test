import XCTest
@testable import mathStuff

class mathStuffTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    func testFirstTen() {
        var result = numberOfTwos(maxNumber: 10)
        XCTAssertEqual(result, 1)
        
        result = numberOfTwos(maxNumber: 30)
        XCTAssertEqual(result, 12)
        
        result = numberOfTwos(maxNumber: 100)
        XCTAssertEqual(result, 19)
    }
    
}
