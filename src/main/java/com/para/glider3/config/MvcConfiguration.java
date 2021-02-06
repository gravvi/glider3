package com.para.glider3.config;

import java.io.IOException;

import javax.sql.DataSource;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.para.glider3.dao.ParagliderDao;
import com.para.glider3.dao.ParagliderDaoImp;

@Configuration
@ComponentScan(basePackages="com.para.glider3")
@EnableWebMvc
public class MvcConfiguration extends WebMvcConfigurerAdapter{

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}

	@Bean
	public DataSource getDataSource() {
		
		
		DriverManagerDataSource dataSource = new DriverManagerDataSource(); 
		/*
		 * dataSource.setDriverClassName("com.mysql.jdbc.Driver");   //aktualna na localhoscie
		 * dataSource.setUrl("jdbc:mysql://localhost:3306/paragliders");
		 * dataSource.setUsername("root"); dataSource.setPassword("15001900mcCM");
		 */
	
		
		dataSource.setDriverClassName("org.postgresql.Driver"); // herokuapp glider3 stara nazwa bazy d5d9k2gqr8hq5k
		dataSource.setUrl("jdbc:postgresql://ec2-79-125-4-96.eu-west-1.compute.amazonaws.com:5432/d5d9k2gqr8hq5k");
		dataSource.setUsername("mlpunsmczupasn");
		dataSource.setPassword("c2763f69f8d340eb9b2a39c2389ac882c1f3829601fecc997832c5503b935b62");
		 
		return dataSource;
	}

	@Bean
	public ParagliderDao getParagliderDao(DataSource dataSource) {

		return new ParagliderDaoImp(dataSource);
	}

	@Bean(name="multipartResolver")
	public CommonsMultipartResolver getResolver() throws IOException{
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		
		//Set the maximum allowed size (in bytes) for each individual file.
		
		resolver.setMaxUploadSizePerFile(7340032); //7 MiB
		
		//You may also set other available properties.
		
		return resolver;
	}
	
	@Bean
	public ViewResolver getViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setViewClass(JstlView.class);
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		return resolver;
	}

	

	@Bean
	public MessageSource messageSource() {
		ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
		messageSource.setBasename("messages");
		return messageSource;
	}
}



