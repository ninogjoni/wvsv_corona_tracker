package de.govhackathon.wvsvcoronatracker.services;

public interface PushService {
    void sendPushToOneDevice(final String appId, final string title, final string message, final string deviceToken);
}
