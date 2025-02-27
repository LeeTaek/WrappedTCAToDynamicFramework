//
//  Workspace.swift
//  Config
//
//  Created by 이택성 on 2/27/25.
//

import ProjectDescription

let workspace = Workspace(
  name: "TestStaticModule",
  projects: [
    .relativeToRoot("App/"),
])
