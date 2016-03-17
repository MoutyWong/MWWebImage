//
//  UIImageView+Extra.m
//  MWWebImage
//
//  Created by Mouty on 16/3/17.
//  Copyright © 2016年 Mouty. All rights reserved.
//

#import "UIImageView+Extra.h"

@implementation UIImageView (Extra)

- (void)setImageWithUrl:(NSString *)url{
    UIActivityIndicatorView * act = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    act.frame = CGRectMake((self.frame.size.width - act.frame.size.width)/2, (self.frame.size.height - act.frame.size.height)/2, 30, 30);
    act.color = [UIColor purpleColor];
    [act startAnimating];
    [self addSubview:act];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSData * imgData = [NSData dataWithContentsOfURL:[NSURL URLWithString:url]];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [act stopAnimating];
            self.image = [UIImage imageWithData:imgData];
        });
    });
}
@end
