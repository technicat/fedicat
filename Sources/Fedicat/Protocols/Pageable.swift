import Foundation
import TootSDK

/// Implementing this facilitates presentation in a paging display
public protocol Pageable: Decodable, Identifiable, Equatable {
}

public typealias PagedQuery<T: Pageable> = (PagedInfo?) async throws -> PagedResult<[T]>
