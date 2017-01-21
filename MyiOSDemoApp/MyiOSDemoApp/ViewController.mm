#import "ViewController.h"

#import <MyLibraryWrapper.h>

#include <memory>

@interface ViewController ()

@property MyLibraryWrapper* library;

@end

@implementation ViewController

- (id)init {
    if (self = [super init]) {
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    if (!_library) {
        _library = [[MyLibraryWrapper alloc] init];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleAddOneButtonClick:(id)sender {
    [self.library addOne];
    [self updateResult];
}

- (IBAction)handleSubtractOneButtonClick:(id)sender {
    [self.library subtractOne];
    [self updateResult];
}

- (IBAction)handleResetToZeroButtonClick:(id)sender {
    [self.library resetToZero];
    [self updateResult];
}

- (void)updateResult {
    NSString* result = [NSString stringWithFormat: @"%ld", (long)[self.library value]];
    self.resultLabel.text = result;
}

@end
