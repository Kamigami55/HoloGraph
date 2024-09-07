// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension Github.Objects {
  /// Audit log entry for a repo.config.unlock_anonymous_git_access event.
  static let RepoConfigUnlockAnonymousGitAccessAuditEntry = ApolloAPI.Object(
    typename: "RepoConfigUnlockAnonymousGitAccessAuditEntry",
    implementedInterfaces: [
      Github.Interfaces.AuditEntry.self,
      Github.Interfaces.Node.self,
      Github.Interfaces.OrganizationAuditEntryData.self,
      Github.Interfaces.RepositoryAuditEntryData.self
    ]
  )
}