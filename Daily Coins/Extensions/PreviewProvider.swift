//
//  PreviewProvider.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/26/22.
//

import SwiftUI

extension PreviewProvider {
  static var dev: DeveloperPreview {
    return DeveloperPreview.instance
  }
}

class DeveloperPreview {
  static let instance = DeveloperPreview()
  
  let stat1 = Statisic(title: "Current Price",
                       value: "$21,555.44",
                       percentageChange: 1.23)
  
  let stat2 = Statisic(title: "Market Cap.",
                       value: "$413.15Bn",
                       percentageChange: -4.56)
  
  let stat3 = Statisic(title: "Rank",
                       value: "1",
                       percentageChange: nil)
  
  let stat4 = Statisic(title: "Volume",
                       value: "$25.99Bn",
                       percentageChange: nil)
  
  
  let sectionModel = DetailSection(title: "Overview",
                                   stats: [Statisic(title: "Current Price",
                                                    value: "$21,555.44",
                                                    percentageChange: 1.23),
                                           Statisic(title: "Market Cap.",
                                                    value: "$413.15Bn",
                                                    percentageChange: 4.56),
                                           Statisic(title: "Rank",
                                                    value: "1",
                                                    percentageChange: nil),
                                           Statisic(title: "Volume",
                                                    value: "$25.99Bn",
                                                    percentageChange: nil)
                                   ])
  
  
  
