package creation.common.paging;

import creation.board.model.dto.PageInfoDTO;

public class Pagenation {

	
	public static PageInfoDTO getPageInfo(int pageNo, int totalCount,int limit, int buttonAmount) {
		
//		pageNo과 totalCount가 넘어온 상태
//		페이징 처리에 필요한 나머지 변수만 선언
		
		int maxPage;
		int startPage;
		int endPage;
		int startRow;
		int endRow;
		
		
//		총 페이지 수 계산
		
		maxPage =(int)Math.ceil((double) totalCount/limit);
		
		if(pageNo > maxPage) {
			
			if(maxPage == 0) {
				
			} else {
				
				pageNo = maxPage;
				
			}
			
		}
		
		
//		현재 페이지에 보여줄 시작 페이지 수
		startPage = (int)(Math.ceil((double) pageNo/buttonAmount)-1)*buttonAmount+1;
		
//		현재 페이지에 보여줄 마지막 페이지 수
		endPage=startPage +buttonAmount-1;
		
		
//		 max 페이지가 더 작은 경우 마지막 페이지가 max 페이지
		if(maxPage<endPage) {
			endPage=maxPage;
		}
		
		
//		마지막 페이지는 0이 될수 업다. 따라서 게시물이 존재하지 않으면 max페이지와 endpage는 1이된다.
//		화면단에서 이전 버튼 막으면 안써도 댐
		if(maxPage==0 &&endPage==0) {
			maxPage=startPage;
			endPage=startPage;
			
		}
		
//		DB에서 조회 할 시작 번호와 마지막 행 번호를 계산
		
		startRow=(pageNo-1)*limit+1;
		endRow= startRow+limit-1;
		
		
		
		System.out.println("시작열"+startRow);
		System.out.println("종료열"+endRow);
		
		if(endRow > totalCount) {
			
			endRow = totalCount;
			
		}
		
		PageInfoDTO pageInfo = new PageInfoDTO(pageNo, totalCount,limit,buttonAmount,maxPage,startPage,endPage,startRow,endRow);
		
		
		return pageInfo;
	}
	
}
