import Foundation
import TootSDK

/// Implementing this facilitates presentation in a paging display
public protocol Pageable: Decodable, Identifiable, Equatable {
}

// move these
public typealias PageQuery<T: Pageable> = (PagedInfo?) async throws -> PagedResult<[T]>

public typealias ListQuery<T> = () async throws -> [T]
