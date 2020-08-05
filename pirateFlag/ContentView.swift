//
//  ContentView.swift
//  pirateFlag
//
//  Created by Yida on 2020/7/29.
//  Copyright © 2020 Yida. All rights reserved.
//

import SwiftUI
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        let aDegree = CGFloat.pi / 180
        
        //背景
        let backgroundPath = UIBezierPath()
        backgroundPath.move(to: CGPoint(x: 0, y: 0))
        backgroundPath.addLine(to: CGPoint(x: 350, y: 0))
        backgroundPath.addLine(to: CGPoint(x: 350, y: 223))
        backgroundPath.addLine(to: CGPoint(x: 0, y: 223))
                
        let backgroundLayer = CAShapeLayer()
        backgroundLayer.path = backgroundPath.cgPath
        
        view.layer.addSublayer(backgroundLayer)
        
        //鬍子
        let beardPath = UIBezierPath(arcCenter: CGPoint(x: 175, y: 80), radius: 58, startAngle: aDegree * 0, endAngle: aDegree * 180, clockwise: true)
        
        beardPath.addQuadCurve(to: CGPoint(x: 233, y: 79), controlPoint: CGPoint(x: 175, y: 165))
                    
        let beardLayer = CAShapeLayer()
        beardLayer.path = beardPath.cgPath
        beardLayer.fillColor = CGColor(srgbRed: 1, green: 1, blue: 1, alpha: 1)
        beardLayer.strokeColor = UIColor.black.cgColor
        
        
                
        //頭
        let headPath = UIBezierPath(arcCenter: CGPoint(x: 175, y: 100), radius: 40, startAngle: aDegree * 0, endAngle: aDegree * 180, clockwise: false)
        
        headPath.addQuadCurve(to: CGPoint(x: 215, y: 100), controlPoint: CGPoint(x: 175, y: 160))
        
        let headLayer = CAShapeLayer()
        headLayer.path = headPath.cgPath
        headLayer.fillColor = CGColor(srgbRed: 1, green: 1, blue: 1, alpha: 1)
        headLayer.strokeColor = UIColor.black.cgColor
        
        
       
        
        //左眼
        let leftEyePath = UIBezierPath()
        leftEyePath.move(to: CGPoint(x: 149, y: 87))
        leftEyePath.addLine(to: CGPoint(x: 169, y: 99))

        leftEyePath.addCurve(to: CGPoint(x: 149, y: 87), controlPoint1: CGPoint(x: 159, y: 110), controlPoint2: CGPoint(x: 146, y: 90))
                    
        let leftEyeLayer = CAShapeLayer()
        leftEyeLayer.path = leftEyePath.cgPath
        leftEyeLayer.strokeColor = UIColor.black.cgColor

        //右眼
        let rightEyePath = UIBezierPath()
        rightEyePath.move(to: CGPoint(x: 181, y: 99))
        rightEyePath.addLine(to: CGPoint(x: 201, y: 87))
        rightEyePath.addCurve(to: CGPoint(x: 181, y: 99), controlPoint1: CGPoint(x: 200, y: 100), controlPoint2: CGPoint(x: 189, y: 103))

                
        let rightEyeLayer = CAShapeLayer()
        rightEyeLayer.path = rightEyePath.cgPath
        rightEyeLayer.lineWidth = 2
        rightEyeLayer.strokeColor = UIColor.black.cgColor
        
        //鼻子
        let nosePath = UIBezierPath()
        nosePath.move(to: CGPoint(x: 174, y: 110))
        nosePath.addLine(to: CGPoint(x: 169, y: 125))
        nosePath.addLine(to: CGPoint(x: 181, y: 125))
        nosePath.close()
                
        let noseLayer = CAShapeLayer()
        noseLayer.path = nosePath.cgPath
        
        
        //牙齒
         let toothPath1 = UIBezierPath()
         toothPath1.move(to: CGPoint(x: 220, y: 130))
         toothPath1.move(to: CGPoint(x: 140 , y: 125))
        
         toothPath1.addCurve(to: CGPoint(x: 218, y: 120), controlPoint1: CGPoint(x: 160, y: 140), controlPoint2: CGPoint(x: 190, y: 140))
          toothPath1.addCurve(to: CGPoint(x: 140, y: 125), controlPoint1: CGPoint(x: 205, y: 170), controlPoint2: CGPoint(x: 140, y: 160))
                
         let toothLayer1 = CAShapeLayer()
         toothLayer1.path = toothPath1.cgPath
         toothLayer1.fillColor = UIColor.white.cgColor
         toothLayer1.lineWidth = 0.5
         toothLayer1.strokeColor = UIColor.black.cgColor

        //toothLinePath1
        let toothLinePath1 = UIBezierPath()
        toothLinePath1.move(to: CGPoint(x: 153, y: 133))
        toothLinePath1.addLine(to: CGPoint(x: 152, y: 147))
                
        let toothLineLayer1 = CAShapeLayer()
        toothLineLayer1.path = toothLinePath1.cgPath
        toothLineLayer1.strokeColor = UIColor.black.cgColor
        toothLineLayer1.lineWidth = 0.5
        
        //toothLinePath2
        let toothLinePath2 = UIBezierPath()
        toothLinePath2.move(to: CGPoint(x: 165, y: 135))
        toothLinePath2.addLine(to: CGPoint(x: 164, y: 153))
        
        let toothLineLayer2 = CAShapeLayer()
        toothLineLayer2.path = toothLinePath2.cgPath
        toothLineLayer2.strokeColor = UIColor.black.cgColor
        toothLineLayer2.lineWidth = 0.5
        
        //toothLinePath3
        let toothLinePath3 = UIBezierPath()
        toothLinePath3.move(to: CGPoint(x: 176, y: 135))
        toothLinePath3.addLine(to: CGPoint(x: 176, y: 154))
        
        let toothLineLayer3 = CAShapeLayer()
        toothLineLayer3.path = toothLinePath3.cgPath
        toothLineLayer3.strokeColor = UIColor.black.cgColor
        toothLineLayer3.lineWidth = 0.5
        
        //toothLinePath4
        let toothLinePath4 = UIBezierPath()
        toothLinePath4.move(to: CGPoint(x: 187, y: 134))
        toothLinePath4.addLine(to: CGPoint(x: 188, y: 153))
        
        let toothLineLayer4 = CAShapeLayer()
        toothLineLayer4.path = toothLinePath4.cgPath
        toothLineLayer4.strokeColor = UIColor.black.cgColor
        toothLineLayer4.lineWidth = 0.5
        
        //toothLinePath5
        let toothLinePath5 = UIBezierPath()
        toothLinePath5.move(to: CGPoint(x: 198, y: 131))
        toothLinePath5.addLine(to: CGPoint(x: 200, y: 147))
        
        let toothLineLayer5 = CAShapeLayer()
        toothLineLayer5.path = toothLinePath5.cgPath
        toothLineLayer5.strokeColor = UIColor.black.cgColor
        toothLineLayer5.lineWidth = 0.5
        
        //下巴
        let chinPath = UIBezierPath(roundedRect: CGRect(x: 150, y: 137, width: 50, height: 40), cornerRadius: 5)
        
        let chinLayer = CAShapeLayer()
        chinLayer.path = chinPath.cgPath
        chinLayer.fillColor = UIColor.white.cgColor
        chinLayer.strokeColor = UIColor.black.cgColor
        
        //上骨頭
        let topBonePath = UIBezierPath()
        topBonePath.move(to: CGPoint(x: 167, y:62))
        topBonePath.addLine(to: CGPoint(x: 167, y: 32))
        topBonePath.addLine(to: CGPoint(x: 174, y: 23))
        topBonePath.addLine(to: CGPoint(x: 181, y: 32))
        topBonePath.addLine(to: CGPoint(x: 181, y: 62))
        topBonePath.close()
        
        let topBonelayer = CAShapeLayer()
        topBonelayer.path = topBonePath.cgPath
        topBonelayer.fillColor = UIColor.white.cgColor
        
        //上圓1
        let topCirclePath1 = UIBezierPath(arcCenter: CGPoint(x: 168, y: 26), radius: 6.5, startAngle: aDegree * 100, endAngle: aDegree * 340, clockwise: true)
        
        let topCirclelayer1 = CAShapeLayer()
        topCirclelayer1.path = topCirclePath1.cgPath
        topCirclelayer1.fillColor = UIColor.white.cgColor
        
        
        //上圓2
        let topCirclePath2 = UIBezierPath(arcCenter: CGPoint(x: 180, y: 26), radius: 6.5, startAngle: aDegree * 200, endAngle: aDegree * 80, clockwise: true)
        
        let topCirclelayer2 = CAShapeLayer()
        topCirclelayer2.path = topCirclePath2.cgPath
        topCirclelayer2.fillColor = UIColor.white.cgColor
        
                
        //左骨頭
        let leftBonePath = UIBezierPath()
        leftBonePath.move(to: CGPoint(x: 137, y:105))
        leftBonePath.addLine(to: CGPoint(x: 86, y: 105))
        leftBonePath.addLine(to: CGPoint(x: 80, y: 113))
        leftBonePath.addLine(to: CGPoint(x: 86, y: 119))
        leftBonePath.addLine(to: CGPoint(x: 137, y: 119))
        leftBonePath.close()
        
        let leftBoneLayer = CAShapeLayer()
        leftBoneLayer.path = leftBonePath.cgPath
        leftBoneLayer.fillColor = UIColor.white.cgColor
        
        //左圓1
        let leftCirclePath1 = UIBezierPath(arcCenter: CGPoint(x: 81, y: 107), radius: 6.5, startAngle: aDegree * 100, endAngle: aDegree * 340, clockwise: true)
        
        let leftCirclelayer1 = CAShapeLayer()
        leftCirclelayer1.path = leftCirclePath1.cgPath
        leftCirclelayer1.fillColor = UIColor.white.cgColor
        
        
        //左圓2
        let leftCirclePath2 = UIBezierPath(arcCenter: CGPoint(x: 81, y: 118), radius: 6.5, startAngle: aDegree * 6, endAngle: aDegree * 254, clockwise: true)
        
        let leftCirclelayer2 = CAShapeLayer()
        leftCirclelayer2.path = leftCirclePath2.cgPath
        leftCirclelayer2.fillColor = UIColor.white.cgColor
        
        
        
        //下骨頭
        let bottomBonePath = UIBezierPath()
        bottomBonePath.move(to: CGPoint(x: 166, y:177))
        bottomBonePath.addLine(to: CGPoint(x: 166, y: 202))
        bottomBonePath.addLine(to: CGPoint(x: 174, y: 210))
        bottomBonePath.addLine(to: CGPoint(x: 182, y: 202))
        bottomBonePath.addLine(to: CGPoint(x: 182, y: 177))
        
        bottomBonePath.close()
        
        let bottomBoneLayer = CAShapeLayer()
        bottomBoneLayer.path = bottomBonePath.cgPath
        bottomBoneLayer.fillColor = UIColor.white.cgColor
        
        //下圓1
        let bottomCirclePath1 = UIBezierPath(arcCenter: CGPoint(x: 167, y: 208), radius: 6.5, startAngle: aDegree * 8, endAngle: aDegree * 265, clockwise: true)
        
        let bottomCirclelayer1 = CAShapeLayer()
        bottomCirclelayer1.path = bottomCirclePath1.cgPath
        bottomCirclelayer1.fillColor = UIColor.white.cgColor
        
        
        //下圓2
        let bottomCirclePath2 = UIBezierPath(arcCenter: CGPoint(x: 179, y: 208), radius: 6.5, startAngle: aDegree * 296, endAngle: aDegree * 160, clockwise: true)
        
        let bottomCirclelayer2 = CAShapeLayer()
        bottomCirclelayer2.path = bottomCirclePath2.cgPath
        bottomCirclelayer2.fillColor = UIColor.white.cgColor
        
        
        
        //右骨頭
        let rightBonePath = UIBezierPath()
        rightBonePath.move(to: CGPoint(x: 218, y:119))
        rightBonePath.addLine(to: CGPoint(x: 269, y: 119))
        rightBonePath.addLine(to: CGPoint(x: 277, y: 113))
        rightBonePath.addLine(to: CGPoint(x: 269, y: 106))
        rightBonePath.addLine(to: CGPoint(x: 209, y: 106))
        rightBonePath.close()
        
        let rightBoneLayer = CAShapeLayer()
        rightBoneLayer.path = rightBonePath.cgPath
        rightBoneLayer.fillColor = UIColor.white.cgColor
        
        //右圓1
        let rightCirclePath1 = UIBezierPath(arcCenter: CGPoint(x: 275, y: 119), radius: 6.5, startAngle: aDegree * 276, endAngle: aDegree * 180, clockwise: true)
        
        let rightCirclelayer1 = CAShapeLayer()
        rightCirclelayer1.path = rightCirclePath1.cgPath
        rightCirclelayer1.fillColor = UIColor.white.cgColor
        
        
        //右圓2
        let rightCirclePath2 = UIBezierPath(arcCenter: CGPoint(x: 276, y: 108), radius: 6.5, startAngle: aDegree * 190, endAngle: aDegree * 79, clockwise: true)
        
        let rightCirclelayer2 = CAShapeLayer()
        rightCirclelayer2.path = rightCirclePath2.cgPath
        rightCirclelayer2.fillColor = UIColor.white.cgColor

        view.layer.addSublayer(topBonelayer)
        view.layer.addSublayer(topCirclelayer1)
        view.layer.addSublayer(topCirclelayer2)
        view.layer.addSublayer(leftBoneLayer)
        view.layer.addSublayer(leftCirclelayer1)
        view.layer.addSublayer(leftCirclelayer2)
        view.layer.addSublayer(bottomBoneLayer)
        view.layer.addSublayer(bottomCirclelayer1)
        view.layer.addSublayer(bottomCirclelayer2)
        view.layer.addSublayer(rightBoneLayer)
        view.layer.addSublayer(rightCirclelayer1)
        view.layer.addSublayer(rightCirclelayer2)
        
                

        view.layer.addSublayer(headLayer)
        view.layer.addSublayer(noseLayer)
        view.layer.addSublayer(chinLayer)
        view.layer.addSublayer(beardLayer)
        view.layer.addSublayer(leftEyeLayer)
        view.layer.addSublayer(rightEyeLayer)
        view.layer.addSublayer(toothLayer1)
        view.layer.addSublayer(toothLineLayer1)
        view.layer.addSublayer(toothLineLayer2)
        view.layer.addSublayer(toothLineLayer3)
        view.layer.addSublayer(toothLineLayer4)
        view.layer.addSublayer(toothLineLayer5)
        
        
        
        
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
