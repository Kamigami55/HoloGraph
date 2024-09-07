// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension Github.Objects {
  /// Audit log entry for a team.change_parent_team event.
  static let TeamChangeParentTeamAuditEntry = ApolloAPI.Object(
    typename: "TeamChangeParentTeamAuditEntry",
    implementedInterfaces: [
      Github.Interfaces.AuditEntry.self,
      Github.Interfaces.Node.self,
      Github.Interfaces.OrganizationAuditEntryData.self,
      Github.Interfaces.TeamAuditEntryData.self
    ]
  )
}