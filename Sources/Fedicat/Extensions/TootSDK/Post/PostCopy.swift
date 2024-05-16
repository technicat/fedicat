import TootSDK

/// used to display a translated Post
extension Post {

    public convenience init(from post: Post) {
        self.init(
            id: post.id,
            uri: post.uri,
            createdAt: post.createdAt,
            account: post.account,
            content: post.content,
            visibility: post.visibility,
            sensitive: post.sensitive,
            spoilerText: post.spoilerText,
            mediaAttachments: post.mediaAttachments,
            application: post.application,
            mentions: post.mentions,
            tags: post.tags,
            emojis: post.emojis,
            repostsCount: post.repostsCount,
            favouritesCount: post.favouritesCount,
            repliesCount: post.repliesCount,
            url: post.url,
            inReplyToId: post.inReplyToId,
            inReplyToAccountId: post.inReplyToAccountId,
            repost: post.repost,
            poll: post.poll,
            card: post.card,
            language: post.language,
            text: post.text,
            favourited: post.favourited,
            reposted: post.reposted,
            muted: post.muted,
            bookmarked: post.bookmarked,
            pinned: post.pinned,
            filtered: post.filtered)
    }
}
