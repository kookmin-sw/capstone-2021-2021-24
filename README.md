## 1. 프로트 소개

2021 캡스톤 24조 Flutter 앱 front-end 개발팀 

#### 주요기능

#### 타겟층

## 2. 소개 영상

[영상링크](링크주소)

## 3. 팀 소개

#### **송희범(팀장)**
**Student_ID 20182089**
**역할:**

<img align="left" src = https://scontent-ssn1-1.xx.fbcdn.net/v/t1.6435-9/133079355_109849981021129_5234021417919755364_n.jpg?_nc_cat=110&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=cvBKQ0uOv5YAX82Duyi&_nc_ht=scontent-ssn1-1.xx&uss=9311dd3111ee700d&odm=bmV1cm9hc3NvY2lhdGVzY29sdGQwMzUud29ya3BsYWNlLmNvbQ&oe2=60903620&oh=7563d3e3f5071e2645d37ec85d3eb150&oe=60697F94
" width="200px" height="200px">

#### **김영민**
**Student_ID **
**역할:**
<img align="left" src = 이미지주소
" width="200px" height="200px">

#### **장성용**
**Student_ID **
**역할:**
<img align="left" src = 이미지주소
" width="200px" height="200px">

#### **백지웅**
**Student_ID 20181622**
**역할:**
<img align="left" src = 이미지주소
" width="200px" height="200px">

### 4. 앱 실행 환경설정 가이드

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

### 5.  내부 프로젝트 구조
```
├── lib
│   ├──home.dart
│   ├──main.dart
│   ├──myimport.dart
│   ├──place.dart
│   ├───────
│   ├── review   
│   ├── search
│   │   └──searchPage.dart
│   ├── setting
│   │   └──setting.dart
│   │   └──terms.dart
│   ├── Login
│   │   └──login_main.dart
│   └── signup
        └──signup.dart
```

### 6. 앱 시나리오
---

## 전체적인 시나리오

- ### 최신 리뷰 페이지
  - 시간순으로 최신 20개만 가져와서 화면에 보여줌
  - 각 리뷰의 제목 터치 시 해당 리뷰의 디테일 리뷰 페이지로 이동(태그 보여줌)
  - 아래로 스크롤 해서 목록 새로고침 가능
- ### 크롤링 페이지
  - 키워드 입력 후 검색 버튼 누르면 DB에서 후기 목록 가져와서 후기요 탭에 뿌려줌
    - 만약 DB에 해당 키워드 제품이 없을 경우 검색결과가 없다는 화면 보여줌
  - 쇼핑몰 탭도 키워드 입력 후 검색 버튼 누르면 각 쇼핑몰에서 상품 정보들을 가져와 각 쇼핑몰 탭에 뿌려줌
    - 검색 결과가 없으면 검색결과가 없다는 화면 보여주고 어떤 쇼핑몰에서 결과가 없는지 경고창
- ### 리뷰등록 페이지
  - 처음 들어가면 환경변수 src/config.js에 있는 isLogin변수를 보고 로그인 여부 판단
    - 로그인이 되어 있으면 정상적인 리뷰 등록 페이지 렌더
    - 로그인이 안되어 있으면 로그인이 필요하다는 내용의 페이지 렌더
  - 로그인 후 리뷰 등록 페이지
    - 카메라를 통해 제품 사진을 찍는다. (사진 여러 장 추가하는 것과 이 페이지에서 사진 삭제기능 구현 필요)
    - 제품 이름을 입력한다
    - 해당 제품에 대한 나의 후기를 작성한다.(리뷰 내용 글자를 몇 글자로 제한할지 상의 후 적용 필요)
    - 좋아요 or 싫어요 를 선택한다
    - 태그를 선택한다(최대 3개)
    - 오른쪽 상단에 upload터치 시 등록 완료 후 나의 리뷰 페이지로 이동
- ### 마이 리뷰 페이지
  - 여기서도 isLogin변수를 통해 로그인 여부 판단 후 그에 맞는 페이지 렌더
  - 로그인이 되어 있으면 내가 등록한 리뷰들을 보여준다
    - 만약 내가 등록한 리뷰가 없을 경우 등록된 리뷰가 없으니 등록해달라는 페이지 렌더
    - 등록한 리뷰가 있을 경우 리뷰 목록 보여줌(아직은 스크롤해서 새로고침 하는 기능이 필요없어서 구현 안함)
- ### 설정 페이지
  - isLogin에 따라 로그인 or 로그아웃을 보여준다.
  - 로그인/ 로그아웃 말고는 아무 기능 없는 화면 채우는 용도의 텍스트들임(추후 어떤 기능을 넣고 구현할지는 상의 필요.)

---
