//
//  GameModel.h
//  beisbol
//
//  Created by lrvictor on 11/8/17.
//  Copyright © 2017 UAG. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@protocol GameModel;

@interface GameModel : JSONModel
@property (nonatomic) NSString *time;
@property (nonatomic) NSString *startTime;
@property (nonatomic) NSString *away_name;
@property (nonatomic) NSString *home_name;
@property (nonatomic) NSString *away_logo;
@property (nonatomic) NSString *home_logo;
@end

