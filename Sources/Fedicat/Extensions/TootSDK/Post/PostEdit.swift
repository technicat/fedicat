import Foundation

extension Post {
    
    public var isEdited: Bool {
        editedAt != nil
    }
}
