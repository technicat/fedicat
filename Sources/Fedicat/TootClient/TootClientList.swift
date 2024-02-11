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

  public func createList(_ name: String, policy: ListRepliesPolicy) async throws -> List {
    let params = ListParams(
      title: name,
      repliesPolicy: policy)
    return try await createList(params: params)
  }

  public func delete(_ list: List) async throws {
    try await deleteList(id: list.id)
  }

  public func refresh(_ list: List) async throws -> List {
    try await getList(id: list.id)
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

}
