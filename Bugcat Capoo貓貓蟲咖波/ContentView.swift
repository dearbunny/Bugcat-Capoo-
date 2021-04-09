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
        imageView.alpha = 0.0
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
        capooLayer.lineCap = .round
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
        rightLetLayer.lineCap = .round
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
        
        // 草地
        let scarletPath = UIBezierPath()
        scarletPath.move(to: CGPoint(x: 10, y: 170))
        scarletPath.addQuadCurve(to: CGPoint(x: 65, y: 173), controlPoint: CGPoint(x: 38, y: 171))
        scarletPath.addQuadCurve(to: CGPoint(x: 84, y: 172), controlPoint: CGPoint(x: 79, y: 161))
        scarletPath.addQuadCurve(to: CGPoint(x: 98, y: 172), controlPoint: CGPoint(x: 92, y: 173))
        scarletPath.addQuadCurve(to: CGPoint(x: 168, y: 173), controlPoint: CGPoint(x: 130, y: 172))
        scarletPath.addQuadCurve(to: CGPoint(x: 229, y: 172), controlPoint: CGPoint(x: 201, y: 173))
        scarletPath.addQuadCurve(to: CGPoint(x: 244, y: 172), controlPoint: CGPoint(x: 237, y: 173))
        scarletPath.addQuadCurve(to: CGPoint(x: 281, y: 172), controlPoint: CGPoint(x: 258, y: 174))
        scarletPath.addQuadCurve(to: CGPoint(x: 277, y: 180), controlPoint: CGPoint(x: 281, y: 178))
        scarletPath.addQuadCurve(to: CGPoint(x: 211, y: 189), controlPoint: CGPoint(x: 247, y: 186))
        scarletPath.addQuadCurve(to: CGPoint(x: 92, y: 188), controlPoint: CGPoint(x: 151, y: 191))
        scarletPath.addQuadCurve(to: CGPoint(x: 10, y: 170), controlPoint: CGPoint(x: 40, y: 186))
        let scarletLayer = CAShapeLayer()
        scarletLayer.path = scarletPath.cgPath
        scarletLayer.fillColor = CGColor(srgbRed: 157/255, green: 225/255, blue: 138/255, alpha: 1)
        view.layer.addSublayer(scarletLayer)
        
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
        
        // 地平線
        pathMouthLine.move(to: CGPoint(x: 10, y: 170))
        pathMouthLine.addQuadCurve(to: CGPoint(x: 65, y: 173), controlPoint: CGPoint(x: 38, y: 171))
        pathMouthLine.addQuadCurve(to: CGPoint(x: 84, y: 172), controlPoint: CGPoint(x: 79, y: 161))
        pathMouthLine.addQuadCurve(to: CGPoint(x: 98, y: 172), controlPoint: CGPoint(x: 92, y: 173))
        pathMouthLine.addQuadCurve(to: CGPoint(x: 168, y: 173), controlPoint: CGPoint(x: 130, y: 172))
        pathMouthLine.addQuadCurve(to: CGPoint(x: 229, y: 172), controlPoint: CGPoint(x: 201, y: 173))
        pathMouthLine.addQuadCurve(to: CGPoint(x: 244, y: 172), controlPoint: CGPoint(x: 237, y: 173))
        pathMouthLine.addQuadCurve(to: CGPoint(x: 289, y: 172), controlPoint: CGPoint(x: 258, y: 174))
        pathMouthLine.addQuadCurve(to: CGPoint(x: 310, y: 173), controlPoint: CGPoint(x: 300, y: 173))
        
        // 音符波浪
        pathMouthLine.move(to: CGPoint(x: 82, y: 50))
        pathMouthLine.addCurve(to: CGPoint(x: 106, y: 48), controlPoint1: CGPoint(x: 91, y: 60), controlPoint2: CGPoint(x: 94, y: 41))
        
        
        
        // 填黑線
        let blackLineLayer = CAShapeLayer()
        blackLineLayer.path = pathMouthLine.cgPath
        blackLineLayer.fillColor = UIColor.clear.cgColor
        blackLineLayer.strokeColor = CGColor(srgbRed: 90/255, green: 80/255, blue: 94/255, alpha: 1)
        blackLineLayer.lineWidth = 5
        blackLineLayer.lineCap = .round
        view.layer.addSublayer(blackLineLayer)
        
        //豆芽
        let pointPath = UIBezierPath()
        pointPath.move(to: CGPoint(x: 51, y: 68))
        pointPath.addQuadCurve(to: CGPoint(x: 58, y: 71), controlPoint: CGPoint(x: 60, y: 60))
        pointPath.addQuadCurve(to: CGPoint(x: 51, y: 74), controlPoint: CGPoint(x: 54, y: 75))
        pointPath.addQuadCurve(to: CGPoint(x: 51, y: 68), controlPoint: CGPoint(x: 48, y: 71))
        pointPath.close()
        
        pointPath.move(to: CGPoint(x: 68, y: 63))
        pointPath.addQuadCurve(to: CGPoint(x: 75, y: 65), controlPoint: CGPoint(x: 75, y: 58))
        pointPath.addQuadCurve(to: CGPoint(x: 71, y: 69), controlPoint: CGPoint(x: 73, y: 69))
        pointPath.addQuadCurve(to: CGPoint(x: 68, y: 63), controlPoint: CGPoint(x: 64, y: 70))
        pointPath.close()
        // 填黑線
        let pointLayer = CAShapeLayer()
        pointLayer.path = pointPath.cgPath
        pointLayer.fillColor = CGColor(srgbRed: 90/255, green: 80/255, blue: 94/255, alpha: 1)
        pointLayer.strokeColor = CGColor(srgbRed: 90/255, green: 80/255, blue: 94/255, alpha: 1)
        pointLayer.lineWidth = 3
        pointLayer.lineCap = .round
        view.layer.addSublayer(pointLayer)

        
        
        
        
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
        
        
        
        // 音符ㄇ字型
        let musicPath = UIBezierPath()
        musicPath.move(to: CGPoint(x: 57, y: 65))
        musicPath.addLine(to: CGPoint(x: 55, y: 52))
        musicPath.addLine(to: CGPoint(x: 71, y: 48))
        musicPath.addLine(to: CGPoint(x: 73, y: 59))
        
        // 黑色填色
        let musicLayer = CAShapeLayer()
        musicLayer.path = musicPath.cgPath
        musicLayer.fillColor = CGColor(srgbRed: 90/255, green: 80/255, blue: 94/255, alpha: 1)
        musicLayer.fillColor = UIColor.clear.cgColor // 繪製完成前暫時不填色
        musicLayer.strokeColor = CGColor(srgbRed: 90/255, green: 80/255, blue: 94/255, alpha: 1)
        musicLayer.lineWidth = 4
        musicLayer.lineCap = .round
        view.layer.addSublayer(musicLayer)
       
        
        
    
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
