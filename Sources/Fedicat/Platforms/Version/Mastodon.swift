import Foundation

// possibly could have classes for different versions
open class Mastodon: MastoAPI {

  open override var name: String { "Mastodon" }

  // should match supported_locales in languages_helper.rb
  // todo - adjust for different api versions
  // 4.2 - added Cherokee and Kalmyk, Cantonese, remove kmr
  // 4.1 - added be, fy, cnr, sma, smj
  let langs42: [ISOCode] = [
    .chr, .xal, .zhCN,
    .zhHK,
    .zhTW,
    .zhYUE,
  ]
  let langs41: [ISOCode] = [.be, .fy, .cnr, .sma, .smj]
  let langs40: [ISOCode] = [.jbo, .ldn, .lfn, .tok, .zba]
  let langs: [ISOCode] =
    [
      .aa, .ab, .ae, .af, .ak, .am, .an, .ar, .as, .av, .ay, .az,
      .ba,
      .bg, .bh, .bi, .bm, .bn, .bo, .br, .bs,
      .ca, .ce, .ch, .co, .cr, .cs, .cu, .cv, .cy,
      .da, .de, .dv, .dz,
      .ee, .el, .en, .eo, .es, .et, .eu,
      .fa, .fi, .ff, .fj, .fo, .fr,
      .ga, .gd, .gl, .gu, .gv,
      .ha, .he, .hi, .ho, .hr, .hu, .ht, .hy, .hz,
      .ia, .id, .ie, .ig, .ii, .ik, .io, .is, .it, .iu,
      .ja, .jv,
      .ka, .kg, .ki, .kj, .kk, .kl, .km, .kn, .ko, .kr, .ks, .ku, .kv, .kw, .ky,
      .la, .lb, .lg, .li, .ln, .lo, .lt, .lu, .lv,
      .mg, .mh, .mi, .mk, .ml, .mn, .mr, .ms, .mt, .my,
      .na, .nb, .nd, .ne, .ng, .nl, .nn, .no, .nr, .nv, .ny,
      .oc, .oj, .om, .or, .os,
      .pa, .pi, .pl, .ps, .pt,
      .qu,
      .rm, .rn, .ro, .ru, .rw,
      .sa, .sc, .sd, .se, .sg, .si, .sk, .sl, .sn, .so, .sq, .sr, .ss, .st, .su, .sv, .sw,
      .ta, .te, .tg, .th, .ti, .tl, .tk, .tn, .to, .tr, .ts, .tt, .tw, .ty,
      .ug, .uk, .ur, .uz,
      .ve, .vi, .vo,
      .wa, .wo,
      .xh,
      .yi, .yo,
      .za, .zh, .zu,
      .ast,
      .ckb,
      .kab, .kmr,
      .sco,
      .szl,
      .zgh,
    ]

  open override var languages: [ISOCode] {
    var all = langs
    if version >= Version(4, 0) {
      all = all + langs40
    }
    if version >= Version(4, 1) {
      all = all + langs41
    }
    if version >= Version(4, 2) {
      all = all.filter { $0 != .kmr }
      all = all + langs42
    }
    return all
  }
}
