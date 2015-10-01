//
//  ImageInfo.h
//  JsonTest
//
//  Created by lunarboat on 15/9/12.
//  Copyright (c) 2015年 lunarboat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ImageInfo : NSObject

@property (nonatomic, copy) NSString *iUrl;
@property (nonatomic, assign) int iWidth;
@property (nonatomic, assign) int iHeight;

+(ImageInfo*)parseJsonFromDictionary:(NSDictionary*)dictionary;

@end
