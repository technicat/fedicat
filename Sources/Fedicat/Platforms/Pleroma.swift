open class Pleroma: MastoAPI {

  open override var name: String { "Pleroma" }
  open override var supportsNotificationTypes: Bool { false }

  open override var supportsPostDefaultLanguage: Bool { false }
  open override var supportsPostDefaultSensitive: Bool { false }

  open override var supportsRevoke: Bool { false }
}
