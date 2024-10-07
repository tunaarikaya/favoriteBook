import SwiftUI

//detayların gorunumu

struct DetailView: View {
    var element : favoriteElements
    var body:some View {
        VStack(alignment: .leading) {
            Text(element.name)
                .font(.largeTitle)
                .padding(.bottom)
            Image(element.imageName)
                .resizable()

            .aspectRatio(contentMode: .fit)
            .padding()
            Text(element.description)
                .font(.body)
                .padding()
            Spacer()
        }
        .navigationTitle(element.name)
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
