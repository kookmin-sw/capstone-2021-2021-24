
#### 2021 국민대학교 소프트웨어융합대학 캡스톤 23팀   
#### 뉴로어소시에이츠 산학협력 Front-end개발팀





  
    
       
        
# Project_intro
회사 보안 내규로 자세한 사항 공개 불가
## Team Member

<center><img src="https://user-images.githubusercontent.com/38937867/119224431-61024200-bb39-11eb-8308-ffb59bf52ec2.jpg" width="100" height="100"></center>

```
김영민_Kim Young Min
국민대학교 소프트웨어학부 
StudentID:20162820
Email: dudals2467@kookmin.ac.kr
Github: https://github.com/kimyoungmin101

```
<center><img src="https://user-images.githubusercontent.com/38937867/119224405-3fa15600-bb39-11eb-8e98-f7f047b8b97e.jpg" width="100" height="100"></center>

```
송희범_Song Hee Beom
국민대학교 소프트웨어학부 
StudentID: 20182089
Email: songh6508@gmail.com
Github: https://github.com/heebeom-song
```
<center><img src="https://user-images.githubusercontent.com/38937867/119224372-11bc1180-bb39-11eb-99d3-60f78fa57592.jpg" width="100" height="100"></center>

```
장성용_Jang Sung Yong
국민대학교 소프트웨어학부 
StudentID:20162838
Email: syj6219@icloud.com
Github: https://github.com/jane-seong-yong
```

<center><img src="https://user-images.githubusercontent.com/38937867/119224288-b558f200-bb38-11eb-8e0d-37ddc93cb3e1.jpg" width="100" height="100"></center>

```
백지웅_Baek Ji Woong
국민대학교 소프트웨어학부 
StudentID: 20181622
Email: backjiung@gmail.com
Github: https://github.com/backjiung
```
## Project_Purpose
회사 보안 내규로 자세한 사항 공개 불가

## 앱 실행 환경설정 가이드(android)

```markdown
  #Android Studio install
   -https://developer.android.com/studio
  ```

  ```markdown
  #Android Studio Flutter Plugin install
  ```
  
  ```markdown
  #Flutter SDK install
   -https://flutter-ko.dev/docs/get-started/install/windows
  ```
  
  ```markdown
  #Flutter Doctor Android licenses accept
   -Flutter Sdk PATH 내 flutter_console.bat 실행
   -flutter doctor --android-licenses 입력
  ```
  
  ```markdown
  #AVD install
   -Pixel 2 + playStore가 존재하는 버전 선택
   -API level 29 'Q'설치 권장
```

 ## 앱 실행 환경설정 가이드(ios)
 
 ```markdown
  #Xcode 설치(맥북 구비필요)
  - http://developer.apple.com/download/more
  - macOS 버전 10.15, Xode 11 이상이 필요 
  ```

  ```markdown
   #서버 통신을 위한 설정
   -INfo.plist에 들어가기
   -Information Property LIst 아래에 App Transport Security Settiings추가
   -App Transport Security Settiings 아래에 Allow Arbitrary Loads 추가
  
    Alamofire설치( 서버연결에 쓰이는 swift package )
    -상단부 File -> Swift Packages -> Add Package Dependency     
       -> 입력란 https://github.com/Alamofire/Alamofire 입력후 Next -> 그대로 쭉 다음 버튼으로 진행
   

   ``` 
   <br/>
## Project 사용 스택

#### Front-end
##### 1. Flutter
##### 2. Postman
##### 3. Swagger_UI
##### 4. Swift_UI
_________________________________
##### 협업
##### 버전 관리:GitHub
##### 회의기록 및 일정공유: Notion & Workplace & Slack

 


## 내부 Project 구조

