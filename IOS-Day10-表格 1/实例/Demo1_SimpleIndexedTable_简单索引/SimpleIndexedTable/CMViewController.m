//
//  CMViewController.m
//  SimpleIndexedTable
//

#import "CMViewController.h"

@implementation CMViewController

@synthesize tableData;
@synthesize indexTitlesArray;


#pragma mark - UITableViewDataSource methods

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"cellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [self.tableData objectAtIndex:indexPath.section];
    
    return cell;
    
}

//每章行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;  //
}

//章节数目
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.indexTitlesArray count];
}

//章节内容
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [self.indexTitlesArray objectAtIndex:section];
}

//索引列的数据
-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    return self.indexTitlesArray;
}
 
//索引列的数据在 右侧索引列中显示出来。默认与章节绑定
//sectionForSectionIndexTitle 
-(NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
    return [self.indexTitlesArray indexOfObject:title];
}


#pragma mark - UITableViewDelegate 协议中控制用户操作表格事件的协议

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //取消选中效果
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}
 
#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	//准备好列表中需要显示的数据
    self.tableData = [[NSArray alloc] initWithObjects:@"Aaron", @"Bailey", @"Cadan", @"Dafydd", @"Eamonn", @"Fabian", @"Gabrielle", @"Hafwen", @"Isaac", @"Jacinta", @"Kathleen", @"Lucy", @"Maurice", @"Nadia", @"Octavia", @"Padraig", @"Quinta", @"Rachel", @"Sabina", @"Tabitha", @"Uma", @"Valentina", @"Wallis", @"Xanthe", @"Yvonne", @"Zebediah", nil];
    

    
    //准备在 Section Header 上面显示的内容
    NSString *letters = @"A B C D E F G H I J K L M N O P Q R S T U V W X Y Z";
    //按照指定的分割字符 @" " 把字符串 letters 分割，得到一个数组
    self.indexTitlesArray = [letters componentsSeparatedByString:@" "];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // 在当前主视图中，更新组件内容
    // e.g. self.myOutlet = nil;
    self.tableData = nil;
    self.indexTitlesArray = nil;
    
}


@end
