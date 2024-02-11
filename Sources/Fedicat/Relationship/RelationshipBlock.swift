//
//  File.swift
import TootSDK

extension Relationship {

  public var isBlockingDomain: Bool {
    domainBlocking ?? false
  }

  public var isBlockingYou: Bool {
    blockedBy ?? false
  }

  public var isMutingNotifications: Bool {
    mutingNotifications ?? false
  }
}
