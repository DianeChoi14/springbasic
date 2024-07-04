package com.webdiane.model;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor(access = AccessLevel.PROTECTED)  // 기본생성자를 protected(보호함)하도록 생성(프로그래머가 임의로 기본생성자를 호출하지 못하도록)
@AllArgsConstructor   //모든 매계변수가 있는 생성자
@Builder
@ToString
@Getter
@Setter
public class ProductVO {
   
   private String productNo;
   private String productName;
   private int qty;
   private int price;
   private String productNickName;

}
