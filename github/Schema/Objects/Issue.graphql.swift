// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension Github.Objects {
  /// An Issue is a place to discuss ideas, enhancements, tasks, and bugs for a project.
  static let Issue = ApolloAPI.Object(
    typename: "Issue",
    implementedInterfaces: [
      Github.Interfaces.Assignable.self,
      Github.Interfaces.Closable.self,
      Github.Interfaces.Comment.self,
      Github.Interfaces.Deletable.self,
      Github.Interfaces.Labelable.self,
      Github.Interfaces.Lockable.self,
      Github.Interfaces.Node.self,
      Github.Interfaces.ProjectV2Owner.self,
      Github.Interfaces.Reactable.self,
      Github.Interfaces.RepositoryNode.self,
      Github.Interfaces.Subscribable.self,
      Github.Interfaces.SubscribableThread.self,
      Github.Interfaces.UniformResourceLocatable.self,
      Github.Interfaces.Updatable.self,
      Github.Interfaces.UpdatableComment.self
    ]
  )
}