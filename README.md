# spring project-FreeBoard
자유게시판
## 🖊개발 기간
2022/11/02 ~ 2022/11/21
## 개발 환경
● JDK 1.8

● STS 3.9.14

● SPRING 5.0.7

● ORACLE
## 📄주요 기능
1. 검색, 글작성, 로그인, 회원정보 수정,삭제

2. 비로그인 유저는 글작성, 수정 제한

3. 가입시 공백, 글자수 체크, 가입시 이동묻기, 삭제시 확인

4. 비로그인 유저가 권한이 필요한 페이지에 URL로 접근시 메인으로 이동
---
### 리스트 ,회원가입

● 프로그램을 실행하면 리스트 화면이 나타납니다

● 로그인을 하지 않은 사용하는 로그인,회원가입 버튼이 보이고 글쓰기 버튼이 보이지 않습니다

● 회원가입시 영문체크, 공백여부, 글자수, 비밀번호 일치 여부를 확인합니다

● 가입 완료시 로그인 페이지로의 이동 여부를 물어봅니다

<img width="100%" src="https://user-images.githubusercontent.com/118809108/203780224-c051d4d3-6d04-485e-be02-9271e835917f.jpg"/>
<img width="80%" src="https://user-images.githubusercontent.com/118809108/203780225-fea36806-531a-4dc3-8551-47a1651fcb8f.jpg"/>

---

### 로그인 후의 리스트, 내정보

● 로그인 유저는 로그인,가입 버튼이 로그아웃, 계정 버튼으로 바뀌고 글쓰기 버튼이 생깁니다

● 개인정보 수정을 할 수 있고, 탈퇴 시 확인을 합니다

<img width="100%" src="https://user-images.githubusercontent.com/118809108/203780226-f8e5794a-e686-43f7-900b-bf9fb3919aa0.jpg"/>
<img width="60%" src="https://user-images.githubusercontent.com/118809108/203772384-5088899b-adb2-423c-a32d-1000eea1ea95.JPG"/>

◈ 처음에는 로그인 유지 방식을 로그인 성공시 쿠키 생성후 값에 DB에서 가져온 아이디를 담아 보내주고 재요청시 서버에 저장된 세션값과 

일치 여부를 확인했으나, 유저의 개인정보를 쿠키에 담는다는 보안상의 문제도 있고, 크롬 개발자도구에 쿠키를 생성하지 않아도 

jsessionId 라는 이름으로 요청이 오고, 그 값으로 자동생성된 세션의 값이 담긴다는것을 알게 된 후 세션 유지방식으로 바꾸었습니다.

---

### 글쓰기, 게시글 조회

● 로그인한 사용자는 글 작성을 할 수 있습니다

● 작성 완료시 게시글 조회 페이지로 이동합니다 

● 조회수는 작성,수정시 올라가지 않고 게시글 조회 할때만 올라갑니다

<img width="100%" src="https://user-images.githubusercontent.com/118809108/203780227-94393c34-3e78-46a0-82b4-c769bfdde2a3.jpg"/>

---

### 검색

● 검색 시 여러 옵션을 고를 수 있고, 페이지 이동시 옵션과 키워드가 유지됩니다

● 검색 후 게시글을 클릭하고 목록으로 돌아올 떄 검색옵션, 키워드와 함께 페이지 번호를 기억합니다

<img width="100%" src="https://user-images.githubusercontent.com/118809108/203780221-8541c990-2732-4c8e-8182-768cd163ff66.jpg"/>

---

### URL

● 로그인 하지 않은 사용자가 URL을 통해 권한이 필요한 페이지에 강제로 접근시 목록 페이지로 이동합니다

<img width="60%" src="https://user-images.githubusercontent.com/118809108/203772396-7360e3aa-ddb5-44f6-a939-f0e14bbf408a.JPG"/>
<img width="60%" src="https://user-images.githubusercontent.com/118809108/203772397-ffec83ad-ae6a-4a48-b877-9e39926e3abb.JPG"/>

---

### ERD

<img width="100%" src="https://user-images.githubusercontent.com/118809108/203772371-c5fef000-c518-402d-86b8-a9a51c0ae6af.JPG"/>
