import UIKit
import PlaygroundSupport

final class CustomView: UIView {
	override func draw(_ rect: CGRect) {
		guard let context = UIGraphicsGetCurrentContext() else { return }

		let colorSpace = CGColorSpaceCreateDeviceRGB()
		let color = CGColor(colorSpace: colorSpace, components: [0, 1, 0, 1])!

		context.setFillColor(color)
		context.fill(bounds)

		context.setFillColor(CGColor(colorSpace: colorSpace, components: [0, 0, 1, 0.5])!)
		context.setBlendMode(.normal)
		context.fill(rect.insetBy(dx: 64, dy: 64))
	}
}

PlaygroundPage.current.liveView = CustomView(frame: CGRect(x: 0, y: 0, width: 320, height: 320))
