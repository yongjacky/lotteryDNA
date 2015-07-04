package com.borneo.lotteryDna.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotNull;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

import com.borneo.framework.base.entity.BaseEntity;

@Entity
@Table(name = "appannie_config")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class LotteryProvider implements BaseEntity {
	
	private static final long serialVersionUID = -8014572491875858004L;

	public static final String TABLE_ALIAS = "appannie_config";
	
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_AUTH_HEADER = "authHeader";
	public static final String ALIAS_ENABLE = "enable";
	
	/**
	 * id db_column: id
	 */
	@Max(9223372036854775807L)
	private Long id;

	/**
	 * authHeader db_column: auth_header
	 */
	@NotNull
	private String authHeader;
	/**
	 * enable db_column: enable
	 */
	@NotNull
	private Boolean enable;
	// columns END

	public LotteryProvider() {
	}

	public void setId(Long id) {
		this.id = id;
	}
	public LotteryProvider(Long id) {
		this.id = id;
	}
	public void setAuthHeader(String authHeader) {
		this.authHeader = authHeader;
	}
	public void setEnable(Boolean enable) {
		this.enable = enable;
	}

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	@Column(name = "id", unique = true, nullable = false, insertable = true, updatable = true, length = 20)
	public Long getId() {
		return this.id;
	}

	@Column(name = "auth_header", unique = false, nullable = false, insertable = true, updatable = true, length = 50)
	public String getAuthHeader() {
		return authHeader;
	}
	
	@Column(name = "enable", unique = false, nullable = false, insertable = true, updatable = true, length = 1)
	public Boolean getEnable() {
		return this.enable;
	}
	
	@Override
	public int hashCode() {
		return new HashCodeBuilder().append(getId()).toHashCode();
	}

	@Override
	public boolean equals(Object obj) {
		if (obj instanceof LotteryProvider == false) {
			return false;
		}
		if (this == obj) {
			return true;
		}
		LotteryProvider other = (LotteryProvider) obj;
		return new EqualsBuilder().append(getId(), other.getId()).isEquals();
	}
}