import XCTest
@testable import mathStuff

class HumanizeTests: XCTestCase {
    let humanize = Humanize()
    
    func testReturnsEmptyStringIfArgumentNil() {
        XCTAssertEqual(humanize.humanize(nil),"")
    }
    
    func testReturnsEmptyStringForEmptyString(){
        XCTAssertEqual(humanize.humanize(""),"")
    }
    
    func testReturnsCapitalizedStringIfNoUnderscores(){
        XCTAssertEqual(humanize.humanize("foo"),"Foo")
    }
    
    func testConvertsUnderscoresToSpaces(){
        XCTAssertEqual(humanize.humanize("foo_bar_baz"),"Foo bar baz")
    }
    
    func testConvertsUnderscoresToSpacesAgain(){
        XCTAssertEqual(humanize.humanize("zoo_bar_baz"),"Zoo bar baz")
    }
}

