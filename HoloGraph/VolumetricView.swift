import SwiftUI
import RealityKit

struct VolumetricView: View {
    @Environment(AppModel.self) private var appModel
    
    var body: some View {
        VStack {
            Text("GitHub Contributions")
                .font(.largeTitle)
            
            RealityView { content in
                let contributionGraph = createContributionGraph()
                content.add(contributionGraph)
            }
            .frame(width: 400, height: 400)
        }
        .padding()
    }
    
    private func createContributionGraph() -> Entity {
        let rootEntity = Entity()
        
        let gridSize = 7 // 7x7 grid for a week
        let spacing: Float = 0.02
        let maxHeight: Float = 0.1
        
        for (index, day) in appModel.contributionData.enumerated() {
            let x = Float(index % gridSize) * spacing
            let z = Float(index / gridSize) * spacing
            
            let height = Float(day.contributionCount) / Float(appModel.contributionData.max { $0.contributionCount < $1.contributionCount }?.contributionCount ?? 1) * maxHeight
            
            let cube = createCube(size: SIMD3<Float>(0.015, height, 0.015), color: colorForContributions(day.contributionCount))
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
}

#Preview {
    VolumetricView()
        .environment(AppModel())
}