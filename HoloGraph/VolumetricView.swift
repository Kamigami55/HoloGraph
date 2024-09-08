import SwiftUI
import RealityKit
import Foundation

struct VolumetricView: View {
    @Environment(AppModel.self) private var appModel
    @State private var rotation: Angle = .zero
    @State private var lastRotation: Angle = .zero
    
    var body: some View {
        VStack {
            Text("GitHub Contributions")
                .font(.largeTitle)
            
            RealityView { content in
                let contributionGraph = createContributionGraph()
                content.add(contributionGraph)
            } update: { content in
                if let contributionGraph = content.entities.first {
                    contributionGraph.transform.rotation = simd_quatf(angle: Float(rotation.radians), axis: [0, 1, 0])
                }
            }
            .frame(width: 600, height: 400)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        let delta = value.translation.width
                        rotation = lastRotation + Angle(degrees: delta)
                    }
                    .onEnded { _ in
                        lastRotation = rotation
                    }
            )
        }
        .padding()
    }
    
    private func createContributionGraph() -> Entity {
        let rootEntity = Entity()
        
        let weeksInYear = 52
        let daysInWeek = 7
        let spacing: Float = 0.02
        let maxHeight: Float = 0.1
        let cubeWidth: Float = 0.015
        
        let totalWidth = Float(weeksInYear - 1) * spacing
        let totalDepth = Float(daysInWeek - 1) * spacing
        
        // Create and add the platform
        let platformWidth = totalWidth + cubeWidth
        let platformDepth = totalDepth + cubeWidth
        let platformHeight: Float = 0.02  // Increased thickness
        let platformColor = UIColor.gray.withAlphaComponent(0.5)

        let gridMaterial: RealityKit.Material = createGridMaterial(width: platformWidth, height: platformDepth, color: .gray)
        let solidMaterial = SimpleMaterial(color: platformColor, isMetallic: false)
        
        let platform = ModelEntity(
            mesh: .generateBox(width: platformWidth, height: platformHeight, depth: platformDepth),
            materials: [solidMaterial, gridMaterial]
        )
        platform.position = SIMD3<Float>(0, -platformHeight / 2, 0)  // Position adjusted for thickness
        rootEntity.addChild(platform)
        
        for (index, day) in appModel.contributionData.enumerated() {
            let weekIndex = index / daysInWeek
            let dayIndex = index % daysInWeek
            
            let x = Float(weekIndex) * spacing - totalWidth / 2
            let z = Float(dayIndex) * spacing - totalDepth / 2
            
            let height = Float(day.contributionCount) / Float(appModel.contributionData.max { $0.contributionCount < $1.contributionCount }?.contributionCount ?? 1) * maxHeight
            
            let cube = createCube(size: SIMD3<Float>(cubeWidth, height, cubeWidth), color: colorForContributions(day.contributionCount))
            cube.position = SIMD3<Float>(x, height / 2, z)
            
            rootEntity.addChild(cube)
        }
        
        return rootEntity
    }
    
    private func createCube(size: SIMD3<Float>, color: UIColor) -> Entity {
        let mesh = MeshResource.generateBox(size: size)
        let material = SimpleMaterial(color: color, isMetallic: false)
        return ModelEntity(mesh: mesh, materials: [material])
    }
    
    private func colorForContributions(_ count: Int) -> UIColor {
        switch count {
        case 0: return .systemGray5
        case 1...3: return .systemGreen.withAlphaComponent(0.3)
        case 4...6: return .systemGreen.withAlphaComponent(0.5)
        case 7...9: return .systemGreen.withAlphaComponent(0.7)
        default: return .systemGreen
        }
    }
    
    private func createGridMaterial(width: Float, height: Float, color: UIColor) -> RealityKit.Material {
        let size = CGSize(width: 512, height: 512)
        let renderer = UIGraphicsImageRenderer(size: size)
        let image = renderer.image { context in
            UIColor.clear.setFill()
            context.fill(CGRect(origin: .zero, size: size))
            
            color.withAlphaComponent(0.5).setStroke()
            let path = UIBezierPath()
            let stepX = size.width / CGFloat(width / 0.02)
            let stepY = size.height / CGFloat(height / 0.02)
            
            for i in 0...Int(width / 0.02) {
                let x = CGFloat(i) * stepX
                path.move(to: CGPoint(x: x, y: 0))
                path.addLine(to: CGPoint(x: x, y: size.height))
            }
            
            for i in 0...Int(height / 0.02) {
                let y = CGFloat(i) * stepY
                path.move(to: CGPoint(x: 0, y: y))
                path.addLine(to: CGPoint(x: size.width, y: y))
            }
            
            path.lineWidth = 2
            path.stroke()
        }
        
        let texture = try! TextureResource.generate(from: image.cgImage!, options: .init(semantic: .color))
        
        var material = PhysicallyBasedMaterial()
        material.baseColor = .init(tint: .white, texture: MaterialParameters.Texture(texture))
        material.roughness = 1.0
        material.metallic = 0.0
        material.blending = .transparent(opacity: .init(floatLiteral: 1.0))
        
        return material
    }
}

#Preview {
    VolumetricView()
        .environment(AppModel.sampleModel())
}

extension AppModel {
    static func sampleModel() -> AppModel {
        let model = AppModel()
        model.totalContributions = 1000
        model.contributionData = (0..<365).map { index in
            let date = Date().addingTimeInterval(TimeInterval(-index * 86400))
            let dateString = ISO8601DateFormatter().string(from: date)
            return ContributionDay(date: dateString, contributionCount: Int.random(in: 0...10))
        }
        return model
    }
}
