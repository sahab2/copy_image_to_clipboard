#import "CopyImageToClipboardPlugin.h"
#if __has_include(<copy_image_to_clipboard/copy_image_to_clipboard-Swift.h>)
#import <copy_image_to_clipboard/copy_image_to_clipboard-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "copy_image_to_clipboard-Swift.h"
#endif

@implementation CopyImageToClipboardPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCopyImageToClipboardPlugin registerWithRegistrar:registrar];
}
@end
