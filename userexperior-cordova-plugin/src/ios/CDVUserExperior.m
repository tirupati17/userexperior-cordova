#import "CDVUserExperior.h"
#import <UserExperior/UserExperior-Swift.h>

@implementation CDVUserExperior

- (void)startRecording:(CDVInvokedUrlCommand *)command {
    CDVPluginResult* pluginResult = nil;
    NSString* apiKey = command.arguments[0];
    
    if (apiKey.length > 0) {
        NSLog(@"UserExperior initiated with given key %@ via cordova", apiKey);   
        [UserExperior initialize:apiKey];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end

