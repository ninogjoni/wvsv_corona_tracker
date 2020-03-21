package de.govhackathon.wvsvcoronatracker.services;

public interface PushService {

    /**
     * Send a push notification to the given device
     * @param title - title to use
     * @param msg - message to send
     * @param deviceToken - token, identifying the device
     */
    void sendPushToDevice(String title, String msg, String deviceToken);

}