```
📦p1_project
 ┣ 📂.idea
 ┣ 📂android
 ┣ 📂assets
 ┃ ┗ 📂images
 ┣ 📂ios
 ┣ 📂lib
 ┃ ┣ 📂addLink
 ┃ ┃ ┣ 📜addLink.dart
 ┃ ┃ ┗ 📜addLink_server.dart
 ┃ ┣ 📂components
 ┃ ┃ ┗ 📜rounded_button.dart
 ┃ ┣ 📂home
 ┃ ┃ ┣ 📂components
 ┃ ┃ ┃ ┣ 📜body.dart
 ┃ ┃ ┃ ┣ 📜categorries.dart
 ┃ ┃ ┃ ┣ 📜item_card.dart
 ┃ ┃ ┃ ┣ 📜item_card2.dart
 ┃ ┃ ┃ ┣ 📜navi.dart
 ┃ ┃ ┃ ┣ 📜navi2.dart
 ┃ ┃ ┃ ┣ 📜post_home.dart
 ┃ ┃ ┃ ┣ 📜product_value.dart
 ┃ ┃ ┃ ┗ 📜webview.dart
 ┃ ┃ ┗ 📜home_screen.dart
 ┃ ┣ 📂login_screen
 ┃ ┃ ┣ 📂sign_in
 ┃ ┃ ┃ ┣ 📂components
 ┃ ┃ ┃ ┃ ┗ 📜body.dart
 ┃ ┃ ┃ ┗ 📜sign_in_screen.dart
 ┃ ┃ ┣ 📂sign_up
 ┃ ┃ ┃ ┣ 📂components
 ┃ ┃ ┃ ┃ ┣ 📜body.dart
 ┃ ┃ ┃ ┃ ┣ 📜complete.dart
 ┃ ┃ ┃ ┃ ┗ 📜login_terms.dart
 ┃ ┃ ┃ ┗ 📜sign_up_screen.dart
 ┃ ┃ ┗ 📂welcome
 ┃ ┃ ┃ ┣ 📂components
 ┃ ┃ ┃ ┃ ┗ 📜body.dart
 ┃ ┃ ┃ ┗ 📜welcome_screen.dart
 ┃ ┣ 📂logout_screen
 ┃ ┃ ┗ 📂logout
 ┃ ┃ ┃ ┗ 📜logout_screen.dart
 ┃ ┣ 📂models
 ┃ ┃ ┣ 📜Product.dart
 ┃ ┃ ┗ 📜Product2.dart
 ┃ ┣ 📂screens
 ┃ ┃ ┣ 📂home
 ┃ ┃ ┃ ┣ 📂components
 ┃ ┃ ┃ ┃ ┗ 📜body.dart
 ┃ ┃ ┃ ┗ 📜home_screen.dart
 ┃ ┃ ┗ 📂splash
 ┃ ┃ ┃ ┣ 📂components
 ┃ ┃ ┃ ┃ ┣ 📜body.dart
 ┃ ┃ ┃ ┃ ┗ 📜splash_content.dart
 ┃ ┃ ┃ ┗ 📜splash_screen.dart
 ┃ ┣ 📂setting
 ┃ ┃ ┣ 📂components
 ┃ ┃ ┃ ┣ 📜body.dart
 ┃ ┃ ┃ ┣ 📜delete_Id.dart
 ┃ ┃ ┃ ┣ 📜logout_Setting.dart
 ┃ ┃ ┃ ┣ 📜terms.dart
 ┃ ┃ ┃ ┣ 📜term_2.dart
 ┃ ┃ ┃ ┗ 📜version.dart
 ┃ ┃ ┣ 📜link_value.dart
 ┃ ┃ ┣ 📜setting.dart
 ┃ ┃ ┗ 📜setting_screen.dart
 ┃ ┣ 📜constants.dart
 ┃ ┣ 📜id_nickname_value.dart
 ┃ ┣ 📜main.dart
 ┃ ┣ 📜my_arr.dart
 ┃ ┣ 📜routs.dart
 ┃ ┣ 📜size_config.dart
 ┃ ┣ 📜url_list.dart
 ┃ ┗ 📜value.dart
 ┣ 📂test
 ┗ 📜README.md
```
## 내부 Project 명세
회사 보안 내규로 자세한 사항 공개 불가

