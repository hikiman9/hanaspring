package com.hana.app.frame;

import com.hana.app.exception.DuplicatedIdException;
import com.hana.app.exception.IdNotFoundException;
import com.hana.app.exception.NotFoundException;

import java.util.List;

public interface Dao<K, V>{
    /**
     * 2024.03.13
     * Hikiman
     * @param v: CustDto
     * @return int
     */
    int insert(V v) throws DuplicatedIdException; // public abstract int insert(); ...추상 메소드
    int delete(K k) throws IdNotFoundException;
    int update(V v) throws IdNotFoundException;
    V select(K k) throws NotFoundException;
    List<V> select() throws NotFoundException;
}
