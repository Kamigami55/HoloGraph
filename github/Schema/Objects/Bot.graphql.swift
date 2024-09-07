// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension Github.Objects {
  /// A special type of user which takes actions on behalf of GitHub Apps.
  static let Bot = ApolloAPI.Object(
    typename: "Bot",
    implementedInterfaces: [
      Github.Interfaces.Actor.self,
      Github.Interfaces.Node.self,
      Github.Interfaces.UniformResourceLocatable.self
    ]
  )
}