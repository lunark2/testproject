# Git = 모든 파일의 변화를 기록하고 변화된 버전들을 layer로 보관함 (멀티 유니버스처럼)
# Github = 이 Git history를 다른 사람들과 공유할 수 있음. 누가 수정했는지 어떻게 수정했는지 등등


# 1. github 로그인 하기
# 2. github에서 연동하고자하는 repository를 만들기
## 원하는 이름과 description 작성
## public, add a README file, add .gitignore (template은 R), choose a license (패키지 만들때 사용)
## create a repository
# 3. 우상단 Code에서 SSH 주소 복사

# 4. R studio에서 new project 선택, Version control 선택, Git 선택
## Git이 설치되지 않으면 알림이 활성화됨
## https://git-scm.com/download/win 에서 git을 설치
## C://Program Files에 설치
## 여러 옵션이 있는데 전부 default option으로 선택
## Tool-Global option-Git/SVN 에서 Git 응용프로그램이 어디있는지 설정한다. C:/Program Files/Git/bin/git.exe
## R studio 재시작 후 4번 반복

# 5. Repository URL에 SSH 주소를 입력
## project directory name은 우리가 설정한 repository name을 따라감
## subdirectory는 documents-R projects 폴더로 설정
### R project는 한 폴더에 모아서 관리하는 것이 좋음
## 다음으로 넘어가면 더 이상 진행이 안됨. 우리가 이심인이라는 github에 무단으로 접근하는 것으로 간주하기 떄문에.

# 6. Tool-Global option-Git/SVN 에서 create SSH key를 선택
# 7. SSH key type을 RSA로 선택 후 create
# 8. 생성된 암호를 닫고 View public key 선택 후 복사

# 9. Github에서 우상단 자신의 아이콘을 클릭 후 setting-SSH and GPG keys로 접근
# 10. add SSH key 선택 후 해당 장치 이름과 복사한키를 붙여넣고 등록

# 11. R studio에서 new project 선택, Version control 선택, Git 선택
# 12. Repository URL에 SSH 주소를 입력. 
# 13. 창에 yes입력
# 14. github에 있는 파일이 연동된 것을 확인할 수 있다.
## R projects 폴더에 github에 있는 파일이 생성된 것을 확인할 수 있다.

# 15. Files에 보이는 README.md를 누르고 아무 단어나 작성해보고 저장해보자
## environment console쪽에 Git tab을 누르면 README.md가 추가되는 것을 알 수 있다.
# 16. 작성한 단어를 원래대로 바꾼 뒤 저장해보자
## Git tab에 보이던 README.md가 없어진 것을 알 수 있다.
### File에 보이는 README.md (컴퓨터에 있는)와 Git tab에 있는 README.md (github에 있는)가 동일하다는 의미이다.

# 17. Files에 보이는 README.md를 누르고 아무 단어나 작성해보고 저장해보자
## environment console쪽에 Git tab을 누르면 README.md가 추가되는 것을 알 수 있다.
## 추가된 파일 옆의 'M'은 modified를 의미한다.
## testproject.Rproj는 웹에 원래 없던 파일이라서 ?와 함께 새로운 파일이 형성되었다.

# 18. gitignore에 들어가서 "# RStudio files"에 testproject.Rproj를 추가하고 저장해보자
## Git tab에 gitignore가 생성된 것을 알 수 있다.
# 19. gitignore에 들어가서 추가한 testproject.Rproj를 *.Rproj로 변경하고 저장해보자
## testproject.Rproj가 사라지는 것을 알 수 있다.
### gitignore는 그 안에 적힌 파일들에 대해 웹과 연동시키지 말라는 의미이다.
### 따라서 Rproj파일이 연동되지 않게 되어서 사라진 것이다.

# 20. git tab에 보디는 commit를 눌러서 웹과 연동시킬 수 있다. (또는 ctrl+alt+m)
# 21. 새로 업로드하고자 하는 파일을 선택 후 commit클릭
## commit message에 내가 무엇을 변경하였는지 note 가능
## 에러 나옴 (Please tell me who you are)
## local에서 바꾼게 다른사람이 아니라 내가 바꾸었다는 것을 알려줘야 함.

# 22. Git tab-More-Shell에 가서 아래의 내용을 입력한다.
## git config --global user.email "lunark321@gmail.com"
## git config --global user.name "Simin Lee"

# 23. git tab에 보디는 commit를 눌러서 웹과 연동시킬 수 있다. (또는 ctrl+alt+m)
# 24. 새로 업로드하고자 하는 파일을 선택 후 commit클릭
# Git tab의 push를 누르면 데스크탑의 파일이 웹으로 pull을 누르면 웹파일이 데스크탑으로 연동
# 25. github를 새로고침하면 commit message와 함께 파일이 새로 변경된 것을 알 수 있다.
## commit message를 누르면 누가 변경했는지 어느부분이 변경되었는지 확인할 수 있다.


# 실습
# 해당 comment 파일을 R 파일로 저장 (r파일 이름은 모두 소문자일 것)
## Git tab에 해당 R 파일이 추가된 것을 알 수 있음.