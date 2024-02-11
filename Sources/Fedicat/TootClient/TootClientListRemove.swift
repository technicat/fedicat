import TootSDK

extension TootClient {

  public func remove(from list: List, account: Account) async throws {
    try await remove(from: list, accounts: [account])
  }

  public func remove(from list: List, accounts: [Account]) async throws {
    let ids = accounts.map { $0.id }
    let params = RemoveAccountsFromListParams(accountIds: ids)
    try await removeAccountsFromList(
      id: list.id,
      params: params)
  }
}
