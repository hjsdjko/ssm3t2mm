package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.RedianxinwenDao;
import com.entity.RedianxinwenEntity;
import com.service.RedianxinwenService;
import com.entity.vo.RedianxinwenVO;
import com.entity.view.RedianxinwenView;

@Service("redianxinwenService")
public class RedianxinwenServiceImpl extends ServiceImpl<RedianxinwenDao, RedianxinwenEntity> implements RedianxinwenService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<RedianxinwenEntity> page = this.selectPage(
                new Query<RedianxinwenEntity>(params).getPage(),
                new EntityWrapper<RedianxinwenEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<RedianxinwenEntity> wrapper) {
		  Page<RedianxinwenView> page =new Query<RedianxinwenView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<RedianxinwenVO> selectListVO(Wrapper<RedianxinwenEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public RedianxinwenVO selectVO(Wrapper<RedianxinwenEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<RedianxinwenView> selectListView(Wrapper<RedianxinwenEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public RedianxinwenView selectView(Wrapper<RedianxinwenEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
