package io.setapp.nodejs;

import androidx.annotation.NonNull;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.module.annotations.ReactModule;
import io.setapp.android.settings.client.Settings;

@ReactModule(name = SetappModule.NAME)
public class SetappModule extends ReactContextBaseJavaModule {
    public static final String NAME = "setapp";

    public SetappModule(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @Override
    @NonNull
    public String getName() {
        return NAME;
    }

    @ReactMethod
    public void getInt(String key, int def, Promise promise) {
        try {
            promise.resolve(Settings.getInt(key, def));
        } catch (Throwable throwable) {
            promise.reject(throwable);
        }
    }

    @ReactMethod
    public void getIntOrNull(String key, Promise promise) {
        try {
            promise.resolve(Settings.getIntOrNull(key));
        } catch (Throwable throwable) {
            promise.reject(throwable);
        }
    }

    @ReactMethod
    public void getLong(String key, long def, Promise promise) {
        try {
            promise.resolve(Settings.getLong(key, def));
        } catch (Throwable throwable) {
            promise.reject(throwable);
        }
    }

    @ReactMethod
    public void getLongOrNull(String key, Promise promise) {
        try {
            promise.resolve(Settings.getLongOrNull(key));
        } catch (Throwable throwable) {
            promise.reject(throwable);
        }
    }

    @ReactMethod
    public void getFloat(String key, float def, Promise promise) {
        try {
            promise.resolve(Settings.getFloat(key, def));
        } catch (Throwable throwable) {
            promise.reject(throwable);
        }
    }

    @ReactMethod
    public void getFloatOrNull(String key, Promise promise) {
        try {
            promise.resolve(Settings.getFloatOrNull(key));
        } catch (Throwable throwable) {
            promise.reject(throwable);
        }
    }

    @ReactMethod
    public void getString(String key, String def, Promise promise) {
        try {
            promise.resolve(Settings.getString(key, def));
        } catch (Throwable throwable) {
            promise.reject(throwable);
        }
    }

    @ReactMethod
    public void getStringOrNull(String key, Promise promise) {
        try {
            promise.resolve(Settings.getStringOrNull(key));
        } catch (Throwable throwable) {
            promise.reject(throwable);
        }
    }

    @ReactMethod
    public void getBoolean(String key, boolean def, Promise promise) {
        try {
            promise.resolve(Settings.getBoolean(key, def));
        } catch (Throwable throwable) {
            promise.reject(throwable);
        }
    }

    @ReactMethod
    public void getBooleanOrNull(String key, Promise promise) {
        try {
            promise.resolve(Settings.getBooleanOrNull(key));
        } catch (Throwable throwable) {
            promise.reject(throwable);
        }
    }
}
