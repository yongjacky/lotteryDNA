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
@Table(name = "sportstoto_4d_detail")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class SportsToto4dDrawDetail implements BaseEntity {

	private static final long serialVersionUID = -6259881267165466687L;

	public static final String TABLE_ALIAS = "sportsToto4dDrawDetail";
	
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_SPORTS_TOTO_4D_DRAW_ID = "sportstoto4dDrawId";
	public static final String ALIAS_DRAW_DATE = "drawDate";
	public static final String ALIAS_FOUR_D_NO = "fourDNo";
	public static final String ALIAS_CREATED_DATE = "createdDate";
	
	private Long id;
	//sportstoto_4d_draw_id
	private Long sportstoto4dDrawId;
	//draw_date
	private Date drawDate;
	//4d_no
	private String fourDNo;
	//created_date
	private Date createdDate;
	// columns END

	public SportsToto4dDrawDetail() {
	}
	public void setId(Long id) {
		this.id = id;
	}
	public SportsToto4dDrawDetail(Long id) {
		this.id = id;
	}
	public void setSportstoto4dDrawId(Long sportstoto4dDrawId) {
		this.sportstoto4dDrawId = sportstoto4dDrawId;
	}
	public void setDrawDate(Date drawDate) {
		this.drawDate = drawDate;
	}
	public void setFourDNo(String fourDNo) {
		this.fourDNo = fourDNo;
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

	@Column(name = "sportstoto_4d_draw_id", unique = false, nullable = false, insertable = true, updatable = true, length = 50)
	public Long getSportstoto4dDrawId() {
		return sportstoto4dDrawId;
	}
	
	@Column(name = "draw_date", unique = false, nullable = false, insertable = true, updatable = true, length = 50)
	public Date getDrawDate() {
		return drawDate;
	}
	
	@Column(name = "4d_no", unique = false, nullable = false, insertable = true, updatable = true, length = 50)
	public String getFourDNo() {
		return fourDNo;
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
		if (obj instanceof SportsToto4dDrawDetail == false) {
			return false;
		}
		if (this == obj) {
			return true;
		}
		SportsToto4dDrawDetail other = (SportsToto4dDrawDetail) obj;
		return new EqualsBuilder().append(getId(), other.getId()).isEquals();
	}
}