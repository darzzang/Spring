package co.micol.prj.member.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.comm.Command;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.service.MemberVO;
import co.micol.prj.member.serviceImpl.MemberServiceImpl;

public class MaberSelectList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 회원 전체 목록
		MemberService memberDao = new MemberServiceImpl();
		List<MemberVO> members = memberDao.memberSelectList();	// 전체회원목록 가져옴
		request.setAttribute("members", members);
		
		return "memberSelectList.jsp";
	}

}
