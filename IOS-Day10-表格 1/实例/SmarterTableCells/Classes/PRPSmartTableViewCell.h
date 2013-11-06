/***
 * Excerpted from "iOS Recipes",
 * published by The Pragmatic Bookshelf.
 * Copyrights apply to this code. It may not be used to create training material, 
 * courses, books, articles, and the like. Contact us if you are in doubt.
 * We make no guarantees that this code is fit for any purpose. 
 * Visit http://www.pragmaticprogrammer.com/titles/cdirec for more book information.
***/
#import <UIKit/UIKit.h>

@interface PRPSmartTableViewCell : UITableViewCell {}

//创建指定表格的  单元格
+ (id)cellForTableView:(UITableView *)tableView;

//得到单元格  表示字符串
+ (NSString *)cellIdentifier;

//根据单元格  标示名称 初始化
- (id)initWithCellIdentifier:(NSString *)cellID;

@end


