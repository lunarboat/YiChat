//
//  News.m
//  JsonTest
//
//  Created by lunarboat on 15/9/12.
//  Copyright (c) 2015年 lunarboat. All rights reserved.
//

#import "News.h"

@implementation News

+(News*)parseJsonFromDictionary:(NSDictionary*)dictionary{
    News *news = [[News alloc]init];
    news.nId = [[dictionary objectForKey:@"id"]intValue];
    news.nType = [[dictionary objectForKey:@"type"]intValue];
    news.nChannel = [dictionary objectForKey:@"channel"];
    news.nNewsTitle = [dictionary objectForKey:@"news_title"];
    news.nIntro = [dictionary objectForKey:@"intro"];
    news.nSourceUrl = [NSString stringWithFormat:@"%@%@",HostURL,[dictionary objectForKey:@"source_url"]];
    news.nTime = [dictionary objectForKey:@"time"];
    news.nSource = [dictionary objectForKey:@"source"];
    news.nReadTimes = [[dictionary objectForKey:@"readtimes"]intValue];
    news.nAuther = [dictionary objectForKey:@"auther"];
//    news.nImages = [dictionary objectForKey:@"images"];
    NSArray *imagesArr = [dictionary objectForKey:@"images"];
    if (!imagesArr) {
        return nil;
    }
    NSMutableArray *imageInfoArr = [[NSMutableArray alloc]init];
    for (NSDictionary *imagesDic in imagesArr) {
        ImageInfo *imageInfo = [ImageInfo parseJsonFromDictionary:imagesDic];
        [imageInfoArr addObject:imageInfo];
        
    }
    news.nImages = imageInfoArr;

    
    
    return news;
}

//+ (NSDictionary *)objectClassInArray{
//    return @{@"news_list" : [News_List class]};
//}
//@end
//@implementation Info
//
//@end
//
//
//@implementation News_List
//
//+ (NSDictionary *)objectClassInArray{
//    return @{@"images" : [Images class]};
//}
//
//@end
//
//
//@implementation Images
//
@end


