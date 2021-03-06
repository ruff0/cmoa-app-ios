//
//  CISeeArtworkButton.m
//  International
//
//  Created by Dimitry Bentsionov on 8/6/13.
//  Copyright (c) 2013 Carnegie Museums. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "CISeeArtworkButton.h"

@implementation CISeeArtworkButton

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self postInit];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self postInit];
    }
    return self;
}

- (void)postInit {
    // Text alignment
    self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    self.contentEdgeInsets = UIEdgeInsetsMake(10, 15, 10, 15);
    
    // Style
    self.titleLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:15.0f];
    [self setTitleColor:[UIColor colorFromHex:@"#556270"] forState:UIControlStateNormal];
    [self setTitleColor:[UIColor colorFromHex:@"#556270" alpha:0.6f] forState:UIControlStateHighlighted];
    
    // Sep line
    CGRect frame = (CGRect){{0.0f, self.frame.size.height - 1.0f}, {self.frame.size.width, 1.0f}};
    sepView = [[UIView alloc] initWithFrame:frame];
    sepView.backgroundColor = [UIColor colorFromHex:@"#e0e0e0"];
    sepView.userInteractionEnabled = NO;
    [self addSubview:sepView];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    // Set sep line position
    sepView.frame = (CGRect){{0.0f, self.frame.size.height - 1.0f}, {self.frame.size.width, 1.0f}};
    if (sepView2 != nil) {
        sepView2.frame = (CGRect){{0.0f, 0.0f}, {self.frame.size.width, 1.0f}};
    }
}

- (void)addTopSeparator {
    // Sep line
    CGRect frame = (CGRect){{0.0f, 0.0f}, {self.frame.size.width, 1.0f}};
    sepView2 = [[UIView alloc] initWithFrame:frame];
    sepView2.backgroundColor = [UIColor colorFromHex:@"#e0e0e0"];
    sepView2.userInteractionEnabled = NO;
    [self addSubview:sepView2];
}

@end