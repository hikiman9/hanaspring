package com.hana.app.frame;

import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface HanaService<K, V> {
    @Transactional
    int add(V v) throws Exception; // public abstract int insert(); ...추상 메소드
    @Transactional
    int del(K k) throws Exception;
    @Transactional
    int modify(V v) throws Exception;
    V get(K k) throws Exception;
    List<V> get() throws Exception;
}
