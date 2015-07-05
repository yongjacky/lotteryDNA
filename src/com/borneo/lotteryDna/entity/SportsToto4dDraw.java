package com.borneo.lotteryDna.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

import com.borneo.framework.base.entity.BaseEntity;

@Entity
@Table(name = "sportstoto_4d_draw")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class SportsToto4dDraw implements BaseEntity {
	
	private static final long serialVersionUID = 1543953940297345748L;

	public static final String TABLE_ALIAS = "sportsToto4dDraw";
	
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_DRAW_NO = "drawNo";
	public static final String ALIAS_DRAW_DATE = "drawDate";
	public static final String ALIAS_CREATED_DATE = "createdDate";
	
	private Long id;
	//draw_no
	private String drawNo;
	//draw_date
	private Date drawDate;
	//created_date
	private Date createdDate;
	// columns END

	public SportsToto4dDraw() {
	}
	public void setId(Long id) {
		this.id = id;
	}
	public SportsToto4dDraw(Long id) {
		this.id = id;
	}
	public void setDrawNo(String drawNo) {
		this.drawNo = drawNo;
	}
	public void setDrawDate(Date drawDate) {
		this.drawDate = drawDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	@Column(name = "id", unique = true, nullable = false, insertable = true, updatable = true, length = 20)
	public Long getId() {
		return this.id;
	}

	@Column(name = "draw_no", unique = false, nullable = false, insertable = true, updatable = true, length = 50)
	public String getDrawNo() {
		return drawNo;
	}
	
	@Column(name = "draw_date", unique = false, nullable = false, insertable = true, updatable = true, length = 50)
	public Date getDrawDate() {
		return drawDate;
	}
	
	@Column(name = "created_date", unique = false, nullable = false, insertable = true, updatable = true, length = 50)
	public Date getCreatedDate() {
		return createdDate;
	}
	
	@Override
	public int hashCode() {
		return new HashCodeBuilder().append(getId()).toHashCode();
	}

	@Override
	public boolean equals(Object obj) {
		if (obj instanceof SportsToto4dDraw == false) {
			return false;
		}
		if (this == obj) {
			return true;
		}
		SportsToto4dDraw other = (SportsToto4dDraw) obj;
		return new EqualsBuilder().append(getId(), other.getId()).isEquals();
	}
}