//package kr.ac.sku.config;
//import java.sql.Driver;
//
//import javax.sql.DataSource;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.ComponentScan;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.context.annotation.Import;
//import org.springframework.jdbc.core.JdbcTemplate;
//import org.springframework.jdbc.datasource.DataSourceTransactionManager;
//import org.springframework.jdbc.datasource.SimpleDriverDataSource;
//import org.springframework.transaction.PlatformTransactionManager;
//import org.springframework.transaction.annotation.EnableTransactionManagement;
//
//
//@Configuration
//@ComponentScan(basePackages= {"kr.ac.sku.service","kr.ac.sku.dao"})
//@Import({MybatisConfig.class})
//@EnableTransactionManagement
//public class ApplicationConfig {
//	@Bean
//	public DataSource dataSource() {
//		SimpleDriverDataSource dataSource = new SimpleDriverDataSource();
//		dataSource.setDriverClass(Driver.class);
//		dataSource.setUrl("jdbc:mysql://127.0.0.1:3306/skudb?serverTimezone=UTC");
//		dataSource.setUsername("sku");
//		dataSource.setPassword("sku");	
//	
//		return dataSource;
//	}
//	@Bean
//	public PlatformTransactionManager transactionManager() {
//		return new DataSourceTransactionManager(dataSource());
//	}
//	
//	@Bean
//	public JdbcTemplate jdbcTemplate() {
//		return new JdbcTemplate(dataSource());
//	}
//}