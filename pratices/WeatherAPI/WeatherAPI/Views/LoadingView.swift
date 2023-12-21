//
//  LoadingView.swift
//  WeatherAPI
//
//  Created by user on 14/10/23.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
       ProgressView()
            .progressViewStyle(CircularProgressViewStyle (tint: .white))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
