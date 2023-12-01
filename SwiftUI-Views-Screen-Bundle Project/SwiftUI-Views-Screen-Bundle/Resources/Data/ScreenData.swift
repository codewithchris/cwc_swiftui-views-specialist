//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

class ScreenData {
    static func getSections() -> [SectionData] {
        return [
            SectionData(name: "Backgrounds", items:
                [
                    ViewItem(name: "Solid", view: AnyView(BackgroundSolid())),
                    ViewItem(name: "Linear Gradient", view: AnyView(BackgroundGradient())),
                    ViewItem(name: "Radial Gradient", view: AnyView(BackgroundRadialGradient())),
                    ViewItem(name: "Random Shapes", view: AnyView(BackgroundRandomShapes()))
            ]),
            SectionData(name: "Login", items:
                [
                    ViewItem(name: "Login", view: AnyView(Login())),
                    ViewItem(name: "Signup", view: AnyView(Signup())),
                    ViewItem(name: "Forgot Password", view: AnyView(ForgotPassword()))
            ]),
            SectionData(name: "Onboarding", items:
                [
                    ViewItem(name: "Step 1", view: AnyView(Onboarding1())),
                    ViewItem(name: "Step 2", view: AnyView(Onboarding2())),
                    ViewItem(name: "Step 3", view: AnyView(Onboarding3()))
            ]),
            SectionData(name: "BrowseData", items:
                [
                    ViewItem(name: "Explore", view: AnyView(Explore())),
                    ViewItem(name: "Explore with Scroll", view: AnyView(ExploreWithScroll())),
                    ViewItem(name: "Explore - Capsules", view: AnyView(ExploreWithCapsule()))
            ]),
            SectionData(name: "Budget", items:
                [
                    ViewItem(name: "Budget Master", view: AnyView(BudgetMaster())),
                    ViewItem(name: "Budget Detail", view: AnyView(BudgetCategories()))
            ]),
            SectionData(name: "Data Entry Forms", items:
                [
                    ViewItem(name: "Add Address", view: AnyView(AddAddress())),
                    ViewItem(name: "Add Credit Card", view: AnyView(AddCreditCard()))
            ]),
            SectionData(name: "Detail", items:
                [
                    ViewItem(name: "Product Detail", view: AnyView(ProductDetail()))
            ]),
            SectionData(name: "Health", items:
                [
                    ViewItem(name: "Running Goal", view: AnyView(RunningGoal()))
            ]),
            SectionData(name: "Lists", items:
                [
                    ViewItem(name: "Fruits", view: AnyView(ListOfFruits())),
                    ViewItem(name: "Contacts", view: AnyView(ListOfContacts())),
                    ViewItem(name: "Photos", view: AnyView(ListOfPhotos())),
                    ViewItem(name: "Songs", view: AnyView(ListOfSongs())),
                    ViewItem(name: "People", view: AnyView(ListOfPeople()))

            ]),
            SectionData(name: "Menus", items:
                [
                    ViewItem(name: "Tiles", view: AnyView(MenuTiles()))
            ]),
            SectionData(name: "Profiles", items:
                [
                    ViewItem(name: "Profile - Places Visited", view: AnyView(Profile1())),
                    ViewItem(name: "Profile - Connections", view: AnyView(Profile2()))
            ])
        ]
    }

}

struct SectionData: Identifiable {
    let id = UUID()
    var name = ""
    var items: [ViewItem]
}

struct ViewItem: Identifiable {
    let id = UUID()
    var name = ""
    var view: AnyView
}
