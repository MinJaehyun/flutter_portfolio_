# flutter_portfolio

### 시행 착오
1. notion 은 web_view 에서 접근할 수 없게 막아서 새로운 페이지를 넘기는 방식으로 notion page 를 가져올 수 있게 수정했다
2. about page - animated_text_kit 설정하여 글자에 효과 넣음
3. github.svg 파일 크기 줄일 시 사이즈 줄어드는데 크기 고정하는 방법은 ?
   1. svg 자체를 줄이면 크기도 줄어들어서 icon 으로 대체하였다
4. 노션 이력서를 web_view 로 나타내려 했으나, 노션 측에서 웹뷰를 abandon 하므로 대체할 방법을 생각해야 했다
   1. pdf 문서를 담는 방법으로 이력서를 나타내기 위해 pdfx 라이브러리를 사용하였으며, 
   2. Please enable Developer Mode in your system settings. Run start ms-settings:developers 
   3. 위 경고 발생 시, $ flutter pub run pdfx:install_web 로 해결하였다
5.