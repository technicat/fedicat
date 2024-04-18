import Foundation

/// ISO 639 language codes used by fediverse platforms
/// various platforms use subsets
/// e.g. Akkoma only supports 2-letter codes
/// Mastodon doesn't support Kurdish, Samoan, Gaurani
/// Hometown doesn't support regional Chinese
/// and so on...
public enum ISOCode: String, CaseIterable, Codable {

  case
    // ISO639.1
    aa, ab, ae, af, ak, am, an, ar, `as`, av, ay, az,
    ba, be, bg, bh, bi, bm, bn, bo, br, bs,
    ca, ce, ch, co, cr, cs, cu, cv, cy,
    da, de, dv, dz,
    ee, el, en, eo, es, et, eu,
    fa, fi, ff, fj, fo, fr, fy,
    ga, gd, gl, gn, gu, gv,
    ha, he, hi, ho, hr, hu, ht, hy, hz,
    ia, id, ie, ig, ii, ik, io, `is`, it, iu,
    ja, jv,
    ka, kg, ki, kj, kk, kl, km, kn, ko, kr, ks, ku, kv, kw, ky,
    la, lb, lg, li, ln, lo, lt, lu, lv,
    mg, mh, mi, mk, ml, mn, mr, ms, mt, my,
    na, nb, nd, ne, ng, nl, nn, no, nr, nv, ny,
    oc, oj, om, or, os,
    pa, pi, pl, ps, pt,
    qu,
    rm, rn, ro, ru, rw,
    sa, sc, sd, se, sg, si, sk, sl, sm, sn, so, sq, sr, ss, st, su, sv, sw,
    ta, te, tg, th, ti, tl, tk, tn, to, tr, ts, tt, tw, ty,
    ug, uk, ur, uz,
    ve, vi, vo,
    wa, wo,
    xh,
    yi, yo,
    za, zh, zu,
    // ISO_639_3
    ast, ckb, chr, cnr,
    jbo,
    kab, kmr,
    ldn, lfn,
    moh,
    nds,
    pdc,
    sco, sma, smj, szl,
    tai, tok,
    vai,
    xal,
    zba, zgh
  // ISO_639_1 Regional
  case
    zhCN = "zh-CN"
  case
    zhHK = "zh-HK"
  case
    zhTW = "zh-TW"
  case
    zhYUE = "zh-YUE"
  // indicates auto-detection
  // https://docs.joinmastodon.org/methods/instance/#translation_languages
  case
    und
}
