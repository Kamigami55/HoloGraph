// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension Github.Objects {
  /// Audit log entry for a private_repository_forking.enable event.
  static let PrivateRepositoryForkingEnableAuditEntry = ApolloAPI.Object(
    typename: "PrivateRepositoryForkingEnableAuditEntry",
    implementedInterfaces: [
      Github.Interfaces.AuditEntry.self,
      Github.Interfaces.EnterpriseAuditEntryData.self,
      Github.Interfaces.Node.self,
      Github.Interfaces.OrganizationAuditEntryData.self,
      Github.Interfaces.RepositoryAuditEntryData.self
    ]
  )
}