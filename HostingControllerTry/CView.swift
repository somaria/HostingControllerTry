//
//  CView.swift
//  HostingControllerTry
//
//  Created by admin on 30/4/21.
//

import SwiftUI

struct CView: View {
    var body: some View {
        Text("Hello, World There!")
          .padding()
          .foregroundColor(.black)
          .frame(width: 200, height: 100, alignment: .center)
          .background(Color.blue)
    }
}

struct CView_Previews: PreviewProvider {
    static var previews: some View {
        CView()
    }
}
