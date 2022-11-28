# ComputeUI

Build server side rendered webpages in SwiftUI

```swift
import ComputeUI

let router = Router()

router.get("/") { req, _ in
    ScrollView {
        Text("Hello, Swift")
            .font(.title)

        Text("This is a server rendered SwiftUI website")
            .font(.subheadline)

        Text("Your ip address \(req.clientIpAddress().stringValue)")
    }
}

try await router.listen()
```
