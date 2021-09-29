import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct HackleyCSGithubIo: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
        case projects
        case about
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://hackleycs.github.io")!
    var name = "Hackley CS"
    var description = "Hackley School's CS Club"
    var language: Language { .english }
    var imagePath: Path? { Path("images") }
}

// This will generate your website using the built-in Foundation theme:
try HackleyCSGithubIo().publish(
    withTheme: .myTheme,
    deployedUsing: .gitHub("hackleyCS/hackleyCS.github.io", useSSH: false)
)
