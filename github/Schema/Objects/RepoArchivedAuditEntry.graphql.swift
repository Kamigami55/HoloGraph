// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension Github.Objects {
  /// Audit log entry for a repo.archived event.
  static let RepoArchivedAuditEntry = ApolloAPI.Object(
    typename: "RepoArchivedAuditEntry",
    implementedInterfaces: [
      Github.Interfaces.AuditEntry.self,
      Github.Interfaces.Node.self,
      Github.Interfaces.OrganizationAuditEntryData.self,
      Github.Interfaces.RepositoryAuditEntryData.self
    ]
  )
}