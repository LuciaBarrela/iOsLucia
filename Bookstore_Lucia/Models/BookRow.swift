//
//  BookRow.swift
//  Bookstore_Lucia
//
//  Created by Lucia Barrela on 20/10/2023.
//

import SwiftUI

struct BookRow: View {
    let book: Book

    var body: some View {
        HStack {
        
            URLImageView(url: book.volumeInfo.imageLinks?.thumbnail)
            .frame(width: 100, height: 150) // Adjust dimensions as needed
            .cornerRadius(10) // Apply a corner radius for a rounded look

            
            VStack(alignment: .leading) {
                Text(book.volumeInfo.title)
                    .font(.headline)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .lineLimit(3) // Limits the title lines
            }
            Spacer()
        }
        .padding(10)
    }
}