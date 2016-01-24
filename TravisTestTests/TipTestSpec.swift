import UIKit
import Quick
import Nimble

class TipTestSpec: QuickSpec {
  var calc: TipCalculator!
  
  override func spec() {
    beforeEach {
      self.calc = TipCalculator()
    }
    
    describe("Payment") {
      context("calculate tip") {
        it("with all inputs greater than zero") {
          let result = self.calc.calculateTip(100.0, taxPercentage: 0.18, tipPercentage: 0.10)
          expect(result).to(beCloseTo(8.2))
        }
      }
    }
  }
}
