//package kr.ac.sku.config;
//
//import java.util.concurrent.TimeUnit;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.ComponentScan;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.http.CacheControl;
//import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
//import org.springframework.web.servlet.config.annotation.EnableWebMvc;
//import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
//import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
//import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
//import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
//
//import kr.ac.sku.controller.HomeController;
//
//@Configuration
//@EnableWebMvc
//@ComponentScan("kr.ac.sku.controller")
//public class MvcConfig implements WebMvcConfigurer {
//
//	@Override
//	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
//		configurer.enable();
//	}
//
//	@Override
//	public void configureViewResolvers(ViewResolverRegistry registry) {
//		registry.jsp("/WEB-INF/view/", ".jsp");
//	}
//
//	@Override
//	public void addResourceHandlers(ResourceHandlerRegistry registry) {
//        registry
//          .addResourceHandler("/css/**")
//          .addResourceLocations("/static/css/");
//    }
//	
////	@Override
////	public void addViewControllers(ViewControllerRegistry registry) {
////	    registry.addViewController("/").setViewName("redirect:/viewtodo");
////	}
//}
