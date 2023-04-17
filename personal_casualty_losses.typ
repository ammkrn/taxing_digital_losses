#import "cits.typ": mk_footnote, statutory_text, block_quote

= Personal Casualty Losses after 2025

By nature, digital assets are highly susceptible to loss due to accident or theft. The cryptographic schemes which lie at the heart of most digital assets are complex and deeply unfamiliar to the vast majority of the investing public. The reality of purchasing a financial instrument which truly has no trusted third party capable of recovering lost assets or reversing fraudulent transactions often does not sink in until it's too late. As a result of both the marketing blitz aimed at retail investors and the fact that loss of a digital asset results in a direct reduction of the taxpayer's ability to pay, extending a modicum of tax relief to ease legitimate accidental or disaster losses is not unreasonable. For credentials that are truly lost or destroyed, the public nature of digital asset ledgers means that such claims can at least in principle be verified by assessing whether or not the funds claimed to be lost have ever moved since the original purchase.

On the other hand, personal casualty losses attributable to theft should be disallowed as a general rule, as there's no reliable way to determine the veracity of a reported theft. To illustrate, imagine taxpayer Alice buys virtual currency on an exchange and withdraws it to a non-custodial wallet with address `0xA`. Now imagine an attacker is able to compromise Alice's private key and steal her funds by transferring the balance of wallet `0xA` to a wallet `0xB`, the private key of `0xB` being known only to the attacker. Alice reports the theft as a personal casualty loss under § 165(c), and provides documentation of the purchase, withdrawal, and transfer from `0xA` to `0xB`. This scenario setting out a legitimate loss due to theft is indistinguishable from a scenario in which Alice generated wallet `0xB` herself, transferred the balance of `0xA` to `0xB`, and claimed the balance was stolen by an unknown attacker, since there's no way to know whether `0xB` is actually owned by a third party or by Alice.

Some high profile or large-scale thefts can safely be treated as bona fide thefts (thousands of wallets using buggy software for key management are simultaneously drained and the funds sent to a mixer, or a licensed financial institution engages in embezzlement), but in order to properly handle such cases on a consistent basis, tax authorities would have to place themselves in the position of calling balls and strikes, determining what events constitute thefts deductible by taxpayers.

== Sample Casualty Loss Statute (post-2025)

The following sample statute provides a one-time deduction for personal casualty losses of virtual currency due to accident or disaster while disallowing most theft losses. The goal is to provide some degree of relief to small holders who purchased in the midst of virtual currency fever and subsequently lost their keys, hardware, or other equipment containing credentials in a fire, etc. The amount of the deduction is pegged to § 1211(b)(1) for ease of administration (practitioners and officials will be familiar with this amount and its status with respect to inflation) and under the assumption that a \$3,000 loss is sufficient to make most small holders happy without opening the door to large scale fraud. 

By design, a taxpayer may only deduct such a loss once, ever; taxpayers who suffer this kind of loss and continue to hold virtual currency should be expected to take remedial measures to ensure this does not happen again.

#statutory_text[
Individuals may claim a deduction to offset a loss of convertible virtual currency not compensated for 
by insurance or otherwise, for which there is no reasonable prospect of recovery, and which is attributable to accident, disaster, or the insolvency of a qualified financial institution as defined in § 165(l)(3), or a deposit holder registered as a Money Services Business or registered under a substantially similar regulatory scheme administered by any  state, territory, or federal district.

For purposes of this section, the loss shall be considered a capital asset held for not more than 1 year, regardless of the actual holding period. Taxpayers claiming a loss under this  section must provide documentation to substantiate the original purchase and attendant facts and circumstances, such as proof  of purchase from a virtual currency exchange or broker dealer licensed in the manner described above, virtual currency wallet addresses holding lost assets, and documentation of a natural disaster as applicable.

    
#set enum(numbering: "a)")
1. The amount of the loss shall be the lesser of the taxpayer's adjusted basis in the lost assets, or the fair market value at the time the loss is claimed. In no caseshall the loss allowed under this section exceed the amount permitted by § 1211(b)(1).
  
+ Taxpayers may aggregate losses from up to five (5) separate virtual currency addresses known to hold lostor otherwise irretrievable funds. The calculation described in subsection (a) is to be applied to each address individually. #parbreak() #strong()[Example]: Taxpayer loses the private keys corresponding to virtual currency wallets x and y due to an accidental fire. At the time the loss occurred, x held virtual currency with a fair market value of \$1,200, y held virtual currency with a fair market value of \$500. Taxpayer's adjusted basis was \$200 with respect to x, and \$1000 with respect to y. Taxpayer's total loss under this provision is found by adding the lesser of the FMV and adjusted basis in x to the lesser of the FMV and adjusted basis in y, or \$200 + \$500 = \$700.

+ Unless otherwise specified, the tax benefits described in this subsection do not apply to virtual currency or other assets issued, controlled, or redeemable by one or more smart contract, including but not limited to ERC-20 tokens.

+ The tax benefits provided by this subsection do not apply to personal casualty losses attributable to theft, unless such theft coincides with the insolvency of a financial institution meeting the requirements of this subsection.

+ A taxpayer who has received a tax benefit under this subsection in any prior year may not use the tax benefits of this subsection in any later year.
]