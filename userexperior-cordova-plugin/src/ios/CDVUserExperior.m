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

- (void)setCustomTag:(CDVInvokedUrlCommand*)command {
    CDVPluginResult *pluginResult = nil;
    NSString *tag = command.arguments[0];
    NSString *type = command.arguments[1];

    if (tag.length>0 && type.length>0) {
        [UserExperior setCustomTag:tag customType:type];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setUserIdentifier:(CDVInvokedUrlCommand*)command {
    CDVPluginResult* pluginResult = nil;
    NSString *identifier = command.arguments[0];

    if (identifier.length > 0) {
        [UserExperior setUserIdentifier:identifier];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)resumeRecording:(CDVInvokedUrlCommand*)command {
    [UserExperior resumeRecording];

    [self.commandDelegate sendPluginResult:[CDVPluginResult resultWithStatus:CDVCommandStatus_OK] callbackId:command.callbackId];
}

- (void)pauseRecording:(CDVInvokedUrlCommand*)command {
    [UserExperior pauseRecording];

    [self.commandDelegate sendPluginResult:[CDVPluginResult resultWithStatus:CDVCommandStatus_OK] callbackId:command.callbackId];
}

- (void)stopRecording:(CDVInvokedUrlCommand*)command {
    [UserExperior stopRecording];

    [self.commandDelegate sendPluginResult:[CDVPluginResult resultWithStatus:CDVCommandStatus_OK] callbackId:command.callbackId];
}

@end

