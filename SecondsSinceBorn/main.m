//
//  main.m
//  SecondsSinceBorn
//
//  Created by Edwin Cardenas on 2/01/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1996];
        [comps setMonth:2];
        [comps setDay:20];
        [comps setHour:20];
        [comps setMinute:0];
        [comps setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        NSDate *now = [NSDate date];
        double secondsSinceBorn = [now timeIntervalSinceDate:dateOfBirth];

        NSLog(@"Time flies! %.2f seconds have ticked by since I first entered the world!", secondsSinceBorn);
    }
    return 0;
}
