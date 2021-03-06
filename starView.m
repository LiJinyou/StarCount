//
//  starView.m
//  eCarter
//
//  Created by lijingyou on 15/7/4.
//  Copyright (c) 2015年 kinsuft173. All rights reserved.
//

#import "starView.h"

@implementation starView


- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    [self initUI];
}

-(void)initUI
{
    self.array_Star=[NSArray arrayWithObjects:self.img_star1,self.img_star2,self.img_star3,self.img_star4,self.img_star5, nil];
    
    [self setStarForValue:self.whichValue];
}



-(void)setStarForValue:(CGFloat)value
{
    int whichStar=(int)value;

    for (int i=0; i<self.array_Star.count; i++) {
        UIButton *button=[self.array_Star objectAtIndex:i];
        
        if (i<whichStar) {
            [button setImage:[UIImage imageNamed:star_1] forState:UIControlStateNormal];

        }
        else
        {
            [button setImage:[UIImage imageNamed:star_0] forState:UIControlStateNormal];
        }
    }
}

          
@end






