// From a case name and "rest" of the citation, make a case citation
// by italicizing the case name.
#let mkCaseCitation(case_name, rest) = [#text(style: "italic", case_name), #rest]


// From an array of dictionaries `(short: string, verbatim: string)`,
// make an array of intrusive dictionaries that know their index.
// 1. `idx`: the integer identifier for the entry
// 2. `short`: the short name used in the #cite_ invocation
// 3. `verbatim`: the verbatim text to put in the bibliography
#let mkCitations(kvs) = {
  let out = ()
  for kv in kvs {
    out.push((idx: out.len(), short: kv.short, verbatim: kv.verbatim))
  }
  out
}

#let rawSources = (
  (short: "pew_atp", verbatim: "Pew Research, \"American Trends Panel Survey\". available at pewresearch.org/wp-content/uploads/2022/08/CRYPT-NFT-Methods-and-Topline-final.pdf"),
  (short: "tom_brady_ftx", verbatim: " All 3 Tom Brady FTX commercial | FTX Tom Brady and Gisele Bundchen. available at youtube.com/watch?v=_aCGMyrFn-8"),
  (short: "lummis_gillibrand", verbatim: "Senators Cynthia Lummis and Kirsten Gillibrand Announce Their Landmark Crypto Bill on Squawk Box. available at youtube.com/watch?v=SBd9D4F27bs"),

  (short: "sec_kardashian", verbatim: "SEC Press Release 2022-183: SEC Charges Kim Kardashian for Unlawfully Touting Crypto Security. available at sec.gov/news/press-release/2022-183"),
  (short: "notice", verbatim: "Notice 2014-21, 2014-16 I.R.B. 938"),

  (short: "2026_examples", verbatim: "See 26 U.S.C. § 67(g), 26 U.S.C. § 165(h)"),
  (short: "early_icos", verbatim: " Lee, David Kuo Chen; Low, Linda (2018). Inclusive FinTech: Blockchain, Cryptocurrency and ICO. New York: World Scientific. p. 90. ISBN 978-981-3272-76-7."),
  (short: "box_token", verbatim: "Sam Bankman-Fried and Matt Levine on How to Make Money in Crypto. Odd Lots Podcast (from 21:17)"),
  (short: "assar_p5", verbatim: "Sahel Ahyaie Assar, \"Taxation of Cryptocurrencies: In Anticipation of the IRS’s Call\", 2019 (p.5)"),

  (short: "cnbc_wash_sale", verbatim:"Sigalos, MacKenzie. \"A tax loophole is helping bitcoin holders save tons of cash by avoiding federal taxes\", CNBC, 2021."),
  (short: "7701_o_5_A", verbatim: "26 U.S.C. § 7701(o)(5)(A)"),
  (short: "7701_o_3", verbatim: "26 U.S.C. § 7701(o)(3)"),

  (short: "bna_economic_substance", verbatim: "Portfolio 508-2nd: The Economic Substance Doctrine, I. Introduction and Scope of Portfolio, C. Penalties Under the “Economic Substance” Doctrine"),
  (short: "reconciliation_2010_1", verbatim: "Staff of the Joint Comm. on Taxation, Technical Explanation of the Revenue Provisions of the “Reconciliation Act of 2010,” as amended, at 143 (citing ACM P’ship v. Commissioner, T.C. Memo 1997-115 (1997), aff’d 157 F.3d 231 (3d Cir. 1998))."),
  (short: "reconciliation_2010_2", verbatim: "Staff of the Joint Comm. on Taxation, Technical Explanation of the Revenue Provisions of the “Reconciliation Act of 2010,” as amended, at 144."),
  (short: "sinema_tweet", verbatim: "twitter.com/SollenbergerRC/status/1460366852262178816?s=20&t=ZTH35qRQdcSEFgJDw1vqUA"),


  
  (short: "pilgrims_pride", verbatim: mkCaseCitation("Pilgrim's Pride Corp. v. Comm'r of Internal Revenue", "779 F.3d 311 (5th Cir. 2015)")),
  (short: "2024_greenbook", verbatim: "General Explanations of the Administration’s Fiscal Year 2024 Revenue Proposals, p. 190, https://home.treasury.gov/system/files/131/General-Explanations-FY2024.pdf"),
  (short: "sec_mission", verbatim: "The Role of the SEC: Mission, investor.gov/introduction-investing/investing-basics/role-sec"),
  (short: "open_secrets_lobbying_report", verbatim: "Cryptocurrency Industry Lobbying and Political Contributions Skyrocketed in 2022, opensecrets.org/news/2023/03/cryptocurrency-industry-lobbying-and-political-contributions-skyrocketed-in-2022"),

  (short: "165-2", verbatim: "26 CFR § 1.165-2 - Obsolescence of nondepreciable property. "),
  (short: "chief_counsel_memorandum", verbatim: "Office of Chief Counsel Memorandum, Number: 202302011, irs.gov/pub/irs-wd/202302011.pdf"),

  (short: "john_jay_ray_report1", verbatim: "First Interim Report of John J. Ray III to the Independent Directors on Control Failures at the FTX Exchanges, FTX Trading Ltd. (22-11068) (Doc 1242-1) (2023)."),
  (short: "polkadot_ico", verbatim: "Butcher, Mike. \"Polkadot passes the $140M mark for its fund-raise to link private and public blockchains\". Techcrunch (2017)."),
  (short: "ripple_complaint", verbatim: mkCaseCitation("SEC v. Ripple Labs, Inc.", "Complaint. available at sec.gov/litigation/complaints/2020/comp-pr2020-338.pdf")),
  (short: "stock_correlation", verbatim:" Yuyama, Tomonori and Ikeno, Yusuke and Zhang, Shuran and Matsuo, Shin’ichiro and Angel, James J., Can Crypto Assets Be Safe-Haven Assets During Crisis Periods? (February 2, 2023). Available at SSRN: https://ssrn.com/abstract=4346079 or http://dx.doi.org/10.2139/ssrn.4346079"),
  (short: "clayton", verbatim: "Virtual Currencies: The Oversight Role of the U.S. Securities and Exchange Commission and the U.S. Commodity Futures Trading Commission, U.S. Senate Committee on Banking, Housing, and Urban Affairs, Feb. 6, 2018, available at banking.senate.gov/hearings/virtual-currencies-the-oversight-role-of-the-us-securities-and-exchange-commission-and-the-us-commodity-futures-trading-commission."),
  (short: "not_your_keys", verbatim:"Adam J. Levitin, \"Not Your Keys, Not Your Coins: Unpriced Credit Risk in Cryptocurrency\". Texas Law Review, Vol. 101, 2022"),
  (short:"rr_72-112", verbatim:"Rev. Rul. 72-112, 1972-1 C.B. 60"),
  (short:"vietzke", verbatim:"Vietzke v. Comm’r, 37 T.C. 504, 510 (1961), acq., 1962-2 C.B. 6."),
)

