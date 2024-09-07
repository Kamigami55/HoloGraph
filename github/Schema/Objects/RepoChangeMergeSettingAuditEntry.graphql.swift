// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension Github.Objects {
  /// Audit log entry for a repo.change_merge_setting event.
  static let RepoChangeMergeSettingAuditEntry = ApolloAPI.Object(
    typename: "RepoChangeMergeSettingAuditEntry",
    implementedInterfaces: [
      Github.Interfaces.AuditEntry.self,
      Github.Interfaces.Node.self,
      Github.Interfaces.OrganizationAuditEntryData.self,
      Github.Interfaces.RepositoryAuditEntryData.self
    ]
  )
}