# iOS_LWAIGCKit

#### AI智能框架，负责AI智能请求交互等功能的封装。

## 兼容性（XCFramework）

#### 支持`iOS 14.0 及以上操作系统`

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


## 一、安装（CocoaPods）

##### 1. 在 `Podfile` 中添加
```ruby
pod 'iOS_LWAIGCKit', git: 'https://github.com/wsr1949/iOS_LWAIGCKit.git'
```

##### 2. 终端执行 
```ruby
pod install
```

## 二、使用

#### 导入头文件
```ruby
#import <iOS_LWAIGCKit/iOS_LWAIGCKit.h>
```

#### 初始化（每次切换设备都需要重新调用）
```ruby
/**
 初始化（每次切换设备都需要重新调用）
 */
+ (void)initAIGCWithModel:(LWAIGCModel * _Nonnull)model;
```

#### AI语音智能体(配置音频参数，连接WebSocket)
```ruby
/**
 AI语音智能体(配置音频参数，连接WebSocket)
 @param audioInfo           此音频参数参数为智能体对话输入的音频格式信息
 @param resultCallback      连接结果回调，error参部分错误码 LWAIGCERRORCODE
 */
+ (void)requestConnectAiVoiceAgentWebSocket:(LWAIGCAudioInfoModel * _Nonnull)audioInfo resultCallback:(void (^)(NSError * _Nullable error))resultCallback;
```
部分业务错误码
 ```ruby
/// 错误码
typedef NS_ENUM(NSInteger, LWAIGCERRORCODE) {
    ERRORCODE_SAME      = 500001,   // 用户同一设备重复连接服务器
    ERRORCODE_AUTH      = 500002,   // 当前设备未进行授权
    ERRORCODE_SECRETKEY = 500003,   // 服务器密钥错误（请找商务经理进行申请）
} NS_SWIFT_NAME(LWAIGCERRORCODE);
```

#### AI语音智能体(断开WebSocket)
```ruby
/**
 AI语音智能体(断开WebSocket)
 */
+ (void)disconnectAiVoiceAgentWebSocket;
```

#### AI语音智能体(WebSocket连接状态)
```ruby
/**
 AI语音智能体(WebSocket连接状态)
 */
+ (LWAIGCWEBSOCKETSTATUS)aiVoiceAgentWebSocketState;
```
