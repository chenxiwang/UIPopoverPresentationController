//
//  NoArrowPopoverBackgroundView.m
//  FangChaCha
//
//  Created by wcx on 2018/4/12.
//  Copyright © 2018年 深圳市易图资讯股份有限公司. All rights reserved.
//

#import "NoArrowPopoverBackgroundView.h"
@interface NoArrowPopoverBackgroundView()
@property (nonatomic, strong) UIImageView *backgroundImageView;
@end
@implementation NoArrowPopoverBackgroundView
@synthesize arrowOffset = _arrowOffset,arrowDirection = _arrowDirection;
+ (CGFloat)arrowBase{
    return 0.001;
}

/* Describes the distance between each edge of the background view and the corresponding edge of its content view (i.e. if it were strictly a rectangle).
 */
+ (UIEdgeInsets)contentViewInsets{
    return UIEdgeInsetsMake(5, 5, 5, 5);
}

+ (CGFloat)arrowHeight{
    return 0.001;
}

- (instancetype )initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.shadowColor = [UIColor clearColor].CGColor;
      // self.backgroundColor = [UIColor redColor];
//        UIImage *bgImage = [[UIImage imageNamed:@"noArrowBg"] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
//        self.backgroundImageView = [[UIImageView alloc] initWithImage:bgImage];
//        [self addSubview:self.backgroundImageView];
    }
    return self;
}

- (void)setArrowOffset:(CGFloat)arrowOffset{
    _arrowOffset = arrowOffset;
}

- (CGFloat)arrowOffset{
    return _arrowOffset;
}

- (void)setArrowDirection:(UIPopoverArrowDirection)arrowDirection{
    _arrowDirection = arrowDirection;
}

- (UIPopoverArrowDirection )arrowDirection{
    return _arrowDirection;
}


//- (void)layoutSubviews{
//   // [super layoutSubviews];
//    
//    CGRect bgRect = self.bounds;
//  self.backgroundImageView.frame = bgRect;
//}

+ (BOOL)wantsDefaultContentAppearance{
    return NO;
}
@end
