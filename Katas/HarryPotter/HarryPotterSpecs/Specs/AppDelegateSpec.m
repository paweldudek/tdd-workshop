#import "Specs.h"

#import "AppDelegate.h"
#import "ShopViewController.h"

SPEC_BEGIN(AppDelegateSpec)

describe(@"SalesforceShowcaseAuthenticationViewController", ^{
    __block AppDelegate *appDelegate;

    beforeEach(^{
        appDelegate = [[AppDelegate alloc] init];
    });

    afterEach(^{
        appDelegate = nil;
    });

    it(@"should have a shop view controller as root view controller", ^{
        expect(appDelegate.window.rootViewController).to.beKindOf([ShopViewController class]);
    });
});

SPEC_END
