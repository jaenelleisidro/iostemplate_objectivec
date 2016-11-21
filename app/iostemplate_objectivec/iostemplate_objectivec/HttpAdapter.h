//
//  HttpAdapter.h
//  iostemplate_objectivec
//
//  Created by Jaenelle Isidro on 19/11/2016.
//  Copyright © 2016 Jaenelle Isidro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HttpAdapter : NSObject
-(void) postRequest;
-(void) getRequest;
-(void) fileDownload;
@end
