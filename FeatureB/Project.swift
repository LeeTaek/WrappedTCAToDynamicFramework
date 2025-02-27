//
//  Project.swift
//  Config
//
//  Created by 이택성 on 2/27/25.
//

import ProjectDescription

let project = Project(
    name: "FeatureB",
    targets: [
        .target(
            name: "FeatureB",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.TestStaticModule.FeatureB",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "WrapperedTCA", path: .relativeToRoot("WrapperedTCA"))
            ]
        )
    ]
)
