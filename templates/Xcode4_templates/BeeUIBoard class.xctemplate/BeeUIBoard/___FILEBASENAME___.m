//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

DEF_SINGLETON( ___FILEBASENAMEASIDENTIFIER___ );

- (void)handleUISignal:(BeeUISignal *)signal
{
	[super handleUISignal:signal];
	
	if ( [signal isKindOf:BeeUIBoard.SIGNAL] )
	{
		if ( [signal is:BeeUIBoard.CREATE_VIEWS] )
		{
			// _textView = [[BeeUITextView alloc] initWithFrame:CGRectInset(self.viewBound, 5.0f, 5.0f)];
			// _textView.font = [UIFont boldSystemFontOfSize:12.0f];
			// _textView.textColor = [UIColor colorWithWhite:0.3f alpha:1.0f];
			// _textView.editable = NO;
			// [self.view addSubview:_textView];
		}
		else if ( [signal is:BeeUIBoard.DELETE_VIEWS] )
		{
			// SAFE_RELEASE_SUBVIEW( _textView );
		}
	}
}

@end
