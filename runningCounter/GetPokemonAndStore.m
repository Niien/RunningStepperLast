//
//  GetPokemonAndStore.m
//  runningCounter
//
//  Created by Longfatown on 1/28/15.
//  Copyright (c) 2015 Longfatown. All rights reserved.
//

#import "GetPokemonAndStore.h"

//先設定目前總共有的怪獸數
#define NumOfPokeMon 30

@interface GetPokemonAndStore()
{
    int random;
}
@end

@implementation GetPokemonAndStore

#pragma mark 隨機取怪獸
-(void)GetPokemon{
    random = arc4random()%NumOfPokeMon+1;
    
    _imageName = [NSString stringWithFormat:@"%d.png",random];
    _iconName = [NSString stringWithFormat:@"%d.png",random];
    NSLog(@"imageName:%@",_imageName);
    NSLog(@"iconName:%@",_iconName);
    
    //UIImage *image = [UIImage imageNamed:imageName];
    //UIImageView *myImageView = [[UIImageView alloc]initWithImage:image];
    //myImageView.frame = CGRectMake(0, 0, myView.frame.size.width, myView.frame.size.height);
    
    // add view
    //[myView addSubview:myImageView];
    //[self.view addSubview:myView];

}

-(void)StoreinPlist{
    NSString *imageName = [NSString stringWithFormat:@"%d.png",random];
    NSString *iconName = [NSString stringWithFormat:@"%d.png",random];
    NSLog(@"imageName:%@",imageName);
    NSLog(@"iconName:%@",iconName);
    
    // save data to plist
    NSDictionary *dict = @{@"Name":imageName, @"iconName":iconName, @"Lv":@"1"};
    
    NSArray *array = [[NSArray alloc]initWithObjects:dict, nil];
    
    NSLog(@"array:%@",array);
    
    [[myPlist shareInstanceWithplistName:@"MyPokemon"]saveDataWithArray:array];
}
-(void)creatPokeMonDic{
    _POKEMONDict = [NSDictionary new];
    _POKEMONDict =
  @{@"1":@"喵蛙粽子",@"2":@"消火龍",@"3":@"傑尼菇",@"4":@"嗶嗶鳥",@"5":@"皮卡啾",
    @"6":@"雷啾",@"7":@"六條",@"8":@"九條",@"9":@"胖弟",@"10":@"扣打鴨",
    @"11":@"風速GO",@"12":@"聞香個頭",@"13":@"聞香哇",@"14":@"開心",@"15":@"喇叭Yeah",
    @"16":@"大水母",@"17":@"消火馬",@"18":@"小河馬",@"19":@"貴斯",@"20":@"打岩蛇",
    @"21":@"三點蛋",@"22":@"小蛋蛋",@"23":@"海星",@"24":@"飛飛螳螂",@"25":@"你魚want",
    @"26":@"變變怪",@"27":@"一步",@"28":@"閃電步",@"29":@"胖子",@"30":@"蜜妮long",
    };

}
@end
