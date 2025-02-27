import ProjectDescription

let project = Project(
    name: "TestStaticModule",
    targets: [
        .target(
            name: "TestStaticModule",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.TestStaticModule",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "FeatureA", path: .relativeToRoot("FeatureA")),
                .project(target: "FeatureB", path: .relativeToRoot("FeatureB")),
//                .project(target: "WrapperedTCA", path: .relativeToRoot("WrapperedTCA"))
            ]
        ),
    ]
)
