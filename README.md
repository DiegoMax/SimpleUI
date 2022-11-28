#  SimpleUI

This is a simple project showing some basic things that get asked all the time.

![Screenshot](https://raw.githubusercontent.com/DiegoMax/SimpleUI/main/Images/screenshot.png)

Here you will see :

1. Proper [NSTableView](https://developer.apple.com/documentation/appkit/nstableview) configuration with Auto Layout
2. Dynamic height for table rows based on auto layout
3. Use of a single source of truth for both content an selection
4. Use of a [NSSplitViewController](https://developer.apple.com/documentation/appkit/nssplitviewcontroller) for a basic Master / Detail UI
5. Proper use of responder chain with NSSplitViewController's children
6. Communication between several UI controls and a single centralized [NSArrayController](https://developer.apple.com/documentation/appkit/nsarraycontroller) with [Cocoa Bindings](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/CocoaBindings/CocoaBindings.html) to avoid writing UI glue code.
7. Runtime instantiation of a custom [NSTableCellView](https://developer.apple.com/documentation/appkit/nstablecellview) for rendering a sidebar
8. Use of [NotificationCenter](https://developer.apple.com/documentation/foundation/nsnotificationcenter) to notify cells about needed UI updates

Credits :

Part of this code uses [LoremSwiftum](https://github.com/lukaskubanek/LoremSwiftum)
