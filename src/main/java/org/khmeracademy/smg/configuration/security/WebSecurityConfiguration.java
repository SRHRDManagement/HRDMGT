package org.khmeracademy.smg.configuration.security;

import org.khmeracademy.smg.configuration.security.AjaxAuthenticationFailureHandler;
import org.khmeracademy.smg.configuration.security.AjaxAuthenticationSuccessHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;

@Configuration
@EnableWebSecurity
public class WebSecurityConfiguration extends WebSecurityConfigurerAdapter {
	
	@Autowired
	@Qualifier(value="CustomUserDetailService")
	private UserDetailsService userDetailsService;
	
	@Autowired
	@Qualifier(value="ajaxAuthenticationSuccessHandler")
	private AjaxAuthenticationSuccessHandler ajaxAuthenticationSuccessHandler;
	
	@Autowired
	@Qualifier(value="ajaxAuthenticationFailureHandler")
	private AjaxAuthenticationFailureHandler ajaxAuthenticationFailureHandler;
	
	@Autowired
	protected void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService);//65586103
		//auth.inMemoryAuthentication().withUser("vansapha@gmail.com").password("007vansa").roles("ADMIN");
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.authorizeRequests()
			.antMatchers("/home").hasRole("ADMIN");
		http
			.formLogin()
			.loginPage("/login")
			.usernameParameter("usr_email")
			.passwordParameter("usr_password")
			.permitAll()
			.failureHandler(ajaxAuthenticationFailureHandler)
			.successHandler(ajaxAuthenticationSuccessHandler);
		http
		.logout()
		.logoutUrl("/logout")
		.logoutSuccessUrl("/login?logout")
		.invalidateHttpSession(true)
		.deleteCookies("JESSIONID")
		.permitAll();	
		
		http.csrf().disable();
		http.exceptionHandling().accessDeniedPage("/access-denied");
	}

}
