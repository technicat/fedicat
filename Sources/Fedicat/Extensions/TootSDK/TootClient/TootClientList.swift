import TootSDK

extension TootClient {

  public func getAccounts(
    in list: List,
    _ page: PagedInfo? = nil,
    limit: Int? = nil
  ) async throws -> PagedResult<[Account]> {
    try await getListAccounts(
      id: list.id,
      page,
      limit: limit)
  }

  public func add(to list: List, accounts: [Account]) async throws {
    let params = AddAccountsToListParams(accountIds: accounts.map { $0.id })
    return try await addAccountsToList(
      id: list.id,
      params: params)
  }

  public func create(list name: String, policy: ListRepliesPolicy) async throws -> List {
    let params = ListParams(
      title: name,
      repliesPolicy: policy)
    return try await createList(params: params)
  }

  public func update(
    _ list: List,
    name: String? = nil,
    policy: ListRepliesPolicy? = nil
  ) async throws -> List {
    let params = ListParams(
      title: name ?? list.title,
      repliesPolicy: policy)
    return try await createList(
      id: list.id,
      params: params)
  }

  public func getLists(containing account: Account) async throws -> [List] {
    try await getListsContainingAccount(id: account.id)
  }

}
