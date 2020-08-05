package com.test.admin.main;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.atticket.AdminMemberDTO;

@WebServlet("/adminlogin.do")
public class AdminLogin extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//1. 데이터 가져오기(id,pw)
		//2. DB 작업  > select (입력한 아이디 비번이 진짜 db 에 있는지?)
		//3. 결과 반환  > 완료 처리
		
	
		
		//1. 데이터 가져오기
		String id = req.getParameter("id");//아이디 가져오기 -> 사용자가 쓴것
		String pw = req.getParameter("pw");//비번 가져오기 -> 사용자가 쓴것
		
//		System.out.println("here");
//		System.out.println(id);
//		System.out.println(pw);
		
		//2. DB 작업 -> DAO 위임
		AdminMemberDAO dao = new AdminMemberDAO();
		
		//상자를 만들어서 담아서 데이터를 넘길것이다!
		AdminMemberDTO dto = new AdminMemberDTO();
		dto.setId(id);
		dto.setPw(pw);
		//dto.setName(name);
		System.out.println(dto.getId());
		System.out.println(dto.getPw());
		
		
		int result = dao.login(dto);//1,0
		System.out.println("result = " + result);
		
		//3.
		if (result == 1) {
			//로그인 o
			//1.인증(Authentication) : 이 사람이 우리 고객이 맞는지 확인하는 작업임.
			//- 인증티켓 을 발급할 것이다
			//- 인증티켓은 개인적이어야 하고, 전역이어야 한다!(놀이동산 어디던지 돌아다닐 수 있으므로!) 
			//	-> session 에 넣어주면 된다 인증티켓을 한번 발급받으면 어떤 페이지를 가던 죽어버리면 안된다.
			
			//세선을 어찌 가져오느냐?
			HttpSession session = req.getSession();//이러한 방식으로 얻어와야 한다!
			//session.setAttribute("num", 1);//일단 아무값이나 넣어준다. -> 인증을 받으면 num 이라는 변수에 1이 있는거고 인증을 못받으면 num 이라는 변수 자체가 없을것이다
										   // 즉 어떠한 권한을 접근할때  num 이 있나 없나 확인 해서 들여보내주면 되는것이다!
			//System.out.println(dto.getName());
			//session.setAttribute("id", dto.getId());//아이디를 많이 넣어준다 -> 인증티켓
			//session.setAttribute("name", dto.getName());//아이디를 많이 넣어준다 -> 인증티켓
			//session.setAttribute("name", dto.getName());//아이디를 많이 넣어준다 -> 인증티켓
			//session.setAttribute("pic", dto.getPic());//아이디를 많이 넣어준다 -> 인증티켓
			//System.out.println("asdasd?");//여기까진 문제가 없음
			//System.out.println(dto.getId());	
			
			AdminMemberDTO dto2 = dao.getMember(dto.getId());
			System.out.println(dto2);
			//System.out.println(dto2.getId());
			//System.out.println(dto2.getPw());
			
			session.setAttribute("id", dto2.getId());//여기서 문제가 나타남
			session.setAttribute("pw", dto2.getPw());
			//System.out.println("확인확인");
			//System.out.println(dto2.getName());
			session.setAttribute("name", dto2.getName());
			
			resp.sendRedirect("/aaa/adminmain.do");
			
			
			//2.허가(Authorization) : 자격이 있거나 없거나 한 대상을 어떤 행동을 할때 허가할지 말지 결정하는 것이다.
			
		} else {
			System.out.println(result);
			//로그인 x
			
			PrintWriter writer = resp.getWriter();
			writer.print("<html>");
			writer.print("<body>");
			writer.print("<script>");
			writer.print("alert('failed'); history.back();");
			writer.print("</script>");
			writer.print("</body>");
			writer.print("</html>");
			writer.close();
		}
		
	}
	
}
