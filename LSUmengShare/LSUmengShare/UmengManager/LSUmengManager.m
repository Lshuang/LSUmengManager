//
//  LSUmengManager.m
//  LSUmengShare
//
//  Created by Shawn Li on 15/7/14.
//  Copyright (c) 2015年 Shawn Li. All rights reserved.
//

#import "LSUmengManager.h"
#import "UMSocial.h"
#import "UMSocialWechatHandler.h"
#import "UMSocialSinaHandler.h"
#import "UMSocialQQHandler.h"

static NSString *staticUmengAppKey;
@implementation LSUmengManager
/*!
 *  设置AppKey
 *
 *  @param appKey 友盟AppKey
 */
+ (void)umengSetAppKey:(NSString *)appKey {
    [UMSocialData setAppKey:appKey];
    staticUmengAppKey = appKey;
}

/*!
 *  获取AppKey
 *
 *  @return AppKey
 */
+ (NSString *)umengGetAppKey {
    return staticUmengAppKey;
}

/*!
 *  集成新浪微博SSO
 *
 *  @param redirectURL 重定向URL
 */
+ (void)umengSetSinaSSOWithRedirectURL:(NSString *)redirectURL {
    [UMSocialSinaHandler openSSOWithRedirectURL:redirectURL];
}

/*!
 *  集成微信
 *
 *  @param wxAppID   微信AppID
 *  @param appSecret appSecret
 *  @param url       微信消息url地址
 */
+ (void)umengSetWXAppId:(NSString *)wxAppID appSecret:(NSString *)appSecret url:(NSString *)url {
    [UMSocialWechatHandler setWXAppId:wxAppID appSecret:appSecret url:url];
    
    //隐藏不可用分享平台
    [self hiddenNotInstallPlatforms];
}

/*!
 *  集成QQ和QQ空间
 *
 *  @param qqAppID   QQAppID
 *  @param appSecret appSecret
 *  @param url       QQ和QQ空间消息url地址
 */
+ (void)umengSetQQAppId:(NSString *)qqAppID appSecret:(NSString *)appSecret url:(NSString *)url {
    [UMSocialQQHandler setQQWithAppId:qqAppID appKey:appSecret url:url];
    
    //隐藏不可用分享平台
    [self hiddenNotInstallPlatforms];
}



/*! 隐藏不可用分享平台*/
+ (void)hiddenNotInstallPlatforms {
    [UMSocialConfig hiddenNotInstallPlatforms:@[UMShareToQQ,UMShareToQzone,UMShareToWechatTimeline,UMShareToWechatSession,UMShareToWechatFavorite]];
}

+ (BOOL)umengHandleOpenURL:(NSURL *)url {
    return [UMSocialSnsService handleOpenURL:url];
}
@end
