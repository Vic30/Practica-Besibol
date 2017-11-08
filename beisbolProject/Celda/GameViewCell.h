//
//  GameViewCell.h
//  beisbol
//
//  Created by lrvictor on 11/8/17.
//  Copyright © 2017 UAG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblTeam1;
@property (weak, nonatomic) IBOutlet UILabel *lblTeam2;
@property (weak, nonatomic) IBOutlet UILabel *lblSchedule;

@end
