//
//  Box.m
//  Lab2
//
//  Created by yoshizawarei on 2018/09/05.
//  Copyright © 2018年 yoshizawarei. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype)initWithWidth: (float) width
                    andHeight: (float) height
                    andLength: (float) length
{
    self = [super init];
    if (self) {
        _width = width;
        _height = height;
        _length = length;

    }
    return self;
}

- (float) volume {
    return _width * _height * _length;
}

- (int) boxInBox: (Box *) box1{
    return 0;
}


@end
