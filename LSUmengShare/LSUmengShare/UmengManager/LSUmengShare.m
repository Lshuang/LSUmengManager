//
//  LSUmengShare.m
//  LSUmengShare
//
//  Created by Shawn Li on 15/7/14.
//  Copyright (c) 2015年 Shawn Li. All rights reserved.
//

#import "LSUmengShare.h"
#import "LSUmengManager.h"
#import "UMSocial.h"
#import "UIVeiwController+Umeng.h"

@interface LSUmengShare ()<UMSocialUIDelegate>

@end
@implementation LSUmengShare
/**
 *  分享
 *
 *  @param vc    控制器
 *  @param text  文字
 *  @param image 图片
 */
+ (void)show:(UIViewController *)vc text:(NSString *)text image:(UIImage *)image {
    [UMSocialSnsService presentSnsIconSheetView:vc appKey:[LSUmengManager umengGetAppKey] shareText:text shareImage:image shareToSnsNames:@[UMShareToSina,UMShareToWechatFavorite,UMShareToWechatSession,UMShareToWechatTimeline,UMShareToTencent,UMShareToSms,UMShareToRenren,UMShareToQQ,UMShareToQzone,UMShareToDouban,UMShareToEmail,UMShareToFacebook,UMShareToTwitter] delegate:vc];
}
@end
