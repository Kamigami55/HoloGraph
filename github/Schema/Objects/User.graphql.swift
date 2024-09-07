// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension Github.Objects {
  /// A user is an individual's account on GitHub that owns repositories and can make new content.
  static let User = ApolloAPI.Object(
    typename: "User",
    implementedInterfaces: [
      Github.Interfaces.Actor.self,
      Github.Interfaces.Node.self,
      Github.Interfaces.PackageOwner.self,
      Github.Interfaces.ProfileOwner.self,
      Github.Interfaces.ProjectOwner.self,
      Github.Interfaces.ProjectV2Owner.self,
      Github.Interfaces.ProjectV2Recent.self,
      Github.Interfaces.RepositoryDiscussionAuthor.self,
      Github.Interfaces.RepositoryDiscussionCommentAuthor.self,
      Github.Interfaces.RepositoryOwner.self,
      Github.Interfaces.Sponsorable.self,
      Github.Interfaces.UniformResourceLocatable.self
    ]
  )
}