//
//  Message.m
//  BubbleTest
//
//  Created by lunarboat on 15/8/19.
//  Copyright (c) 2015年 lunarboat. All rights reserved.
//

#import "Message.h"

@implementation Message

-(id)initWithIsSelf:(BOOL)isSelf name:(NSString*)name text:(NSString*)text imageName:(NSString*)imageName bubbleImage:(NSString*)bubbleImage{
    self = [super init];
    if (self) {
        self.isSelf = isSelf;
        self.name = name;
        self.text = text;
        self.imageName = imageName;
        self.bubbleImage = bubbleImage;
    }
    return self;
}

@end
