#import "BackgroundAudio.h"
#import <AVFoundation/AVFoundation.h>

@implementation BackgroundAudio

NSString* theCallbackId;

- (void)pluginInitialize {
  NSLog(@"---- init plugin start");

  AVAudioSession *audioSession = [AVAudioSession sharedInstance];
  BOOL ok;
  NSError *setCategoryError = nil;
  ok = [audioSession setCategory:AVAudioSessionCategoryPlayback error:&setCategoryError];

  NSLog(@"---- init plugin done");
}

/*
- (void) enable:(CDVInvokedUrlCommand*)command {
  // todo maybe just make this an onload plugin without a JS interface
  theCallbackId = command.callbackId;

  AVAudioSession *audioSession = [AVAudioSession sharedInstance];
  BOOL ok;
  NSError *setCategoryError = nil;
  ok = [audioSession setCategory:AVAudioSessionCategoryPlayback error:&setCategoryError];

	CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
  [self writeJavascript: [pluginResult toSuccessCallbackString:command.callbackId]];
}
*/

@end