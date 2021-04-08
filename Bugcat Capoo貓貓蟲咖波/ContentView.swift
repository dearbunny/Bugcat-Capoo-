//
//  ContentView.swift
//  Bugcat Capoo貓貓蟲咖波
//
//  Created by Rose on 2021/4/8.
//

import SwiftUI
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        //描圖參考
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 330, height: 210))
        imageView.image = UIImage(named: "貓貓蟲咖波")
        imageView.alpha = 0.4
        view.addSubview(imageView)
        
        // 曲線咖波
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 118, y: 63))
        path.addQuadCurve(to: CGPoint(x: 163, y: 57), controlPoint: CGPoint(x: 153, y: 20))
        path.addQuadCurve(to: CGPoint(x: 173, y: 60), controlPoint: CGPoint(x: 168, y: 58))
        path.addQuadCurve(to: CGPoint(x: 211, y: 75), controlPoint: CGPoint(x: 218, y: 28))
        path.addQuadCurve(to: CGPoint(x: 229, y: 79), controlPoint: CGPoint(x: 216, y: 79))
        path.addQuadCurve(to: CGPoint(x: 242, y: 86), controlPoint: CGPoint(x: 236, y: 72))
        path.addQuadCurve(to: CGPoint(x: 235, y: 144), controlPoint: CGPoint(x: 246, y: 118))
        path.addQuadCurve(to: CGPoint(x: 222, y: 153), controlPoint: CGPoint(x: 240, y: 161))
        path.addQuadCurve(to: CGPoint(x: 203, y: 156), controlPoint: CGPoint(x: 211, y: 156))
        path.addQuadCurve(to: CGPoint(x: 189, y: 154), controlPoint: CGPoint(x: 185, y: 171))
        path.addQuadCurve(to: CGPoint(x: 164, y: 157), controlPoint: CGPoint(x: 175, y: 157))
        path.addQuadCurve(to: CGPoint(x: 114, y: 143), controlPoint: CGPoint(x: 130, y: 155))
        path.addQuadCurve(to: CGPoint(x: 118, y: 63), controlPoint: CGPoint(x: 66, y: 107))
        path.close()
        
        // 額頭線
        path.move(to: CGPoint(x: 114, y: 67))
        path.addQuadCurve(to: CGPoint(x: 192, y: 72), controlPoint: CGPoint(x: 159, y: 46))
        //眼睛
        path.move(to: CGPoint(x: 105, y: 92))
        path.addQuadCurve(to: CGPoint(x: 118, y: 87), controlPoint: CGPoint(x: 110, y: 89))
        path.move(to: CGPoint(x: 180, y: 88))
        path.addQuadCurve(to: CGPoint(x: 191, y: 96), controlPoint: CGPoint(x: 186, y: 92))
                
        // 左腳
        path.move(to: CGPoint(x: 119, y: 146))
        path.addQuadCurve(to: CGPoint(x: 139, y: 152), controlPoint: CGPoint(x: 132, y: 174))

        
    
        // 藍色填色
        let capooLayer = CAShapeLayer()
        capooLayer.path = path.cgPath
        // 填藍色
        capooLayer.fillColor = CGColor(srgbRed: 90/255, green: 200/255, blue: 231/255, alpha: 1)
        //capooLayer.fillColor = UIColor.clear.cgColor // 繪製完成前暫時不填色
        capooLayer.strokeColor = CGColor(srgbRed: 90/255, green: 80/255, blue: 94/255, alpha: 1)
        capooLayer.lineWidth = 5
        view.layer.addSublayer(capooLayer)
        
        // 白色肚子
        let stomachPath = UIBezierPath()
        stomachPath.move(to: CGPoint(x: 123, y: 146))
        stomachPath.addQuadCurve(to: CGPoint(x: 162, y: 154), controlPoint: CGPoint(x: 143, y: 138))
        stomachPath.addQuadCurve(to: CGPoint(x: 123, y: 146), controlPoint: CGPoint(x: 142, y: 157))
        // 填白色快
        let whiteLineLayer = CAShapeLayer()
        whiteLineLayer.path = stomachPath.cgPath
        whiteLineLayer.fillColor = CGColor(srgbRed: 1, green: 1, blue: 1, alpha: 1)
        whiteLineLayer.lineWidth = 1
        view.layer.addSublayer(whiteLineLayer)
        
        // 藍右腳
        let rightPath = UIBezierPath()
        rightPath.move(to: CGPoint(x: 160, y: 146))
        rightPath.addQuadCurve(to: CGPoint(x: 149, y: 155), controlPoint: CGPoint(x: 154, y: 149))
        rightPath.addQuadCurve(to: CGPoint(x: 156, y: 162), controlPoint: CGPoint(x: 146, y: 165))
        rightPath.addQuadCurve(to: CGPoint(x: 165, y: 154), controlPoint: CGPoint(x: 161, y: 160))
        // 藍色右腳填色
        
        let rightLetLayer = CAShapeLayer()
        rightLetLayer.path = rightPath.cgPath
        // 填藍色
        rightLetLayer.fillColor = CGColor(srgbRed: 90/255, green: 200/255, blue: 231/255, alpha: 1)
        // 繪製完成前暫時不填色
        //capooLayer.fillColor = UIColor.clear.cgColor
        rightLetLayer.strokeColor = CGColor(srgbRed: 90/255, green: 80/255, blue: 94/255, alpha: 1)
        rightLetLayer.lineWidth = 5
        view.layer.addSublayer(rightLetLayer)
        
        //嘴紅口
        let pathMouth = UIBezierPath()
        pathMouth.move(to: CGPoint(x: 133, y: 94))
        pathMouth.addQuadCurve(to: CGPoint(x: 143, y: 91), controlPoint: CGPoint(x: 138, y: 92))
        pathMouth.addQuadCurve(to: CGPoint(x: 157, y: 94), controlPoint: CGPoint(x: 151, y: 96))
        pathMouth.addQuadCurve(to: CGPoint(x: 155, y: 117), controlPoint: CGPoint(x: 158, y: 106))
        pathMouth.addQuadCurve(to: CGPoint(x: 137, y: 118), controlPoint: CGPoint(x: 147, y: 130))
        pathMouth.addQuadCurve(to: CGPoint(x: 133, y: 94), controlPoint: CGPoint(x: 131, y: 104))
        
        let mouthLayer = CAShapeLayer()
        mouthLayer.path = pathMouth.cgPath
        // 填紅色
        mouthLayer.fillColor = CGColor(srgbRed: 253/255, green: 91/255, blue: 91/255, alpha: 1)
        // 繪製完成前暫時不填色
        //mouthLayer.fillColor = UIColor.clear.cgColor
        mouthLayer.strokeColor = CGColor(srgbRed: 90/255, green: 80/255, blue: 94/255, alpha: 1)
        mouthLayer.lineWidth = 5
        view.layer.addSublayer(mouthLayer)
        
        
        // 黑線
        // 上嘴線
        let pathMouthLine = UIBezierPath()
        pathMouthLine.move(to: CGPoint(x: 129, y: 88))
        pathMouthLine.addQuadCurve(to: CGPoint(x: 143, y: 91), controlPoint: CGPoint(x: 133, y: 97))
        pathMouthLine.addQuadCurve(to: CGPoint(x: 163, y: 91), controlPoint: CGPoint(x: 153, y: 98))
        
        // 跑步線
        pathMouthLine.move(to: CGPoint(x: 260, y: 138))
        pathMouthLine.addQuadCurve(to: CGPoint(x: 263, y: 157), controlPoint: CGPoint(x: 269, y: 147))
        pathMouthLine.move(to: CGPoint(x: 285, y: 139))
        pathMouthLine.addQuadCurve(to: CGPoint(x: 288, y: 154), controlPoint: CGPoint(x: 292, y: 144))
        pathMouthLine.move(to: CGPoint(x: 307, y: 139))
        pathMouthLine.addQuadCurve(to: CGPoint(x: 310, y: 157), controlPoint: CGPoint(x: 315, y: 147))
        // 填黑線
        let blackLineLayer = CAShapeLayer()
        blackLineLayer.path = pathMouthLine.cgPath
        blackLineLayer.fillColor = UIColor.clear.cgColor
        blackLineLayer.strokeColor = CGColor(srgbRed: 90/255, green: 80/255, blue: 94/255, alpha: 1)
        blackLineLayer.lineWidth = 5
        view.layer.addSublayer(blackLineLayer)
        
        
        
        
        // 藍背線
        let backPath = UIBezierPath()
        backPath.move(to: CGPoint(x: 211, y: 78))
        backPath.addQuadCurve(to: CGPoint(x: 212, y: 86), controlPoint: CGPoint(x: 211, y: 83))
        backPath.addQuadCurve(to: CGPoint(x: 217, y: 86), controlPoint: CGPoint(x: 216, y: 92))
        backPath.addQuadCurve(to: CGPoint(x: 217, y: 80), controlPoint: CGPoint(x: 217, y: 84))
        backPath.close()
        
        backPath.move(to: CGPoint(x: 219, y: 81))
        backPath.addQuadCurve(to: CGPoint(x: 219, y: 85), controlPoint: CGPoint(x: 219, y: 81))
        backPath.addQuadCurve(to: CGPoint(x: 225, y: 86), controlPoint: CGPoint(x: 222, y: 91))
        backPath.addQuadCurve(to: CGPoint(x: 225, y: 81), controlPoint: CGPoint(x: 225, y: 85))
        backPath.close()
        
        backPath.move(to: CGPoint(x: 227, y: 81))
        backPath.addQuadCurve(to: CGPoint(x: 228, y: 85), controlPoint: CGPoint(x: 227, y: 82))
        backPath.addQuadCurve(to: CGPoint(x: 232, y: 85), controlPoint: CGPoint(x: 231, y: 90))
        backPath.addQuadCurve(to: CGPoint(x: 232, y: 80), controlPoint: CGPoint(x: 232, y: 81))
        backPath.addQuadCurve(to: CGPoint(x: 227, y: 81), controlPoint: CGPoint(x: 229, y: 82))
        // 填藍色塊
        let backLayer = CAShapeLayer()
        backLayer.path = backPath.cgPath
        backLayer.fillColor = CGColor(srgbRed: 96/255, green: 166/255, blue: 191/255, alpha: 1)
        view.layer.addSublayer(backLayer)
        
    
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}
struct ContentView: View {
    var body: some View {
        DrawView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
