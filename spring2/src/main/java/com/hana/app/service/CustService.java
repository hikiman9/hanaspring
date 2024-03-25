package com.hana.app.service;

import com.hana.app.data.CustDto;
import com.hana.app.exception.DuplicatedIdException;
import com.hana.app.exception.IdNotFoundException;
import com.hana.app.exception.NotFoundException;
import com.hana.app.frame.Dao;
import com.hana.app.frame.Service;
import com.hana.app.repository.CustDao;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
@org.springframework.stereotype.Service
public class CustService implements Service<String, CustDto> {
    @Autowired
    Dao<String, CustDto> dao;
    @Override
    public int add(CustDto custDto) throws DuplicatedIdException {
        System.out.println("Start TR ...");
        try{
            dao.insert(custDto);
            System.out.println("Commit ...");
        } catch (DuplicatedIdException e) {
            System.out.println("Roll Back ...");
            throw e;
        } finally {
            System.out.println("End Tr ...");
        }

        // SMS ...
        System.out.println("Send SMS ...");
        // Mail ...
        return 0;
    }

    @Override
    public int del(String s) throws IdNotFoundException {
        System.out.println("Delete Requested ...");
        try{
            dao.delete(s);
            System.out.println("Delete Done");
        } catch (IdNotFoundException e) {
            System.out.println("Delete Failed");
            throw e;
        } finally {
            System.out.println("End Operation ...");
        }
        return 0;
    }

    @Override
    public int modify(CustDto custDto) throws IdNotFoundException {
        System.out.println("Modify Requested ...");
        try{
            dao.update(custDto);
            System.out.println("Update Done");
        } catch (IdNotFoundException e) {
            System.out.println("Update Failed");
            throw e;
        } finally {
            System.out.println("End Operation ...");
        }
        return 0;
    }

    @Override
    public CustDto get(String s) throws NotFoundException {
        System.out.println("Inquiry Requested ...");
        CustDto req = null;
        try{
            req = dao.select(s);
            System.out.println("Inquiry Done");
        } catch (NotFoundException e) {
            System.out.println("Inquiry Failed");
            throw e;
        } finally {
            System.out.println("End Operation ...");
        }
        return req;
    }

    @Override
    public List<CustDto> get() throws NotFoundException {
        System.out.println("Group of Inquiries Requested ...");
        List<CustDto> req = null;
        try{
            req = dao.select();
            System.out.println("Inquiry Done");
        } catch (NotFoundException e) {
            System.out.println("Inquiry Failed");
            throw e;
        } finally {
            System.out.println("End Operation ...");
        }
        return req;
    }
}
