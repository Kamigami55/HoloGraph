// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension Github.Objects {
  /// Audit log entry for a oauth_application.create event.
  static let OauthApplicationCreateAuditEntry = ApolloAPI.Object(
    typename: "OauthApplicationCreateAuditEntry",
    implementedInterfaces: [
      Github.Interfaces.AuditEntry.self,
      Github.Interfaces.Node.self,
      Github.Interfaces.OauthApplicationAuditEntryData.self,
      Github.Interfaces.OrganizationAuditEntryData.self
    ]
  )
}