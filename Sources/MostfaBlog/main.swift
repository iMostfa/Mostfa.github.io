import Foundation
import Publish
import Plot

import SplashPublishPlugin
// This type acts as the configuration for your website.
struct MostfaBlog: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://your-website-url.com")!
    var name = "Mostfa's Blog  |  كلامٌ مُصطفى"
    var description = "هنا مصطفى و سويفت 🍎 و حاجات تانية خطيرة "
    var language: Language { .arabic }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try MostfaBlog().publish(withTheme: .foundation,plugins: [.splash(withClassPrefix: "")])

