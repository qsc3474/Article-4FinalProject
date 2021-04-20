package creation.common.paging;

import creation.htBoard.htmodel.dto.HTPageInfoDTO;

public class htPagenation {

	public static HTPageInfoDTO getPageInfo(int pageNo, int totalCount, int limit, int buttonAmount) {
		
		/* pageNo과 totalCount가 넘어온 상태이기 떄문에
		 * 페이징 처리에 필요한 나머지 변수만 선언을 한다.
		 */
		int maxPage;
		int startPage;
		int endPage;
		int startRow;
		int endRow;
		
		/* 총 페이지 수 계산  */ // Math.ceil 소수점을 올려준다 
		maxPage = (int)Math.ceil((double) totalCount / limit);
		
		/* 현재 페이지에 보여줄 시작 페이지 수 */
		startPage = (int) (Math.ceil((double) pageNo / buttonAmount) -1) * buttonAmount +1;
		
		/* 현제 페이지에 보여 줄 마지막 페이지 */
		endPage = startPage + buttonAmount -1;
		
		/* max 페이지가 더 작은 경우 마지막 페이지가 max페이지이다. */
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		/* 마지막 페이지는 0이 될 수 없기 때문에 게시물이 아무 것도 존재하지 않으면 maxPage와 endPage는 1이 된다. */
		if(maxPage == 0 && endPage == 0) {
			maxPage = startPage;
			endPage = startPage;
		}
		
		/* DB 조회 할 시작 번호와 마지막 행 번호를 계산한다.*/
		startRow = (pageNo -1) * limit + 1;
		endRow = startRow + limit - 1;
		
//		System.out.println("startRow : " + startRow); 
//		System.out.println("endRow : " + endRow); 
		
		HTPageInfoDTO pageInfo = new HTPageInfoDTO(pageNo, totalCount, limit,buttonAmount, maxPage, startPage, endPage, startRow, endRow);
		
		return pageInfo;
		
	}
}
