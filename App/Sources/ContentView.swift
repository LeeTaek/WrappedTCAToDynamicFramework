import SwiftUI
import FeatureA
import FeatureB

public struct ContentView: View {
    public init() {}

    public var body: some View {
        VStack {
            FeatureAReducerView()
            FeatureBReducerView()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
