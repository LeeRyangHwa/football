package com.pro.moviepro.dao;

import com.pro.moviepro.dto.Member;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface MemberRepository extends JpaRepository<Member, String> {
    List<Member> findByid(String id);
}
