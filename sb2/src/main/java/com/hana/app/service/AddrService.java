package com.hana.app.service;

import com.hana.app.data.dto.AddrDto;
import com.hana.app.data.dto.ItemDto;
import com.hana.app.frame.HanaService;
import com.hana.app.repository.AddrRepository;
import com.hana.app.repository.ItemRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AddrService implements HanaService <Integer, AddrDto>{

    final AddrRepository addrRepository;
    @Override
    public int add(AddrDto addrDto) throws Exception {
        return addrRepository.insert(addrDto);
    }

    @Override
    public int del(Integer s) throws Exception {
        return addrRepository.delete(s);
    }

    @Override
    public int modify(AddrDto addrDto) throws Exception {
        return addrRepository.update(addrDto);
    }

    @Override
    public AddrDto get(Integer s) throws Exception {
        return addrRepository.selectOne(s);
    }

    @Override
    public List<AddrDto> get() throws Exception {
        return addrRepository.select();
    }
    public List<AddrDto> get(String s) throws Exception{
        return addrRepository.selectByCust(s);
    }
}
