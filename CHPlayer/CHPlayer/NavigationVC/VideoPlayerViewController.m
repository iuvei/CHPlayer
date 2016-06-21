//
//  VideoPlayerViewController.m
//  CHPlayer
//
//  Created by Cher on 16/6/13.
//  Copyright © 2016年 Hxc. All rights reserved.
//

#import "VideoPlayerViewController.h"
#import <Masonry.h>
//#import "UIView+CH_tapAction.h"
#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self
//屏幕宽度
#define  CHPlayer_W [[UIScreen mainScreen] bounds].size.width
@interface VideoPlayerViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) UITableView *tableView;

//@property (strong, nonatomic) CHPlayerView * playerView;

@end

@implementation VideoPlayerViewController

- (void)viewWillAppear:(BOOL)animated{
     [super viewWillAppear:animated];
     //self.navigationController.navigationBar.hidden = self.type == PlayerTypeOfNoNavigationBar?YES:NO;
}

- (void)viewWillDisappear:(BOOL)animated{
     [super viewWillDisappear:animated];
     self.navigationController.navigationBar.hidden = NO;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     
     UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
     [self.view addSubview:tableView];
     
     tableView.backgroundColor = [UIColor whiteColor];
     tableView.backgroundView = nil;
     tableView.delegate = self;
     tableView.scrollsToTop = YES;
     tableView.dataSource = self;
     tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
     [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
     tableView.rowHeight = 200;
     
     self.tableView = tableView;
     WS(weakSelf);
     
     /*
     CGFloat top = self.type == PlayerTypeOfNoNavigationBar?0:64;
     
     CGRect  rect = self.type == PlayerTypeOfFullScreen?self.view.bounds:CGRectMake(0, top, CHPlayer_W, 200);
     
     //http://dd.yinyuetai.com/uploads/videos/common/984E01550943F9B471FD59E4D183237E.mp4?sc=2e35ef63a543dabd&br=571&rd=iOS//普清
     //@"http://hc.yinyuetai.com/uploads/videos/common/5B04015509380A6B14588BC77BAC7BC8.flv?sc=fa826f4ffca022e1&br=769&rd=iOS"//高清
     //@"http://he.yinyuetai.com/uploads/videos/common/080A01550943F9C13EED24FBF1933A39.flv?sc=aabb162ef563e9b2&br=3106&rd=iOS"//超清
     //@"http://he.yinyuetai.com/uploads/videos/common/0D5A01510DCDB439AA964DEA59FEEF3F.flv?sc=fe72f14d75de94a0&br=3219&rd=iOS"
     NSString *strUrl = @"http://he.yinyuetai.com/uploads/videos/common/080A01550943F9C13EED24FBF1933A39.flv?sc=aabb162ef563e9b2&br=3106&rd=iOS";
     CHPlayerView * playerView = [[CHPlayerView alloc] initWithFrame:rect playerType:self.type autoPlay:YES];
     [self.view addSubview:playerView];
     //设置播放器额外属性
     playerView.playedColor   = [UIColor greenColor];
     playerView.cacheBarColor = [UIColor cyanColor];
     //设置播放移动小圆点 在 CHPlayerHeader.h 文件中修改对应的图片名称 并放入图片资源即可
     self.playerView = playerView;

     playerView.backClickBlock = ^(){
          [weakSelf backAction];
     };
     
     playerView.moreClickBlock = ^(){
          
          weakSelf.playerView.playerUrl = @"http://hd.yinyuetai.com/uploads/videos/common/B47E013A6407D27C66A5DF307657F2B3.flv?sc=741fb0d8a9b7028c&br=1099&rd=iOS";
          weakSelf.playerView.videoTitle = @"2010超时代演唱会";
     };
     
     playerView.playerEndBlock = ^(){
          weakSelf.playerView.playerUrl = @"http://he.yinyuetai.com/uploads/videos/common/080A01550943F9C13EED24FBF1933A39.flv?sc=aabb162ef563e9b2&br=3106&rd=iOS";
          weakSelf.playerView.videoTitle = @"Taylor Swift style!!";
     };
     
     playerView.playerUrl = strUrl;
     playerView.videoTitle = @"惊天魔盗团主题曲";

     [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
          self.playerView?make.top.equalTo(self.playerView.mas_bottom):make.top.equalTo(@(top));
          make.left.right.bottom.equalTo(self.view);
     }];
      */
}


- (void)backAction{
     [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark === tableView delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
     return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
     
     UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
     return cell;
}



@end
