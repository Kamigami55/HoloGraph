// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension Github.Objects {
  /// Audit log entry for a team.add_member event.
  static let TeamAddMemberAuditEntry = ApolloAPI.Object(
    typename: "TeamAddMemberAuditEntry",
    implementedInterfaces: [
      Github.Interfaces.AuditEntry.self,
      Github.Interfaces.Node.self,
      Github.Interfaces.OrganizationAuditEntryData.self,
      Github.Interfaces.TeamAuditEntryData.self
    ]
  )
}