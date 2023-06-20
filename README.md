# flutter_portfolio

### 기능
1. about page - animated_text_kit 설정하여 글자에 효과 넣음
2. init_page - 전체 레이아웃 변경 (사이즈에 따른 menu-bar 설정)

### 개선할 점
1. works 화면 줄이면 size 에러 나는 이유와 해결 방법 ?
 - 레이아웃 맘에 안드는데 변경 하는건 어떤지 ?

### 시행 착오
1. notion 은 web_view 에서 접근할 수 없게 막아서 새로운 페이지를 넘기는 방식으로 notion page 를 가져올 수 있게 수정했다
2. github.svg 파일 크기 줄일 시 사이즈 줄어드는데 크기 고정하는 방법은 ?
   1. svg 자체를 줄이면 크기도 줄어들어서 icon 으로 대체하였다
3. 노션 이력서를 web_view 로 나타내려 했으나, 노션 측에서 웹뷰를 abandon 하므로 대체할 방법을 생각해야 했다
   1. pdf 문서를 담는 방법으로 이력서를 나타내기 위해 pdfx 라이브러리를 사용하였으며, 
   2. Please enable Developer Mode in your system settings. Run start ms-settings:developers 
   3. 위 경고 발생 시, $ flutter pub run pdfx:install_web 로 해결
4. 좌측 목록을 테블릿 사이즈 이하로 줄이면 아이콘이 작아지면서 없어진다. 이를 개선하기 위해 
 테블릿 사이즈 이하로 줄이면 상단 앱바에 메뉴바로 변경되도록 설정하였다.
5. Drawer 내 setState 설정 사용 안 되므로, 함수 실행하는 방법으로 해결 - init_page
6. 