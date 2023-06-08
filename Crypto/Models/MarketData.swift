//
//  MarketData.swift
//  Crypto
//
//  Created by Mikhail Ustyantsev on 08.06.2023.
//

import Foundation

//JSON data: 
/*
 URL:  https://api.coingecko.com/api/v3/global
 
 
 JSON Response:
 
 {
   "data": {
     "active_cryptocurrencies": 10004,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 752,
     "total_market_cap": {
       "btc": 43462969.14287942,
       "eth": 621069074.222991,
       "ltc": 13040419199.047411,
       "bch": 10248133605.88807,
       "bnb": 4342897472.631061,
       "eos": 1290259112337.3794,
       "xrp": 2202957262063.0303,
       "xlm": 13113232712185.8,
       "link": 191566240125.55087,
       "dot": 228917932129.99402,
       "yfi": 189573639.25344682,
       "usd": 1147754859498.0825,
       "aed": 4215692121387.8657,
       "ars": 280351003695202.8,
       "aud": 1711130332282.7195,
       "bdt": 124242941617724.06,
       "bhd": 432752935489.73596,
       "bmd": 1147754859498.0825,
       "brl": 5650856275252.871,
       "cad": 1533747114257.0083,
       "chf": 1033589979133.5284,
       "clp": 909400607826117.1,
       "cny": 8166849702758.611,
       "czk": 25208713856586.168,
       "dkk": 7941855317651.194,
       "eur": 1066008315140.0529,
       "gbp": 916184986800.6088,
       "hkd": 8993864466769.967,
       "huf": 393293787970255.7,
       "idr": 17049196367674022,
       "ils": 4202875142871.852,
       "inr": 94690437015390.95,
       "jpy": 159654750513513.6,
       "krw": 1491782980279123.8,
       "kwd": 352802627486.8185,
       "lkr": 335360571055110.4,
       "mmk": 2410173598411192.5,
       "mxn": 19953580501791.04,
       "myr": 5300905818591.91,
       "ngn": 530457863414230.06,
       "nok": 12527654766542.553,
       "nzd": 1885687777844.343,
       "php": 64289194092820.83,
       "pkr": 329577807904875,
       "pln": 4776350858420.073,
       "rub": 94127384061722.05,
       "sar": 4304406685497.9136,
       "sek": 12422033773352.113,
       "sgd": 1542540064235.6245,
       "thb": 39897437224412.445,
       "try": 26829343718197.457,
       "twd": 35258224707624.63,
       "uah": 42381504702746.38,
       "vef": 114924694081.54327,
       "vnd": 26967925819519756,
       "zar": 21622140606335,
       "xdr": 862759293600.693,
       "xag": 47277950890.889946,
       "xau": 583025035.9792417,
       "bits": 43462969142879.42,
       "sats": 4346296914287942
     },
     "total_volume": {
       "btc": 1438457.7842756836,
       "eth": 20555007.216650713,
       "ltc": 431587921.327298,
       "bch": 339173964.650826,
       "bnb": 143733269.931026,
       "eos": 42702634000.29136,
       "xrp": 72909446467.49635,
       "xlm": 433997769684.18445,
       "link": 6340108712.019937,
       "dot": 7576306633.589257,
       "yfi": 6274161.256244191,
       "usd": 37986289124.836395,
       "aed": 139523260092.63293,
       "ars": 9278544276833.742,
       "aud": 56631859141.76244,
       "bdt": 4111965427944.171,
       "bhd": 14322464410.495703,
       "bmd": 37986289124.836395,
       "brl": 187021695877.2199,
       "cad": 50761154130.09718,
       "chf": 34207868918.16721,
       "clp": 30097676462281.668,
       "cny": 270291440267.77356,
       "czk": 834311861193.3452,
       "dkk": 262844988010.63162,
       "eur": 35280791654.498245,
       "gbp": 30322213417.298523,
       "hkd": 297662460896.6748,
       "huf": 13016517784445.236,
       "idr": 564263089116250.2,
       "ils": 139099067201.97595,
       "inr": 3133890732901.541,
       "jpy": 5283960649761.102,
       "krw": 49372302048168.83,
       "kwd": 11676415482.637848,
       "lkr": 11099150230337.967,
       "mmk": 79767513413388.28,
       "mxn": 660387078080.5863,
       "myr": 175439676323.05743,
       "ngn": 17556123244825.68,
       "nok": 414617382867.03827,
       "nzd": 62409041909.60226,
       "php": 2127726050735.7458,
       "pkr": 10907762922196.791,
       "pln": 158078916563.2006,
       "rub": 3115255837031.866,
       "sar": 142459372324.24814,
       "sek": 411121732596.61475,
       "sgd": 51052167091.082596,
       "thb": 1320452336319.708,
       "try": 887948501437.6141,
       "twd": 1166912173526.299,
       "uah": 1402665454091.965,
       "vef": 3803567130.069877,
       "vnd": 892535038122510.6,
       "zar": 715610025758.7092,
       "xdr": 28554027631.115673,
       "xag": 1564719066.0177398,
       "xau": 19295895.286743168,
       "bits": 1438457784275.6836,
       "sats": 143845778427568.34
     },
     "market_cap_percentage": {
       "btc": 44.627169709084896,
       "eth": 19.352621945716724,
       "usdt": 7.265935138578186,
       "bnb": 3.593143077842057,
       "usdc": 2.4828905228057563,
       "xrp": 2.359996180923285,
       "steth": 1.1504053617189676,
       "ada": 0.9992978804858036,
       "doge": 0.8291825318483911,
       "sol": 0.6513659774323077
     },
     "market_cap_change_percentage_24h_usd": -1.0736596695273228,
     "updated_at": 1686233924
   }
 }
 
 */

struct GlobalData: Codable {
    let data: MarketData?
}

struct MarketData: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double

    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { (key, value) in
            return key == "usd"
        }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
  
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
    
}
