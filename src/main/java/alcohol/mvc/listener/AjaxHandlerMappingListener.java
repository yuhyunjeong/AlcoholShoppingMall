package alcohol.mvc.listener;

import java.util.HashMap;
import java.util.Map;
import java.util.ResourceBundle;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import alcohol.mvc.controller.Controller;

public class AjaxHandlerMappingListener {
	/**
	 * 서버가 start될 때 각각의 controller의 구현체를 미리 생성해서 map에 저장 
	 */
	@WebListener
	public class HandlerMappingListener implements ServletContextListener { 

	    public void contextInitialized(ServletContextEvent e)  { 
	    	Map<String, Controller> map = new HashMap<String, Controller>(); 
	    	Map<String, Class<?>> clzMap = new HashMap<String, Class<?>>();
	    	
	    	// ~.properties 파일 로딩 (ResourceBundle은 확장자 안쓴다)
	    	ResourceBundle rb = ResourceBundle.getBundle("ajaxMapping"); // resoureces/ajaxMapping.properties
	    	
	    	try {
		    	for(String key : rb.keySet()) {
		    		String value = rb.getString(key);
		    		//System.out.println(key + " = " + value);
		    		
		    		// String의 문자열을 Controller의 객체로 생성해야한다! 
		    		// Class<?>는 어떤 객체가 가지고 있는 필드, 생성자, 메소드의 정보를 동적으로 가져올수 있도록 도와주는 객체이다 - reflection 개념
		    		// reflection 개념은 동적으로 즉 실행도중에 필요한 객체를 적절하게 생성하고 그 객체가 가지고 있는 생성자나 메소드를 
		    		// 동적으로 호출해줄수 있도록 하는 개념을 reflection이라고 하고 자바에서 이 개념을 적용해 놓은 API가 Class<?> 이다.
		    		
		    		Class<?> className = Class.forName(value); 
		    		Controller controller = (Controller)className.getDeclaredConstructor().newInstance();
		    			
		    		System.out.println("controller = " + controller);
		    		
		    		map.put(key, controller);
		    		clzMap.put(key, className);
		    	}
	    	} catch (Exception ex) {
				ex.printStackTrace();
			}
	    
	    	// 모든 영역에서 map을 사용할 수 있도록 ServletContext영역에 저장한다. 
	    	ServletContext application = e.getServletContext();
	    	
	    	application.setAttribute("ajaxMap", map);
	    	application.setAttribute("ajaxClzMap", clzMap);
	    	application.setAttribute("path", application.getContextPath()); // ${path}만 하면 ${pageContext.request.contextPath } 들어온다.
	    	
	    } 
	}
}