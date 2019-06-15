var exec = require('cordova/exec');

var UserExperiorPlugin = function() {};

UserExperiorPlugin.startRecording = function(ueSdkAppVersionKey, successCallback, errorCallback)
{
	return exec(successCallback, errorCallback, "UserExperiorPlugin", "startRecording", [ueSdkAppVersionKey]);
};

UserExperiorPlugin.stopRecording = function(successCallback, errorCallback)
{
	return exec(successCallback, errorCallback, "UserExperiorPlugin", "stopRecording", []);
};

UserExperiorPlugin.pauseRecording = function(successCallback, errorCallback)
{
	return exec(successCallback, errorCallback, "UserExperiorPlugin", "pauseRecording", []);
};

UserExperiorPlugin.resumeRecording = function(successCallback, errorCallback)
{
	return exec(successCallback, errorCallback, "UserExperiorPlugin", "resumeRecording", []);
};

UserExperiorPlugin.setUserIdentifier = function(userIdentifier, successCallback, errorCallback)
{
	return exec(successCallback, errorCallback, "UserExperiorPlugin", "setUserIdentifier", [userIdentifier]);
};

UserExperiorPlugin.setCustomTag = function(customTag, type, successCallback, errorCallback)
{
	return exec(successCallback, errorCallback, "UserExperiorPlugin", "setCustomTag", [customTag, type]);
};

UserExperiorPlugin.startScreen = function(screenName, successCallback, errorCallback)
{
	return exec(successCallback, errorCallback, "UserExperiorPlugin", "startScreen", [screenName]);
};

UserExperiorPlugin.startTimer = function(timerName, successCallback, errorCallback)
{
	return exec(successCallback, errorCallback, "UserExperiorPlugin", "startTimer", [timerName]);
};

UserExperiorPlugin.endTimer = function(timerName, successCallback, errorCallback)
{
	return exec(successCallback, errorCallback, "UserExperiorPlugin", "endTimer", [timerName]);
};

UserExperiorPlugin.setDeviceLocation = function(latitude, longitude, successCallback, errorCallback)
{
	return exec(successCallback, errorCallback, "UserExperiorPlugin", "setDeviceLocation", [latitude, longitude]);
};

module.exports = UserExperiorPlugin;