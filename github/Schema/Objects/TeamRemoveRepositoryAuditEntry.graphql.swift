// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension Github.Objects {
  /// Audit log entry for a team.remove_repository event.
  static let TeamRemoveRepositoryAuditEntry = ApolloAPI.Object(
    typename: "TeamRemoveRepositoryAuditEntry",
    implementedInterfaces: [
      Github.Interfaces.AuditEntry.self,
      Github.Interfaces.Node.self,
      Github.Interfaces.OrganizationAuditEntryData.self,
      Github.Interfaces.RepositoryAuditEntryData.self,
      Github.Interfaces.TeamAuditEntryData.self
    ]
  )
}