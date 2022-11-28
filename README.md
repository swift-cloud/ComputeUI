# ComputeUI

Build server side rendered webpages in SwiftUI

```swift
import ComputeUI

struct IndexPage: View {

    @Environment(\.request) var req

    var body: some View {
        VStack {
            Text("Hello, Swift")
                .font(.title)

            Text("This is a server rendered SwiftUI website")
                .font(.subheadline)

            Text("Your ip address \(req.clientIpAddress().stringValue)")
        }
    }
}

try await Router()
    .get("/", IndexPage())
    .listen()
```
