//
//  News.h
//  JsonTest
//
//  Created by lunarboat on 15/9/12.
//  Copyright (c) 2015年 lunarboat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ImageInfo.h"

//@class Info,News_List,Images;
@interface News : NSObject

@property (nonatomic, assign) int nId;
@property (nonatomic, assign) int nType;
@property (nonatomic, copy) NSString *nChannel;
@property (nonatomic, copy) NSString *nNewsTitle;
@property (nonatomic, copy) NSString *nIntro;
@property (nonatomic, copy) NSString *nSourceUrl;
@property (nonatomic, copy) NSString *nTime;
@property (nonatomic, copy) NSString *nSource;
@property (nonatomic, assign) int nReadTimes;
@property (nonatomic, copy) NSString *nAuther;
@property (nonatomic, copy) NSArray *nImages;

+(News*)parseJsonFromDictionary:(NSDictionary*)dictionary;
@end

//@property (nonatomic, strong) NSArray *news_list;
//
//@property (nonatomic, strong) Info *info;

//@interface Info : NSObject
//
//@property (nonatomic, assign) NSInteger pages;
//
//@property (nonatomic, copy) NSString *count;
//
//@property (nonatomic, assign) NSInteger currentpage;
//
//@property (nonatomic, copy) NSString *type;
//
//@end
//
//@interface News_List : NSObject
//
//@property (nonatomic, copy) NSString *source;
//
//@property (nonatomic, copy) NSString *channel;
//
//@property (nonatomic, copy) NSString *time;
//
//@property (nonatomic, assign) NSInteger id;
//
//@property (nonatomic, copy) NSString *auther;
//
//@property (nonatomic, strong) NSArray *images;
//
//@property (nonatomic, copy) NSString *intro;
//
//@property (nonatomic, assign) NSInteger type;
//
//@property (nonatomic, assign) NSInteger readtimes;
//
//@property (nonatomic, copy) NSString *source_url;
//
//@property (nonatomic, copy) NSString *news_title;
//
//@end
//
//@interface Images : NSObject
//
//@property (nonatomic, copy) NSString *url;
//
//@property (nonatomic, assign) NSInteger width;
//
//@property (nonatomic, assign) NSInteger height;
//
//@end
//

