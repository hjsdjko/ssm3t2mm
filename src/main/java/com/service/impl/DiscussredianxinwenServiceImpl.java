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


import com.dao.DiscussredianxinwenDao;
import com.entity.DiscussredianxinwenEntity;
import com.service.DiscussredianxinwenService;
import com.entity.vo.DiscussredianxinwenVO;
import com.entity.view.DiscussredianxinwenView;

@Service("discussredianxinwenService")
public class DiscussredianxinwenServiceImpl extends ServiceImpl<DiscussredianxinwenDao, DiscussredianxinwenEntity> implements DiscussredianxinwenService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussredianxinwenEntity> page = this.selectPage(
                new Query<DiscussredianxinwenEntity>(params).getPage(),
                new EntityWrapper<DiscussredianxinwenEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussredianxinwenEntity> wrapper) {
		  Page<DiscussredianxinwenView> page =new Query<DiscussredianxinwenView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussredianxinwenVO> selectListVO(Wrapper<DiscussredianxinwenEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussredianxinwenVO selectVO(Wrapper<DiscussredianxinwenEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussredianxinwenView> selectListView(Wrapper<DiscussredianxinwenEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussredianxinwenView selectView(Wrapper<DiscussredianxinwenEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
