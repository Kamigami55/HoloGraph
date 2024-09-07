// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension Github.Objects {
  /// An account on GitHub, with one or more owners, that has repositories, members and teams.
  static let Organization = ApolloAPI.Object(
    typename: "Organization",
    implementedInterfaces: [
      Github.Interfaces.Actor.self,
      Github.Interfaces.AnnouncementBanner.self,
      Github.Interfaces.MemberStatusable.self,
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