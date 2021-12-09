package co.micol.prj.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.board.service.BoardService;
import co.micol.prj.board.serviceImpl.BoardServiceImpl;
import co.micol.prj.comm.Command;

public class BoardSelectList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		BoardService boardDao = new BoardServiceImpl();
		request.setAttribute("boards", boardDao.boardSelectList());
		
		return "board/boardSelectList";
	}

}
