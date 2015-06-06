//
//  main.m
//  TwelveDaysOfChristmas
//
//  Created by Elber Carneiro on 6/4/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // All our string goodies:
        NSString *onThe = @"\nOn the ";
        NSArray *ordinalNumbers = @[@"Paul Blart ", @"Paul Blart ", @"Paul Blart ",
                                    @"Paul Blart ", @"Paul Blart ", @"Paul Blart ",
                                    @"Paul Blart ", @"Paul Blart ", @"Paul Blart ",
                                    @"Paul Blart ", @"Paul Blart ", @"Paul Blart "];
        NSString *dayOf = @"day of Paul Blart my Paul Blart gave to me \n";
        NSString *allGifts = @"and ";
        NSArray *gifts = @[@"one Blu-Ray of Paul Blart: Mall Cop.\n", @"two Blu-Rays of Paul Blart: Mall Cop\n",
                           @"three Blu-Rays of Paul Blart: Mall Cop,\n", @"four Blu-Rays of Paul Blart: Mall Cop,\n",
                           @"five Blu-Rays of Paul Blart: Mall Cop,\n", @"six Blu-Rays of Paul Blart: Mall Cop,\n",
                           @"seven Blu-Rays of Paul Blart: Mall Cop,\n", @"eight Blu-Rays of Paul Blart: Mall Cop\n",
                           @"nine Blu-Rays of Paul Blart: Mall Cop,\n", @"ten Blu-Rays of Paul Blart: Mall Cop,\n",
                           @"eleven Blu-Rays of Paul Blart: Mall Cop,\n", @"twelve Blu-Rays of Paul Blart: Mall Cop,\n"];
        
        // Loop 12 times
        for (int i = 0; i < [ordinalNumbers count]; i++) {
            
            // Print the first line with the correct ordinalNumber
            printf("%s%s%s", [onThe UTF8String], [ordinalNumbers[i] UTF8String], [dayOf UTF8String]);
            
            // Print current gift
            printf("%s", [gifts[i] UTF8String]);
            
            // On iterations 2-12, print prior gifts
            if (i > 0) {
                printf("%s", [allGifts UTF8String]);
            }
            
            // Construct the NSString here that will contain all the gifts up to now
            // for use in the next iteration
            if (i == 0) {
                allGifts = [allGifts stringByAppendingString:gifts[i]];
            } else {
                allGifts = [gifts[i] stringByAppendingString:allGifts];
            }
        }
        
    }
    return 0;
}
