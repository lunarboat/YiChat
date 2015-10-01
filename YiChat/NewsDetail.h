//
//  NewsDetail.h
//  JsonTest
//
//  Created by lunarboat on 15/9/14.
//  Copyright (c) 2015年 lunarboat. All rights reserved.
//

#import <Foundation/Foundation.h>

@class NewsDetailImage,NewsDetailData,NewsDetailComments;
@interface NewsDetail : NSObject

@end

@interface NewsDetailImage : NSObject

@property (nonatomic, copy) NSString *url;

@property (nonatomic, assign) NSInteger width;

@property (nonatomic, assign) NSInteger height;

@end

@interface NewsDetailData : NSObject

@property (nonatomic, copy) NSString *content;

@property (nonatomic, copy) NSString *data_type;

@property (nonatomic, retain) NewsDetailImage *image;

+(NewsDetailData*)parseDataFromDictionary:(NSDictionary*)dictionary;

@end

@interface NewsDetailComments : NSObject

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *info;

+(NewsDetailComments*)parseCommentsFromDictionary:(NSDictionary*)dictionary;

@end

