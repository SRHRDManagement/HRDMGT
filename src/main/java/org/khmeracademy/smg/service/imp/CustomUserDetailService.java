package org.khmeracademy.smg.service.imp;

import org.khmeracademy.smg.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service("CustomUserDetailService")
public class CustomUserDetailService implements UserDetailsService{

	@Autowired
	private UserServiceImpl userService;
	
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		User user = userService.findUserByEmail(email);
		if(user == null){
			System.out.println("User not found");
			throw new UsernameNotFoundException("User not found, XD");
		}
//		System.out.println(user.getRoles().get(0).getName());
		return user;
	}
}
