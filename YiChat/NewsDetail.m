//
//  NewsDetail.m
//  JsonTest
//
//  Created by lunarboat on 15/9/14.
//  Copyright (c) 2015年 lunarboat. All rights reserved.
//

#import "NewsDetail.h"

@implementation NewsDetail

@end

@implementation NewsDetailImage

+(NewsDetailImage*)parseImageFromDictionary:(NSDictionary*)dictionary{
    NewsDetailImage *image = [[NewsDetailImage alloc]init];
    image.width = [[dictionary objectForKey:@"width"]integerValue];
    image.height = [[dictionary objectForKey:@"height"]integerValue];
    image.url = [dictionary objectForKey:@"url"];
    return image;
}

@end


@implementation NewsDetailData

+(NewsDetailData*)parseDataFromDictionary:(NSDictionary*)dictionary{
    NewsDetailData *data = [[NewsDetailData alloc]init];
    data.data_type = [dictionary objectForKey:@"data_type"];
    switch ([data.data_type intValue]) {
        case 1:
            data.content = [dictionary objectForKey:@"content"];
            break;
        case 2:
            data.image = [NewsDetailImage parseImageFromDictionary:[dictionary objectForKey:@"image"]];
        default:
            break;
    }
    return data;
}
@end


@implementation NewsDetailComments

+(NewsDetailComments*)parseCommentsFromDictionary:(NSDictionary*)dictionary{
    NewsDetailComments *comment = [[NewsDetailComments alloc]init];
    comment.name = [dictionary objectForKey:@"name"];
    comment.info = [dictionary objectForKey:@"info"];
    return comment;
}

@end


