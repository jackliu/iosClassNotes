//
//  CMViewController.h
//  SimpleIndexedTable
//

#import <UIKit/UIKit.h>

@interface CMViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

//要在表格中显示带 SectionHeader 的样式，必须准备两组数据
//在每个章节 Section 中显示的列表数据
@property (nonatomic, strong) NSArray *tableData;
//在每个 Section Header 上显示的数据
@property (nonatomic, strong) NSArray *indexTitlesArray;

@end
