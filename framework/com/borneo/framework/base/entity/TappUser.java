/*
 * Powered By [rapid-framework] Web Site: http://www.rapid-framework.org.cn Google Code: http://code.google.com/p/rapid-framework/ Since 2008 - 2013
 */

package com.borneo.framework.base.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.persistence.UniqueConstraint;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.validator.constraints.Length;

import com.borneo.framework.common.utils.DateUtils;
import com.borneo.framework.common.utils.EConstant;
import com.borneo.framework.security.modules.BaseUserDetails;

@Entity
@Table(name = "t_app_user", uniqueConstraints = { @UniqueConstraint(columnNames = { "username" }) })
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class TappUser extends BaseUserDetails implements BaseEntity {

    //alias
    public static final String TABLE_ALIAS = "TappUser";
    public static final String ALIAS_ID = "id";
    public static final String ALIAS_USERNAME = "username";
    public static final String ALIAS_PASSWORD = "password";
    public static final String ALIAS_STATUS = "status";
    public static final String ALIAS_USER_TYPE = "userType";
    public static final String ALIAS_CREATED_DATE = "createdDate";
    public static final String ALIAS_MODIFIED_DATE = "modifiedDate";
    public static final String ALIAS_CREATED_BY = "createdBy";
    public static final String ALIAS_MODIFIED_BY = "modifiedBy";
    //date formats
    public static final String FORMAT_CREATED_DATE = DATE_TIME_FORMAT;
    public static final String FORMAT_MODIFIED_DATE = DATE_TIME_FORMAT;
    private static final long serialVersionUID = 5454155825314635342L;

    //可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
    //columns START
    /**
     * id db_column: id
     */

    private java.lang.Long id;
    /**
     * username db_column: username
     */
    @Length(max = 50)
    private java.lang.String username;
    /**
     * password db_column: password
     */
    @Length(max = 32)
    private java.lang.String password;
    /**
     * status db_column: status
     */

    private java.lang.Boolean status;
    /**
     * userType db_column: user_type
     */
    private Integer userType;
    /**
     * createdDate db_column: created_date
     */

    private java.util.Date createdDate;
    /**
     * modifiedDate db_column: modified_date
     */

    private java.util.Date modifiedDate;
    /**
     * createdBy db_column: created_by
     */
    @Length(max = 50)
    private java.lang.String createdBy;
    /**
     * modifiedBy db_column: modified_by
     */
    @Length(max = 50)
    private java.lang.String modifiedBy;

    //columns END
    private List troles = new ArrayList<Trole>();

    @Transient
    private String newPassword;

    public TappUser() {
    }

    public TappUser(java.lang.Long id) {
        this.id = id;
    }

    //    @SequenceGenerator(name = "t_app_user_id_seq", sequenceName = "t_app_user_id_seq", initialValue = 1, allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id", unique = true, nullable = false, insertable = true, updatable = true, length = 19)
    public java.lang.Long getId() {
        return this.id;
    }

    public void setId(java.lang.Long value) {
        this.id = value;
    }

    @Override
    @Column(name = "username", unique = false, nullable = true, insertable = true, updatable = true, length = 50)
    public java.lang.String getUsername() {
        return this.username;
    }

    @Override
    public void setUsername(java.lang.String value) {
        this.username = value;
    }

    @Override
    @Column(name = "password", unique = false, nullable = true, insertable = true, updatable = true, length = 32)
    public java.lang.String getPassword() {
        return this.password;
    }

    @Override
    public void setPassword(java.lang.String value) {
        this.password = value;
    }

    @Column(name = "status", unique = false, nullable = true, insertable = true, updatable = true, length = 1)
    public java.lang.Boolean getStatus() {
        return this.status;
    }

    public void setStatus(java.lang.Boolean value) {
        this.status = value;
    }

    @Column(name = "user_type", unique = false, nullable = true, insertable = true, updatable = true)
    public Integer getUserType() {
        return this.userType;
    }

    public void setUserType(Integer value) {
        this.userType = value;
    }
    
    @Transient
    public String getUserTypeStr() {
        return EConstant.UserType.values()[userType].name();
    }

    @Transient
    public String getCreatedDateString() {
        return DateUtils.dateToStr(getCreatedDate(), FORMAT_CREATED_DATE);
    }

    public void setCreatedDateString(String value) {
        setCreatedDate(DateUtils.string2Date(value, FORMAT_CREATED_DATE));
    }

    @Column(name = "created_date", unique = false, nullable = true, insertable = true, updatable = true, length = 29)
    public java.util.Date getCreatedDate() {
        return this.createdDate;
    }

    public void setCreatedDate(java.util.Date value) {
        this.createdDate = value;
    }

    @Transient
    public String getModifiedDateString() {
        return DateUtils.dateToStr(getModifiedDate(), FORMAT_MODIFIED_DATE);
    }

    public void setModifiedDateString(String value) {
        setModifiedDate(DateUtils.string2Date(value, FORMAT_MODIFIED_DATE));
    }

    @Column(name = "modified_date", unique = false, nullable = true, insertable = true, updatable = true, length = 29)
    public java.util.Date getModifiedDate() {
        return this.modifiedDate;
    }

    public void setModifiedDate(java.util.Date value) {
        this.modifiedDate = value;
    }

    @Column(name = "created_by", unique = false, nullable = true, insertable = true, updatable = true, length = 50)
    public java.lang.String getCreatedBy() {
        return this.createdBy;
    }

    public void setCreatedBy(java.lang.String value) {
        this.createdBy = value;
    }

    @Column(name = "modified_by", unique = false, nullable = true, insertable = true, updatable = true, length = 50)
    public java.lang.String getModifiedBy() {
        return this.modifiedBy;
    }

    public void setModifiedBy(java.lang.String value) {
        this.modifiedBy = value;
    }

    @ManyToMany(cascade = { CascadeType.MERGE })
    @JoinTable(name = "t_app_user_role", joinColumns = { @JoinColumn(name = "t_app_user_id") }, inverseJoinColumns = { @JoinColumn(name = "t_role_t_id") })
    @OrderBy("tid")
    public List<Trole> getTroles() {
        return troles;
    }

    public void setTroles(List<Trole> troles) {
        this.troles = troles;
    }

    @Transient
    public String getNewPassword() {
        return newPassword;
    }

    @Transient
    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE).append("Id", getId()).append("Username", getUsername()).append("Password", getPassword()).append("Status", getStatus()).append("UserType", getUserType()).append("CreatedDate", getCreatedDate()).append("ModifiedDate", getModifiedDate()).append("CreatedBy", getCreatedBy()).append("ModifiedBy", getModifiedBy()).toString();
    }

    @Override
    public int hashCode() {
        return new HashCodeBuilder().append(getId()).toHashCode();
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof TappUser)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        TappUser other = (TappUser) obj;
        return new EqualsBuilder().append(getId(), other.getId()).isEquals();
    }
}
