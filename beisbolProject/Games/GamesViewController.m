//
//  GamesViewController.m
//  beisbol
//
//  Created by lrvictor on 11/8/17.
//  Copyright © 2017 UAG. All rights reserved.
//

#import "GamesViewController.h"
#import "GameModel.h"
#import "DateGamesModel.h"
#import "GameViewCell.h"

@interface GamesViewController ()
@property NSString *gamesString;
@property DateGamesModel *gamesData;
@end

@implementation GamesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gamesString = @"{\"games\":[{\"time\":\"08:30 PM\",\"startTime\":\"07:30 PM\",\"away_name\":\"Yaquis\",\"home_name\":\"Mayos\",\"away_logo\":\"/assets/images/logo-team/obr.png\",\"home_logo\":\"/assets/images/logo-team/nav.png\"},{\"time\":\"8:30 PM\",\"startTime\":\"07:30 PM\",\"away_name\":\"Cañeros\",\"home_name\":\"Águilas\",\"away_logo\":\"/assets/images/logo-team/moc.png\",\"home_logo\":\"/assets/images/logo-team/mxc.png\"},{\"time\":\"09:00 PM\",\"startTime\":\"08:00 PM\",\"away_name\":\"Tomateros\",\"home_name\":\"Venados\",\"away_logo\":\"/assets/images/logo-team/cul.png\",\"home_logo\":\"/assets/images/logo-team/maz.png\"},{\"time\":\"08:30 PM\",\"startTime\":\"07:30 PM\",\"away_name\":\"Charros\",\"home_name\":\"Naranjeros\",\"away_logo\":\"/assets/images/logo-team/jal.png\",\"home_logo\":\"/assets/images/logo-team/her.png\"}]}";
    NSError *error;
    self.gamesData = [[DateGamesModel alloc]initWithString:self.gamesString error:&error];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (self.gamesData != nil) {
        return self.gamesData.games.count;
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    GameViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"gameCell"];
    GameModel *current = [self.gamesData.games objectAtIndex:indexPath.row];
    cell.lblTeam1.text = current.home_name;
    cell.lblTeam2.text = current.away_name;
    cell.lblSchedule.text = current.startTime;
    if (indexPath.row%2 == 0) {
        cell.contentView.backgroundColor = [UIColor whiteColor];
    } else {
        cell.contentView.backgroundColor = [[UIColor blueColor] colorWithAlphaComponent:0.5];
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.00005;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

@end
