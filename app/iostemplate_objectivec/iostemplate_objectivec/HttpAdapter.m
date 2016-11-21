//
//  HttpAdapter.m
//  iostemplate_objectivec
//
//  Created by Jaenelle Isidro on 19/11/2016.
//  Copyright © 2016 Jaenelle Isidro. All rights reserved.
//

#import "HttpAdapter.h"
#import "AFNetworking.h"
@implementation HttpAdapter
{
    AFHTTPSessionManager *manager;
}

- (id) init{
    self = [super init];
    manager = [[AFHTTPSessionManager alloc]initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    //    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    //[manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    
    return self;
}


-(void) postRequest{
    NSString *url = @"http://localhost/iostemplate_objectivec/web/json.php";
    NSDictionary *parameters = @{@"postdata": @"jay", @"baz": @[@1, @2, @3]};
    [manager POST:url parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@", responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"error: %@", error);
    }];
}

-(void) getRequest{
    NSString *url = @"http://localhost/iostemplate_objectivec/web/json.php";
    NSDictionary *parameters = @{@"postdata": @"jay", @"baz": @[@1, @2, @3]};
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    [manager GET:url parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@", responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"error: %@", error);
    }];
}

-(void) putRequest{
    
    NSString *url = @"http://localhost/iostemplate_objectivec/web/json.php";
    NSDictionary *parameters = @{@"postdata": @"jay", @"baz": @[@1, @2, @3]};
    [manager PUT:url parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@", responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"error: %@", error);
    }];
}

-(void) deleteRequest{
    NSString *url = @"http://localhost/iostemplate_objectivec/web/json.php";
    NSDictionary *parameters = @{@"postdata": @"jay", @"baz": @[@1, @2, @3]};
    [manager DELETE:url parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@", responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"error: %@", error);
    }];
}


-(void) fileDownload{
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    
    NSURL *URL = [NSURL URLWithString:@"http://hcmaslov.d-real.sci-nnov.ru/public/mp3/Queen/Queen%20''39'.mp3"];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request progress:nil destination:^NSURL *(NSURL *targetPath, NSURLResponse *response) {
        NSURL *documentsDirectoryURL = [[NSFileManager defaultManager] URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
        return [documentsDirectoryURL URLByAppendingPathComponent:[response suggestedFilename]];
    } completionHandler:^(NSURLResponse *response, NSURL *filePath, NSError *error) {
        NSLog(@"File downloaded to: %@", filePath);
    }];
    [downloadTask resume];
}
@end
