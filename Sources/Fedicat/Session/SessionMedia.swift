extension Session {

  public func upload(_ draft: DraftPost) async throws {
    await draft.clearUploads()
    for attach in draft.attached {
      if let data = attach.data {
        let upload = try await client.upload(
          data,
          type: attach.type,
          text: attach.text.notBlank)
        await draft.addUpload(upload)
      }
    }
  }

  /// todo - focus
  //  public func updateMedia(
  //    _ media: any Media,
  //    description: String = ""
  //  ) async throws -> MediaAttachment? {
  //    let params = UpdateMediaAttachmentParams(
  //      description: description.orNil,
  //      focus: nil)
  //    return try await client.updateMedia(id: media.id, params)
  //  }
}