  let coin = Coin(id: "bitcoin",
                  symbol: "smp",
                  name: "Sample",
                  image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
                  currentPrice: 16693.23,
                  marketCapRank: 1,
                  totalVolume: 20812317888,
                  marketCap: 320783310926,
                  high24H: 16994.52,
                  low24H: 16581.98,
                  priceChange24H: -45.95787307613864,
                  priceChangePercentage24H: -0.27455,
                  marketCapChange24H: -359115173.9365845,
                  marketCapChangePercentage24H: -0.11182,
                  athChangePercentage: -75.80894,
                  lastUpdated: "2022-11-19T00:11:10.847Z",
                  sparklineIn7D: nil,
                  priceChangePercentage24HInCurrency: -0.274552555378890
                  
  )
  
  
  let coinDetail = CoinDetail(id: "bitcoin",
                              symbol: "btc",
                              name: "Bitcoin",
                              blockTimeInMinutes: 10,
                              hashingAlgorithm: "SHA-256",
                              categories: ["Cryptocurrency"],
                              coinDetailDescription: Description(en: "This is a test"),
                              links: nil,
                              image: CoinDetailImage(thumb: "https://assets.coingecko.com/coins/images/1/thumb/bitcoin.png?1547033579",
                                                     small: "https://assets.coingecko.com/coins/images/1/small/bitcoin.png?1547033579"
                                                     ,
                                                     large: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579"
                                                    ),
                              countryOrigin: "",
                              genesisDate: "2009-01-03",
                              sentimentVotesUpPercentage: 78.16,
                              sentimentVotesDownPercentage: 21.84,
                              marketCapRank: 1,
                              coingeckoRank: 1,
                              coingeckoScore: 83.151,
                              developerScore: 99.241,
                              communityScore: 83.151,
                              liquidityScore: 100.011,
                              publicInterestScore: 0.072,
                              marketData: MarketData(currentPrice: ["aud": 25202,
                                                                    "btc": 1,
                                                                    "eur": 16437.4,
                                                                    "gbp": 14183.73,
                                                                    "usd": 17103.67,
                                                                    "sats": 100066669],
                                                     ath: nil,
                                                     athChangePercentage: nil,
                                                     athDate: nil,
                                                     atl: nil,
                                                     atlChangePercentage: nil,
                                                     atlDate: nil,
                                                     marketCap: nil,
                                                     marketCapRank: 1,
                                                     fullyDilutedValuation: nil,
                                                     totalVolume: nil,
                                                     high24H: nil,
                                                     low24H: nil,
                                                     priceChange24H: 637.148,
                                                     priceChangePercentage24H: 3.86939,
                                                     priceChangePercentage7D: 5.76343,
                                                     priceChangePercentage14D: 1.26189,
                                                     priceChangePercentage30D: -17.06858,
                                                     priceChangePercentage60D: -12.18497,
                                                     priceChangePercentage200D: -41.64707,
                                                     priceChangePercentage1Y: -70.43383,
                                                     marketCapChange24H: 12038487917,
                                                     marketCapChangePercentage24H: 3.80278,
                                                     priceChange24HInCurrency: nil,
                                                     priceChangePercentage1HInCurrency: nil,
                                                     priceChangePercentage24HInCurrency: nil,
                                                     priceChangePercentage7DInCurrency: nil,
                                                     priceChangePercentage14DInCurrency: nil,
                                                     priceChangePercentage30DInCurrency: nil,
                                                     priceChangePercentage60DInCurrency: nil,
                                                     priceChangePercentage200DInCurrency: nil,
                                                     priceChangePercentage1YInCurrency: nil,
                                                     marketCapChange24HInCurrency: nil,
                                                     marketCapChangePercentage24HInCurrency: nil,
                                                     totalSupply: 21000000,
                                                     maxSupply: 21000000,
                                                     circulatingSupply: 19221006,
                                                     sparkline7D: Sparkline7D(price: [
                                                      17080.215260565037,
                                                      16900.750717833587,
                                                      16853.43962686432,
                                                      16932.397388331396,
                                                      16881.18571800256,
                                                      16832.655481419388,
                                                      16670.45594413163,
                                                      16772.331096831662,
                                                      16797.037691112342,
                                                      16844.694429173345,
                                                      16866.545028629305,
                                                      16847.583956633152,
                                                      16841.663162434146,
                                                      16840.10100735196,
                                                      16832.28916215998,
                                                      16874.99582417574,
                                                      16928.67767896444,
                                                      16886.875022798205,
                                                      16907.05542882631,
                                                      16865.692862414297,
                                                      16890.700596783896,
                                                      16802.16247512449,
                                                      16823.301453566153,
                                                      16831.06722498903,
                                                      16797.98748257006,
                                                      16875.102776772583,
                                                      16864.438901654376,
                                                      16879.2541947424,
                                                      16903.961634132105,
                                                      16878.630441008354,
                                                      16853.313311560174,
                                                      16692.55078362043,
                                                      16733.457883101168,
                                                      16716.961741576284,
                                                      16529.746962045414,
                                                      16579.136232701854,
                                                      16675.52891257596,
                                                      16628.713162252454,
                                                      16674.603772874227,
                                                      16630.567138493156,
                                                      16571.909384480932,
                                                      16610.87262894882,
                                                      16541.814419337577,
                                                      16506.907331643964,
                                                      16550.206284051284,
                                                      16515.9730914782,
                                                      16409.05694280837,
                                                      16441.150768995096,
                                                      16344.342316001042,
                                                      16273.562949306506,
                                                      16054.95019045931,
                                                      16069.653976665544,
                                                      16175.751888956542,
                                                      15988.743788879257,
                                                      15931.386864071925,
                                                      16580.766213073595,
                                                      16831.582948198215,
                                                      16752.54405937383,
                                                      16797.861522997424,
                                                      16825.319551245273,
                                                      16777.026539866954,
                                                      16824.3395847091,
                                                      16988.28378838569,
                                                      16593.01669736322,
                                                      16614.779496097188,
                                                      16507.117502596393,
                                                      16594.097858649377,
                                                      16641.894767312016,
                                                      16482.68732742266,
                                                      16302.382652976321,
                                                      16415.6233047172,
                                                      16436.629137493637,
                                                      16645.828500283515,
                                                      16581.79649537976,
                                                      16749.586987173992,
                                                      16779.86709960071,
                                                      16874.217288011416,
                                                      16787.279030627356,
                                                      16776.02537960521,
                                                      16674.65899343996,
                                                      16732.915058330556,
                                                      16817.05432071576,
                                                      16927.92736736779,
                                                      16795.995805460065,
                                                      16831.315469627283,
                                                      16806.84579045593,
                                                      16895.02524166953,
                                                      16958.615596238244,
                                                      16883.101189397585,
                                                      17044.682788091155,
                                                      16999.185934513513,
                                                      17012.123731873995,
                                                      16707.257677987018,
                                                      16820.58496349045,
                                                      16820.062114949425,
                                                      16912.747269948228,
                                                      16898.266308137103,
                                                      16890.52938386464,
                                                      16816.567630161077,
                                                      16864.861378096983,
                                                      16971.477570910884,
                                                      16962.710953225433,
                                                      16906.534604557302,
                                                      16941.666173327234,
                                                      16852.479576357695,
                                                      16878.44657453432,
                                                      16774.882448604076,
                                                      16741.035260606328,
                                                      16731.065310389302,
                                                      16713.46263663692,
                                                      16647.439245679256,
                                                      16588.221163820028,
                                                      16475.449843515013,
                                                      16528.640187034187,
                                                      16534.106193668733,
                                                      16578.250112917038,
                                                      16563.51753152722,
                                                      16565.85251404394,
                                                      16599.5167018772,
                                                      16562.50892038153,
                                                      16571.94743116972,
                                                      16689.39673273771,
                                                      16710.785256065774,
                                                      16712.606588416704,
                                                      16663.306454521073,
                                                      16569.611384863838,
                                                      16522.14372563892,
                                                      16579.687638660467,
                                                      16583.954839506318,
                                                      16606.589895674788,
                                                      16605.145806109893,
                                                      16537.21336091995,
                                                      16549.389684701124,
                                                      16588.771126081658,
                                                      16571.051559256317,
                                                      16473.582867086327,
                                                      16523.81480321521,
                                                      16576.32413292483,
                                                      16653.340147597617,
                                                      16642.36133870722,
                                                      16706.135549754577,
                                                      16660.87367101332,
                                                      16685.07782434675,
                                                      16702.921065553997,
                                                      16717.80065833992,
                                                      16718.361228055077,
                                                      16872.711269156855,
                                                      16876.508826514393,
                                                      16945.238957407422,
                                                      16863.89972224021,
                                                      16818.96041503547,
                                                      16811.640755079494,
                                                      16800.757153907303,
                                                      16742.097263210784,
                                                      16732.415628379225,
                                                      16748.175436876507,
                                                      16822.048915729945,
                                                      16758.304762996395,
                                                      16778.388346018986,
                                                      16770.200488633123,
                                                      16698.63315315737,
                                                      16702.445985125098,
                                                      16635.991189053635,
                                                      16605.666730543526,
                                                      16596.31834360901,
                                                      16612.110649158658,
                                                      16643.89438080358,
                                                      16678.76995406288,
                                                      16671.949239570313
                                                     ]),
                                                     lastUpdated: "2022-11-30T21:55:24.226Z"),
                              publicInterestStats: PublicInterestStats(alexaRank: 9440,
                                                                       bingMatches: nil
                                                                      ),
                              lastUpdated: "2022-11-30T21:55:24.226Z")
}