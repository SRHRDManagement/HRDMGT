	package org.khmeracademy.smg.model;

import java.util.Collection;
import java.util.Date;
import java.util.List;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
public class User implements UserDetails{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int usr_id;
	private String usr_email;
	private String usr_password;
	private int sta_id;
	private int stu_id;
	private Date usr_date;
	private Role role;
	private List<Role> roles;
	
	public User() {
		usr_email = "";
		usr_password = "";
		role = new Role();
	}
	
	public User(String email, String password,  Role role) {
		super();
		this.usr_email = email;
		this.usr_password = password;
		this.role = role;
	}

	/**
	 * @return the role
	 */
	public Role getRole() {
		return role;
	}
	/**
	 * @param role the role to set
	 */
	public void setRole(Role role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "User [usr_email=" + usr_email + ", usr_password=" + usr_password + ", role=" + role + "]";
	}

	public int getUsr_id() {
		return usr_id;
	}

	public String getUsr_email() {
		return usr_email;
	}

	public String getUsr_password() {
		return usr_password;
	}

	public int getSta_id() {
		return sta_id;
	}

	public int getStu_id() {
		return stu_id;
	}

	public Date getUsr_date() {
		return usr_date;
	}

	public void setUsr_id(int usr_id) {
		this.usr_id = usr_id;
	}

	public void setUsr_email(String usr_email) {
		this.usr_email = usr_email;
	}

	public void setUsr_password(String usr_password) {
		this.usr_password = usr_password;
	}

	public void setSta_id(int sta_id) {
		this.sta_id = sta_id;
	}

	public void setStu_id(int stu_id) {
		this.stu_id = stu_id;
	}

	public void setUsr_date(Date usr_date) {
		this.usr_date = usr_date;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return roles;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return usr_password;
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return usr_email;
	}
	
	
}