// The intrusive array; source dictionaries (idx, short, verbatim)
#let sources = mkCitations(rawSources)
#let next_appearance_order = state("next_appearance_order", 0)

// value is a dict of (short |-> appearance_order)
#let appearance_orders = state("appearance_order", (:))

// get `short` from `all`
#let getEntry(short) = {
  // dict = (idx, short, verbatim)
  for dict in sources {
    if dict.short == short {
      return dict
    } else {
      continue
    }
  }
  panic("failed to find bibliography entry with key `" + short + "`")
}

#let getIdx(short) = {
  let orders = appearance_orders
  if orders.keys().contains(short) {
    return orders.at(short) 
  } else {
    let this_order = next_appearance_order
    next_apperance_order.update(this_order + 1)
    let old_dict = appearance_orders
    let new_dict = old_dict.insert(short, this_order)
    appearance_orders.update(new_dict)
    return this_order
  }
}

#let mk_footnote(short) = {
  let dict = getEntry(short);
  let idx = dict.idx;
  // The text that is actually rendered as the footnote
  let script_ = super[[#idx]]
  // The label to which the footnotes link points (the destinatoin is the label in the rendered bibliography)
  let label_ = label(dict.short)
  // Return a link to the entry in the rendered bibliography that renders as the appropriate footnote
  return link(label_)[#script_]
}

// render the bibliography.
#let render_bibliography() = {
  // This is going to be lines.
  let c = []
  for entry in sources {
    let idx = entry.idx
    let verbatim = entry.verbatim
    c += [
      //#set par(hanging-indent: 13pt)
      #text(weight: "bold")[#idx]#label(entry.short). #verbatim #linebreak()
    ]
  }
  return c
}

#let statutory_text(txt) = align(center)[
    #block(
  fill: luma(240),
  inset: 8pt,
  radius: 4pt,
  width: 80%,     
    )[
      #set align(left)
      #set par(first-line-indent: 0em, justify: true)
      #txt
    ]
  ]

#let block_quote(txt) = align(center)[
    #block(
  inset: 8pt,
  radius: 4pt,
  width: 80%,     
    )[
      #set align(left)
      #set par(first-line-indent: 0em, justify: true)
      #txt
    ]
  ]