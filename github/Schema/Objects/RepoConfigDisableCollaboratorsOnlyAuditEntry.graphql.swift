// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension Github.Objects {
  /// Audit log entry for a repo.config.disable_collaborators_only event.
  static let RepoConfigDisableCollaboratorsOnlyAuditEntry = ApolloAPI.Object(
    typename: "RepoConfigDisableCollaboratorsOnlyAuditEntry",
    implementedInterfaces: [
      Github.Interfaces.AuditEntry.self,
      Github.Interfaces.Node.self,
      Github.Interfaces.OrganizationAuditEntryData.self,
      Github.Interfaces.RepositoryAuditEntryData.self
    ]
  )
}