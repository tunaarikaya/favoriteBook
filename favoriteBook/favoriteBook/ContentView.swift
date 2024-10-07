import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(myFavorites) { favorite in
                    Section(header: Text(favorite.title)) {
                        ForEach(favorite.elements) { element in
                            NavigationLink(destination: DetailView(element: element)) {
                                VStack(alignment: .leading) {
                                    Text(element.name)
                                        .font(.headline)
                                    Text(element.description)
                                        .font(.subheadline)
                                        .lineLimit(2)
                                        .truncationMode(.tail)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("My Favorites")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
