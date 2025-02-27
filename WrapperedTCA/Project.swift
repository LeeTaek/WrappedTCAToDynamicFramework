//
//  Project.swift
//  Config
//
//  Created by 이택성 on 2/27/25.
//

import ProjectDescription

let project = Project(
    name: "WrapperedTCA",
    targets: [
        .target(
            name: "WrapperedTCA",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.TestStaticModule.WrapperedTCA",
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
                .external(name: "ComposableArchitecture")
            ]
        )
    ]
)
