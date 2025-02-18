# Assistant

현직에서 사용하는 sql을 분석하여 자바 객체와 인터페이스 및 MyBatis를 작성하여 보다 효율적인 업무를 수행하기 위해 제작되었습니다.

스크립트 분석 규칙은 현재 재직 중인 회사에 맞게 짜여져 있어 다른 곳에서 사용할 수 없습니다.

**목차**

- [사용 설명서](#사용-설명서)
- [개요](#사용-설명)
- [기술 스택](#기술-스택)

## [사용 설명서](https://github.com/azqazq195/assistant/blob/master/SUMMARY.md)

## 개요

평소 반복업무를 싫어하여 자동화에 관심이 많았던 단순 CRUD를 도메인 -> MyBatis -> 인터페이스 -> 테스트 코드 까지 작성하는 시간이 낭비된다고 생각하여 해당 앱을 제작하게 되었습니다.

아래 기술 스택으로 개발을 진행하였습니다. 업무 시 인터넷 창을 여러가지 켜놓고 하는 것을 고려하여 앱으로 제작하고 싶어 Mulit-Platform인 Flutter로 제작을 하였습니다.

한시간 정도 소요되던 CRUD 작성 작업이 1분이면 가능하게 되었습니다. 해당 앱은 다른 동료들에게 공유하여 함께 사용 중 입니다.

## 기술 스택

### Front-end

- Flutter
  - Provider
  - Retrofit

### Back-end

- Java
- Spring Boot
- MariaDB
- JWT
- JPA
- [개인 서버](https://moseoh.notion.site/94b5ae6b45744265a533d9a1daa6c280)
