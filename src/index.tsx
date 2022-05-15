import { NativeModules, Platform } from 'react-native';

const LINKING_ERROR =
  `The package 'setapp' doesn't seem to be linked. Make sure: \n\n` +
  Platform.select({ ios: "- You have run 'pod install'\n", default: '' }) +
  '- You rebuilt the app after installing the package\n' +
  '- You are not using Expo managed workflow\n';

const setapp = NativeModules.setapp
  ? NativeModules.setapp
  : new Proxy(
      {},
      {
        get() {
          throw new Error(LINKING_ERROR);
        },
      }
    );

export function getInt(key: string, def: number): Promise<number> {
  return setapp.getInt(key, def);
}

export function getLong(key: string, def: number): Promise<number> {
  return setapp.getLong(key, def);
}

export function getFloat(key: string, def: number): Promise<number> {
  return setapp.getFloat(key, def);
}

export function getString(key: string, def: string): Promise<string> {
  return setapp.getString(key, def);
}

export function getBoolean(key: string, def: boolean): Promise<boolean> {
  return setapp.getBoolean(key, def);
}

export function getIntOrNull(key: string): Promise<number | null> {
  return setapp.getIntOrNull(key);
}

export function getLongOrNull(key: string): Promise<number | null> {
  return setapp.getLongOrNull(key);
}

export function getFloatOrNull(key: string): Promise<number | null> {
  return setapp.getFloatOrNull(key);
}

export function getStringOrNull(key: string): Promise<string | null> {
  return setapp.getStringOrNull(key);
}

export function getBooleanOrNull(key: string): Promise<boolean | null> {
  return setapp.getBooleanOrNull(key);
}
