package com.hana.app.frame;

import java.util.List;

public interface HanaService<K, V> {
    int add(V v) throws Exception; // public abstract int insert(); ...추상 메소드
    int del(K k) throws Exception;
    int modify(V v) throws Exception;
    V get(K k) throws Exception;
    List<V> get() throws Exception;
}
