package com.para.glider3.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired
	public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().withUser("user").password("15001900").roles("USER");
		auth.inMemoryAuthentication().withUser("gravvi").password("15001900").roles("ADMIN");
		auth.inMemoryAuthentication().withUser("dba").password("15001900").roles("ADMIN","DBA");
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
 
	  http.authorizeRequests()
	  	.antMatchers("/", "/home").permitAll() 
	  	.antMatchers("/user/**").access("hasRole('USER')")
		.antMatchers("/admin/**").access("hasRole('ADMIN')")
		.antMatchers("/db/**").access("hasRole('ADMIN') and hasRole('DBA')")
		.and().formLogin()
		.and().exceptionHandling().accessDeniedPage("/Access_Denied");
 
	}
}
