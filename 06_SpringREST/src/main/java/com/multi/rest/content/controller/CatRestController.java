package com.multi.rest.content.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.multi.rest.content.model.vo.Cat;
import com.multi.rest.content.service.CatService;


// @RestController : Rest 요청을 받는 Controller로 지칭하는 어노테이션,
//	 				 무조건 REST 방식(=View를 사용하지 않음)으로 요청과 응답을 처리한다.
// @RequestMapping : 최상위 리소스를 지칭하는 url, 현재는 cat(고양이) 정보만 다루는 REST로 가정

@RequestMapping("/cat")
@RestController 
public class CatRestController {

	@Autowired
	private CatService service;
	
	@GetMapping("") // read 할때 사용하는 어노테이션
	public ResponseEntity<List<Cat>> getCatAllInfo(
			@RequestParam(name = "name", required = false) String name){
		if(name == null) {
			List<Cat> list = service.selectAll();
			return ResponseEntity.status(HttpStatus.OK).body(list);
		}else {
			List<Cat> list = service.selectByName(name);
			return ResponseEntity.status(HttpStatus.OK).body(list);
		}
	}
	
//	@PathVariable : path(url 경로)상에 특정 리소스를 가져오는 어노테이션
	@GetMapping("/{id}") // get 요청에 path에서 리소스의 ID를 가져오는 방법, 표준적인 방법
	public ResponseEntity<Cat> getCatInfo(@PathVariable("id") int id)
	{
		Cat cat = service.selectById(id);
		if(cat != null) {
			return ResponseEntity.status(HttpStatus.OK).body(cat);
		}else {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
		}
	}
	// @RequestBody : json 객체를 언마샬링 하여 Cat 으로 바꿔주는 어노테이션 = 파싱 없이 json 객체를 java로 바꿔줌
	@PostMapping("")
	public ResponseEntity<Cat> createCat(@RequestBody Cat requestCat){
		int result = service.insertCat(requestCat);
		if(result>0) {
//			Cat cat = service.selectMostRecent(); //동시성 이슈가 발생 가능한 코드
			Cat cat = service.selectById(requestCat.getId());
			return ResponseEntity.status(HttpStatus.OK).body(cat);
		}else {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
		}
	}
	
	@PutMapping("/{id}")
	public ResponseEntity<Cat> updateCat(@PathVariable("id") int id, 
										@RequestBody Cat requestCat){
		requestCat.setId(id);
		Cat cat = service.updateCat(requestCat);
		if(cat !=null) {
			return ResponseEntity.status(HttpStatus.OK).body(cat);
		}else {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
		}
	}
	@DeleteMapping("/{id}")
	public ResponseEntity<Cat> deleteCat(@PathVariable("id") int id){
		Cat cat = service.selectById(id);
		int result = service.deleteCat(id);
		if(result > 0) {
			return ResponseEntity.status(HttpStatus.OK).body(cat);
		}else {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
		}
	}
	
	
}
