//
//  LSUmengManager.h
//  LSUmengShare
//
//  Created by Shawn Li on 15/7/14.
//  Copyright (c) 2015年 Shawn Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSUmengShare.h"

@interface LSUmengManager : NSObject
/*!
 *  设置AppKey
 *
 *  @param appKey 友盟AppKey
 */
+ (void)umengSetAppKey:(NSString *)appKey;

/*!
 *  获取AppKey
 *
 *  @return AppKey
 */
+ (NSString *)umengGetAppKey;

/*!
 *  集成新浪微博SSO
 *
 *  @param redirectURL 重定向URL
 */
+ (void)umengSetSinaSSOWithRedirectURL:(NSString *)redirectURL;

/*!
 *  集成微信
 *
 *  @param wxAppID   微信AppID
 *  @param appSecret appSecret
 *  @param url       微信消息url地址
 */
+ (void)umengSetWXAppId:(NSString *)wxAppID appSecret:(NSString *)appSecret url:(NSString *)url;

/*!
 *  集成QQ和QQ空间
 *
 *  @param qqAppID   QQAppID
 *  @param appSecret appSecret
 *  @param url       QQ和QQ空间消息url地址
 */
+ (void)umengSetQQAppId:(NSString *)qqAppID appSecret:(NSString *)appSecret url:(NSString *)url;

///*!
// *  集成腾讯微博
// *
// *  @param url 腾讯微博回调地址
// */
//+ (void)umengSetTencentWeiBo:(NSString *)url;
//
///*!
// *  集成人人网
// */
//+ (void)umengSetRenRenWang;


/*!
 *  集成SSO回调
 *
 *  @param url 回调地址
 *
 *  @return
 */
+ (BOOL)umengHandleOpenURL:(NSURL *)url;

@end
