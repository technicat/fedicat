import TootSDK

extension AnnouncementReaction: Identifiable {
    
  public var id: String {
    name
  }

}
