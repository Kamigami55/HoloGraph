// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension Github.Objects {
  /// A team of users in an organization.
  static let Team = ApolloAPI.Object(
    typename: "Team",
    implementedInterfaces: [
      Github.Interfaces.MemberStatusable.self,
      Github.Interfaces.Node.self,
      Github.Interfaces.Subscribable.self
    ]
  )
}