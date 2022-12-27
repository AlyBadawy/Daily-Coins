//
//  ChartView.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/27/22.
//

import SwiftUI
import Charts

struct ChartView: View {
  @StateObject var chartVM: ChartVM
  
  init(coinDetail: CoinDetail) {
    _chartVM = StateObject(wrappedValue: ChartVM(coin: coinDetail))
  }
  
  var body: some View {
    Chart {
      ForEach(chartVM.chartData) { item in
        LineMark(
          x: .value("Date", item.date),
          y: .value("Price", item.value)
        )
        .interpolationMethod(.cardinal)
        .foregroundStyle(chartVM.chartLineColor)
      }
    }
    .chartXScale(domain: ClosedRange(uncheckedBounds:
                                      (lower: chartVM.startDate,
                                       upper: chartVM.endDate)
                                    )
    )
    .chartXAxis {
      AxisMarks(position: .bottom, values: chartVM.xAxisValues) { value in
        AxisGridLine()
        AxisValueLabel() {
          if let dateValue = value.as(Date.self) {
            Text(dateValue.asShortDateString())
          }
        }
      }
    }
    .chartYScale(domain: ClosedRange(uncheckedBounds:
                                      (lower: chartVM.minPrice,
                                       upper: chartVM.maxPrice)
                                    )
    )
    .chartYAxis {
      AxisMarks(position: .leading, values: chartVM.yAxisValues) { value in
        AxisGridLine()
        AxisValueLabel() {
          if let doubleValue = value.as(Double.self) {
            Text(doubleValue.formattedWithAbbreviation())
          }
        }
      }
    }
    .frame(height: 220)
    .padding()
    .shadow(color: chartVM.chartLineColor.opacity(0.8), radius: 6)
    .shadow(color: chartVM.chartLineColor.opacity(0.4), radius: 8)
  }
}

struct ChartView_Previews: PreviewProvider {
  static var previews: some View {
    ChartView(coinDetail: dev.coinDetail)
  }
}
