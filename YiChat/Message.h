//
//  Message.h
//  BubbleTest
//
//  Created by lunarboat on 15/8/19.
//  Copyright (c) 2015年 lunarboat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Message : NSObject


@property (nonatomic,assign) BOOL isSelf;
@property (nonatomic,retain) NSString *name;
@property (nonatomic,retain) NSString *text;
@property (nonatomic,retain) NSString *imageName;
@property (nonatomic,retain) NSString *bubbleImage;

-(id)initWithIsSelf:(BOOL)isSelf name:(NSString*)name text:(NSString*)text imageName:(NSString*)imageName bubbleImage:(NSString*)bubbleImage;

@end
