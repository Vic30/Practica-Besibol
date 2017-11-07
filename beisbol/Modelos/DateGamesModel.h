//
//  DateGamesModel.h
//  beisbol
//
//  Created by Amalia Gastelum on 11/5/17.
//  Copyright © 2017 UAG. All rights reserved.
//

#import <JSONModel/JSONModel.h>
#import "GameModel.h"

@interface DateGamesModel : JSONModel
@property (nonatomic) NSArray <GameModel> *games;
@end
