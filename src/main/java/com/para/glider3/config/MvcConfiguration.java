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
@ComponentScan(basePackages="com.para.glider3.* , add.files.*")
@EnableWebMvc
public class MvcConfiguration extends WebMvcConfigurerAdapter{

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}

	@Bean
	public DataSource getDataSource() {
		String host = "service_vm_ip";  
		String username = "username";  
		String password = "password";  
		String dbName = "database_name";  
		int port = 5432;
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		/*dataSource.setDriverClassName("org.postgresql.Driver");
		dataSource.setUrl("jdbc:postgresql://localhost:5432/paragliders" + "?autoReconnect=true");
		dataSource.setUsername("postgres");
		dataSource.setPassword("15001900");*/
		
		/*dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:3306/paragliders");
		dataSource.setUsername("root");
		dataSource.setPassword("15001900mcCM");*/

		/*dataSource.setUrl("jdbc:mysql://172.30.98.145:3306/paragliders");
		dataSource.setUsername("admin");
		dataSource.setPassword("admin");
		 */
		dataSource.setUrl("jdbc:postgresql://ec2-54-247-118-238.eu-west-1.compute.amazonaws.com:5432/ddk2p7tvqvijkj");
		dataSource.setUsername("vghgyuzxgkrmqy");
		dataSource.setPassword("354b7018aedab29f0ec57edda82c22a3649ff25d0c4eec4fcbcfc139448bbdde");
		 
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



