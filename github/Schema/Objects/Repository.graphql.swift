// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension Github.Objects {
  /// A repository contains the content for a project.
  static let Repository = ApolloAPI.Object(
    typename: "Repository",
    implementedInterfaces: [
      Github.Interfaces.Node.self,
      Github.Interfaces.PackageOwner.self,
      Github.Interfaces.ProjectOwner.self,
      Github.Interfaces.ProjectV2Recent.self,
      Github.Interfaces.RepositoryInfo.self,
      Github.Interfaces.Starrable.self,
      Github.Interfaces.Subscribable.self,
      Github.Interfaces.UniformResourceLocatable.self
    ]
  )
}