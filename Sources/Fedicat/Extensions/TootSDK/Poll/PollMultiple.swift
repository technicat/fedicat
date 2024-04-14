import TootSDK

extension Poll {

  public var isMultipleChoice: Bool {
    multiple
  }
    
    public var isSingleChoice: Bool {
      !isMultipleChoice
    }
}
