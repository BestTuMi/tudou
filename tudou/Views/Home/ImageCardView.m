//
//  ImageCardView.m
//  tudou
//
//  Created by jinzelu on 15/6/3.
//  Copyright (c) 2015年 jinzelu. All rights reserved.
//

#import "ImageCardView.h"
#import "UIImageView+WebCache.h"

@implementation ImageCardView

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, frame.size.width-5, frame.size.height-45)];
        //        [self.imageView sd_setImageWithURL:[NSURL URLWithString:video.small_img] placeholderImage:[UIImage imageNamed:@"tudoulogo"]];
        [self addSubview:self.imageView];
        //
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, frame.size.height-40, frame.size.width-5, 20)];
        self.titleLabel.font = [UIFont systemFontOfSize:14];
        self.titleLabel.textColor = [UIColor blackColor];
        self.titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        //        self.titleLabel.text = video.title;
        [self addSubview:self.titleLabel];
        //
        self.pvLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, frame.size.height-20, frame.size.width-5, 20)];
        self.pvLabel.font = [UIFont systemFontOfSize:11];
        self.pvLabel.textColor = [UIColor lightGrayColor];
        //        self.pvLabel.text = video.pv;
        [self addSubview:self.pvLabel];
        //
        self.yaofengLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, frame.size.height-60, frame.size.width-10, 20)];
        self.yaofengLabel.font = [UIFont systemFontOfSize:11];
        self.yaofengLabel.textColor = [UIColor whiteColor];
        //        self.yaofengLabel.text = video.yaofeng;
        [self addSubview:self.yaofengLabel];
    }
    return self;
}

-(id)initWithFrame:(CGRect)frame video:(VideosModel *)video{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, frame.size.width-5, frame.size.height-45)];
//        [self.imageView sd_setImageWithURL:[NSURL URLWithString:video.small_img] placeholderImage:[UIImage imageNamed:@"tudoulogo"]];
        [self addSubview:self.imageView];
        //
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, frame.size.height-40, frame.size.width-5, 20)];
        self.titleLabel.font = [UIFont systemFontOfSize:14];
        self.titleLabel.textColor = [UIColor blackColor];
        self.titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
//        self.titleLabel.text = video.title;
        [self addSubview:self.titleLabel];
        //
        self.pvLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, frame.size.height-20, frame.size.width-5, 20)];
        self.pvLabel.font = [UIFont systemFontOfSize:11];
        self.pvLabel.textColor = [UIColor lightGrayColor];
//        self.pvLabel.text = video.pv;
        [self addSubview:self.pvLabel];
        //
        self.yaofengLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, frame.size.height-60, frame.size.width-10, 20)];
        self.yaofengLabel.font = [UIFont systemFontOfSize:11];
        self.yaofengLabel.textColor = [UIColor whiteColor];
//        self.yaofengLabel.text = video.yaofeng;
        [self addSubview:self.yaofengLabel];
    }
    return self;
}

-(void)setVideo:(VideosModel *)video{
    [self.imageView sd_setImageWithURL:[NSURL URLWithString:video.small_img] placeholderImage:[UIImage imageNamed:@"tudoulogo"]];
    self.titleLabel.text = video.title;
    self.pvLabel.text = video.pv;
    self.yaofengLabel.text = video.yaofeng;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
