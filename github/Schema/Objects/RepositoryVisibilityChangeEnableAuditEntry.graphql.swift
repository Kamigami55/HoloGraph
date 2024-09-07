// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension Github.Objects {
  /// Audit log entry for a repository_visibility_change.enable event.
  static let RepositoryVisibilityChangeEnableAuditEntry = ApolloAPI.Object(
    typename: "RepositoryVisibilityChangeEnableAuditEntry",
    implementedInterfaces: [
      Github.Interfaces.AuditEntry.self,
      Github.Interfaces.EnterpriseAuditEntryData.self,
      Github.Interfaces.Node.self,
      Github.Interfaces.OrganizationAuditEntryData.self
    ]
  )
}