#import "Setapp.h"

@implementation Setapp

RCT_EXPORT_MODULE(setapp)

RCT_REMAP_METHOD(getInt,
                 getIntWithKey:(nonnull NSString*)key withDef:(nonnull NSNumber*)def
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)
{
  resolve(def);
}

RCT_REMAP_METHOD(getLong,
                 getLongtWithKey:(nonnull NSString*)key withDef:(nonnull NSNumber*)def
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)
{
  resolve(def);
}

RCT_REMAP_METHOD(getFloat,
                 getFloattWithKey:(nonnull NSString*)key withDef:(nonnull NSNumber*)def
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)
{
  resolve(def);
}

RCT_REMAP_METHOD(getString,
                 getStringWithKey:(nonnull NSString*)key withDef:(nonnull NSString*)def
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)
{
  resolve(def);
}

RCT_REMAP_METHOD(getBoolean,
                 getBooleanWithKey:(nonnull NSString*)key withDef:(BOOL)def
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)
{
  resolve(@(def));
}

RCT_REMAP_METHOD(getIntOrNull,
                 getIntWithKey:(nonnull NSString*)key
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)
{
  resolve(nil);
}

RCT_REMAP_METHOD(getLongOrNull,
                 getLongtWithKey:(nonnull NSString*)key
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)
{
  resolve(nil);
}

RCT_REMAP_METHOD(getFloatOrNull,
                 getFloattWithKey:(nonnull NSString*)key
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)
{
  resolve(nil);
}

RCT_REMAP_METHOD(getStringOrNull,
                 getStringWithKey:(nonnull NSString*)key
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)
{
  resolve(nil);
}

RCT_REMAP_METHOD(getBooleanOrNull,
                 getBooleanWithKey:(nonnull NSString*)key
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)
{
  resolve(nil);
}

@end
