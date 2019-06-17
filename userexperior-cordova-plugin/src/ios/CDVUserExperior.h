#import <Cordova/CDVPlugin.h>

@interface CDVUserExperior : CDVPlugin

- (void)startRecording:(CDVInvokedUrlCommand*)command;
- (void)setCustomTag:(CDVInvokedUrlCommand*)command;
- (void)setUserIdentifier:(CDVInvokedUrlCommand*)command;
- (void)resumeRecording:(CDVInvokedUrlCommand*)command;
- (void)pauseRecording:(CDVInvokedUrlCommand*)command;
- (void)stopRecording:(CDVInvokedUrlCommand*)command;

@end
