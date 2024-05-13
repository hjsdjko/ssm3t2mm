package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 视频信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-04-17 17:50:19
 */
@TableName("shipinxinxi")
public class ShipinxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public ShipinxinxiEntity() {
		
	}
	
	public ShipinxinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 视频标题
	 */
					
	private String shipinbiaoti;
	
	/**
	 * 视频分类
	 */
					
	private String shipinfenlei;
	
	/**
	 * 视频封面
	 */
					
	private String shipinfengmian;
	
	/**
	 * 视频播放
	 */
					
	private String shipinbofang;
	
	/**
	 * 视频介绍
	 */
					
	private String shipinjieshao;
	
	/**
	 * 发布日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date faburiqi;
	
	/**
	 * 博主账号
	 */
					
	private String bozhuzhanghao;
	
	/**
	 * 昵称
	 */
					
	private String nicheng;
	
	/**
	 * 赞
	 */
					
	private Integer thumbsupnum;
	
	/**
	 * 踩
	 */
					
	private Integer crazilynum;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：视频标题
	 */
	public void setShipinbiaoti(String shipinbiaoti) {
		this.shipinbiaoti = shipinbiaoti;
	}
	/**
	 * 获取：视频标题
	 */
	public String getShipinbiaoti() {
		return shipinbiaoti;
	}
	/**
	 * 设置：视频分类
	 */
	public void setShipinfenlei(String shipinfenlei) {
		this.shipinfenlei = shipinfenlei;
	}
	/**
	 * 获取：视频分类
	 */
	public String getShipinfenlei() {
		return shipinfenlei;
	}
	/**
	 * 设置：视频封面
	 */
	public void setShipinfengmian(String shipinfengmian) {
		this.shipinfengmian = shipinfengmian;
	}
	/**
	 * 获取：视频封面
	 */
	public String getShipinfengmian() {
		return shipinfengmian;
	}
	/**
	 * 设置：视频播放
	 */
	public void setShipinbofang(String shipinbofang) {
		this.shipinbofang = shipinbofang;
	}
	/**
	 * 获取：视频播放
	 */
	public String getShipinbofang() {
		return shipinbofang;
	}
	/**
	 * 设置：视频介绍
	 */
	public void setShipinjieshao(String shipinjieshao) {
		this.shipinjieshao = shipinjieshao;
	}
	/**
	 * 获取：视频介绍
	 */
	public String getShipinjieshao() {
		return shipinjieshao;
	}
	/**
	 * 设置：发布日期
	 */
	public void setFaburiqi(Date faburiqi) {
		this.faburiqi = faburiqi;
	}
	/**
	 * 获取：发布日期
	 */
	public Date getFaburiqi() {
		return faburiqi;
	}
	/**
	 * 设置：博主账号
	 */
	public void setBozhuzhanghao(String bozhuzhanghao) {
		this.bozhuzhanghao = bozhuzhanghao;
	}
	/**
	 * 获取：博主账号
	 */
	public String getBozhuzhanghao() {
		return bozhuzhanghao;
	}
	/**
	 * 设置：昵称
	 */
	public void setNicheng(String nicheng) {
		this.nicheng = nicheng;
	}
	/**
	 * 获取：昵称
	 */
	public String getNicheng() {
		return nicheng;
	}
	/**
	 * 设置：赞
	 */
	public void setThumbsupnum(Integer thumbsupnum) {
		this.thumbsupnum = thumbsupnum;
	}
	/**
	 * 获取：赞
	 */
	public Integer getThumbsupnum() {
		return thumbsupnum;
	}
	/**
	 * 设置：踩
	 */
	public void setCrazilynum(Integer crazilynum) {
		this.crazilynum = crazilynum;
	}
	/**
	 * 获取：踩
	 */
	public Integer getCrazilynum() {
		return crazilynum;
	}

}
