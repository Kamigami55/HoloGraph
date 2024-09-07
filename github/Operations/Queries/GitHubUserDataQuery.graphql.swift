// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension Github {
  class GitHubUserDataQuery: GraphQLQuery {
    static let operationName: String = "GitHubUserDataQuery"
    static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query GitHubUserDataQuery($userName: String!) { user(login: $userName) { __typename contributionsCollection { __typename contributionCalendar { __typename totalContributions weeks { __typename contributionDays { __typename contributionCount date } } } } } }"#
      ))

    public var userName: String

    public init(userName: String) {
      self.userName = userName
    }

    public var __variables: Variables? { ["userName": userName] }

    struct Data: Github.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: any ApolloAPI.ParentType { Github.Objects.Query }
      static var __selections: [ApolloAPI.Selection] { [
        .field("user", User?.self, arguments: ["login": .variable("userName")]),
      ] }

      /// Lookup a user by login.
      var user: User? { __data["user"] }

      /// User
      ///
      /// Parent Type: `User`
      struct User: Github.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: any ApolloAPI.ParentType { Github.Objects.User }
        static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("contributionsCollection", ContributionsCollection.self),
        ] }

        /// The collection of contributions this user has made to different repositories.
        var contributionsCollection: ContributionsCollection { __data["contributionsCollection"] }

        /// User.ContributionsCollection
        ///
        /// Parent Type: `ContributionsCollection`
        struct ContributionsCollection: Github.SelectionSet {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          static var __parentType: any ApolloAPI.ParentType { Github.Objects.ContributionsCollection }
          static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("contributionCalendar", ContributionCalendar.self),
          ] }

          /// A calendar of this user's contributions on GitHub.
          var contributionCalendar: ContributionCalendar { __data["contributionCalendar"] }

          /// User.ContributionsCollection.ContributionCalendar
          ///
          /// Parent Type: `ContributionCalendar`
          struct ContributionCalendar: Github.SelectionSet {
            let __data: DataDict
            init(_dataDict: DataDict) { __data = _dataDict }

            static var __parentType: any ApolloAPI.ParentType { Github.Objects.ContributionCalendar }
            static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("totalContributions", Int.self),
              .field("weeks", [Week].self),
            ] }

            /// The count of total contributions in the calendar.
            var totalContributions: Int { __data["totalContributions"] }
            /// A list of the weeks of contributions in this calendar.
            var weeks: [Week] { __data["weeks"] }

            /// User.ContributionsCollection.ContributionCalendar.Week
            ///
            /// Parent Type: `ContributionCalendarWeek`
            struct Week: Github.SelectionSet {
              let __data: DataDict
              init(_dataDict: DataDict) { __data = _dataDict }

              static var __parentType: any ApolloAPI.ParentType { Github.Objects.ContributionCalendarWeek }
              static var __selections: [ApolloAPI.Selection] { [
                .field("__typename", String.self),
                .field("contributionDays", [ContributionDay].self),
              ] }

              /// The days of contributions in this week.
              var contributionDays: [ContributionDay] { __data["contributionDays"] }

              /// User.ContributionsCollection.ContributionCalendar.Week.ContributionDay
              ///
              /// Parent Type: `ContributionCalendarDay`
              struct ContributionDay: Github.SelectionSet {
                let __data: DataDict
                init(_dataDict: DataDict) { __data = _dataDict }

                static var __parentType: any ApolloAPI.ParentType { Github.Objects.ContributionCalendarDay }
                static var __selections: [ApolloAPI.Selection] { [
                  .field("__typename", String.self),
                  .field("contributionCount", Int.self),
                  .field("date", Github.Date.self),
                ] }

                /// How many contributions were made by the user on this day.
                var contributionCount: Int { __data["contributionCount"] }
                /// The day this square represents.
                var date: Github.Date { __data["date"] }
              }
            }
          }
        }
      }
    }
  }

}