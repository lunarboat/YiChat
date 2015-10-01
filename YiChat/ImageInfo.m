//
//  ImageInfo.m
//  JsonTest
//
//  Created by lunarboat on 15/9/12.
//  Copyright (c) 2015年 lunarboat. All rights reserved.
//

#import "ImageInfo.h"

@implementation ImageInfo

+(ImageInfo*)parseJsonFromDictionary:(NSDictionary*)dictionary{
    ImageInfo *imageInfo = [[ImageInfo alloc]init];
    imageInfo.iUrl = [NSString stringWithFormat:@"%@%@",HostURL,[dictionary objectForKey:@"url"]];
    imageInfo.iWidth = [[dictionary objectForKey:@"width"]intValue];
    imageInfo.iHeight = [[dictionary objectForKey:@"height"]intValue];;
    return imageInfo;
}

@end
