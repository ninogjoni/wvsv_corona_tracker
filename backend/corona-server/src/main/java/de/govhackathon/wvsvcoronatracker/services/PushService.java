package de.govhackathon.wvsvcoronatracker.services;

public interface PushService {

    /**
     * Send push notiication to specific device.
     */
    void sendPushToOneDevice(final String appId, final string title, final string message, final string deviceToken);
}
