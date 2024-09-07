// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension Github.Objects {
  /// Audit log entry for a org.oauth_app_access_requested event.
  static let OrgOauthAppAccessRequestedAuditEntry = ApolloAPI.Object(
    typename: "OrgOauthAppAccessRequestedAuditEntry",
    implementedInterfaces: [
      Github.Interfaces.AuditEntry.self,
      Github.Interfaces.Node.self,
      Github.Interfaces.OauthApplicationAuditEntryData.self,
      Github.Interfaces.OrganizationAuditEntryData.self
    ]
  )
}