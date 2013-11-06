//
//  NAViewController.m
//  NamesApp
//
//  Created by Tim Duckett on 04/02/2012.
//  Copyright (c) 2012 Tim Duckett / Charismatic Megafauna Ltd.
//  See license.txt for licensing information.

#import "NAViewController.h"

@interface NAViewController()

-(void)configureSectionData;

@end

@implementation NAViewController

@synthesize tableData;
@synthesize collation;
@synthesize outerArray;
@synthesize indexTitlesArray;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - Table view methods
//自定义方法，针对  Names.plist 结构编写的解析 代码
-(void)configureSectionData {
    //当前表的章节数  26
    NSUInteger sectionTitlesCount = [collation.sectionTitles count];
    //按照指定的长度创建可变长数组
    self.outerArray = [NSMutableArray arrayWithCapacity:sectionTitlesCount];
    
    //每个章节存放入一个数组，根据章节数新建 多个 子数组
    for (NSUInteger index = 0; index < sectionTitlesCount; index++) {
        //每个章节的子数组
        NSMutableArray *array = [NSMutableArray array];
        
        [self.outerArray addObject:array];
    }
    
    for (NSString *nameString in tableData) {
        NSInteger sectionNumber = [collation sectionForObject:nameString collationStringSelector:@selector(lowercaseString)];
        
        NSMutableArray *sectionNames = [outerArray objectAtIndex:sectionNumber];
        
        [sectionNames addObject:nameString];
        
    }
    
    for (NSUInteger index = 0; index < sectionTitlesCount; index++) {
        
        NSMutableArray *namesForSection = [outerArray objectAtIndex:index];
        
        NSArray *sortedNamesForSection = [collation sortedArrayFromArray:namesForSection collationStringSelector:@selector(lowercaseString)];
        
        [self.outerArray replaceObjectAtIndex:index withObject:sortedNamesForSection];
        
    }
    
}

//章节
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.collation.sectionTitles count];
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    NSString *theLetter  = [self.collation.sectionTitles objectAtIndex:section];
    
    if (![theLetter isEqualToString:@"#"]) {
        NSString *titleString = [NSString stringWithFormat:@"Names for the letter %@", theLetter];
        return titleString;
    }
    
    return nil;
}

//索引
-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    return self.collation.sectionTitles;
}

-(NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
    return [self.collation sectionForSectionIndexTitleAtIndex:index];
}


//章节中的行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    NSArray *innerArray = [self.outerArray objectAtIndex:section];
    return [innerArray count];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"cellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    // Get the inner array for this section
    NSArray *innerArray = [self.outerArray objectAtIndex:indexPath.section];
    
    // Get the name from the inner array
    NSString *theName = [innerArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = theName;
    
    return cell;
    
}


#pragma mark - UITableViewControllerDelegate 方法

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

#pragma mark - View lifecycle
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSBundle *bundle = [NSBundle mainBundle];
    
    NSString *plistPath = [bundle pathForResource:@"Names" ofType:@"plist"];
    
    NSDictionary *namesDictionary = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
    
    self.tableData = [namesDictionary objectForKey:@"names"];
    //UILocalizedIndexedCollation类方便为有部分指数的图表进行组织，整理，以及数据本地化 。
    //表视图的数据源，然后使用排序对象提供的输入节的标题和节索引标题的表视图。
    self.collation = [UILocalizedIndexedCollation currentCollation];
    
    //配置 表格需要数据的方法
    [self configureSectionData];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    
    self.tableData = nil;
    self.collation = nil;
    self.outerArray = nil;
    self.indexTitlesArray = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
