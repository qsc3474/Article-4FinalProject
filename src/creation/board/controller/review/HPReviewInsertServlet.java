package creation.board.controller.review;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import creation.board.model.dto.FileDTO;
import creation.board.model.dto.HPBoardDTO;
import creation.board.model.service.HPReviewBoardService;
import net.coobird.thumbnailator.Thumbnails;

/**
 * Servlet implementation class HPNoticethumbnailInsertServlet
 */
@WebServlet("/hp/review/file/insert")
public class HPReviewInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* 파일 업로드를 하기 위해서는
		 * 1. 파일이 저장 될 경로
		 * 2. 업로드 할 파일의 최대 용량
		 * 3. 인코딩 방식
		 */
		System.out.println("파일업로드 진입 성공");
		
		if(ServletFileUpload.isMultipartContent(request)) {
			
			System.out.println("파일여부 확인 성공");
			
			String rootLocation = request.getServletContext().getRealPath("/");
			String fileUploadDirectory = rootLocation + "/resources/upload/picture/original/";
			String thumbnailDirectory = rootLocation + "/resources/upload/picture/thumbnail/";
			
			int maxFileSize = 1024 * 1024 * 10;
			String encodingType = "UTF-8";
			
			File directory = new File(fileUploadDirectory);
			File directory2 = new File(thumbnailDirectory);
			
			/* 파일 경로가 존재하지 않는 경우 디렉토리 생성 */
			if(!directory.exists() || !directory2.exists()) {
				directory.mkdirs();
				directory2.mkdirs();
			}
			
			/* 파일에 대한 정보는 리스트에, 다른 파라미터의 정보는 맵에 담자 */
			Map<String, String> parameter = new HashMap<>();
			List<Map<String, String>> fileList = new ArrayList<>();
			
			/* commons 패키지에 있는 클래스를 임포트 해야 함 */
			DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
			fileItemFactory.setRepository(directory);
			fileItemFactory.setSizeThreshold(maxFileSize);
			
			ServletFileUpload fileUpload = new ServletFileUpload(fileItemFactory);
			System.out.println(1);
			try {
				List<FileItem> fileItems = fileUpload.parseRequest(request);
				
				/* 모든 FileItem들을 다 처리해 보자 */
				for(int i = 0 ; i < fileItems.size(); i++) {
					FileItem item = fileItems.get(i);
					
					/* isFormField가 true이면 일반 input태그의 값,
					 * isFormField가 false이면 파일 input태그의 값
					 */
					if(!item.isFormField()) {
						
						if(item.getSize() > 0) {
							
							String fieldName = item.getFieldName();
							String originFileName = item.getName();
							
							int dot = originFileName.lastIndexOf(".");
							String ext = originFileName.substring(dot);
							
							String randomFileName = UUID.randomUUID().toString().replace("-","") + ext;
							
							File storeFile = new File(fileUploadDirectory + randomFileName);
							
							/* 파일을 지정된 경로에 rename한 이름의 파일로 저장한다. */
							item.write(storeFile);
							
							/* 필요한 정보를 Map에 담자 */
							Map<String, String> fileMap = new HashMap<>();
							fileMap.put("originFileName", originFileName);
							fileMap.put("savedFileName", randomFileName);
							fileMap.put("filePath", fileUploadDirectory);
							fileMap.put("ext", ext);
							
							/* 대표 사진과 나머지 사진을 구분하고 썸네일(이미지 리사이징)도 생성하자. */
							int width = 0;
							int height = 0;
							if("thumbnailFile".equals(fieldName)) {
								
								fileMap.put("fileType", "thumbnail");
								
								width = 80;
								height = 80;
								
							} else {
								
								fileMap.put("fileType", "body");
								
								width = 120;
								height = 100;
							}
							
							Thumbnails.of(fileUploadDirectory + randomFileName)
					          .size(width,height)
					          .toFile(thumbnailDirectory + "thumbnail_" + randomFileName);
					
							fileMap.put("thumbnailPath", "/resources/upload/picture/thumbnail/thumbnail_" + randomFileName);
							
							fileList.add(fileMap);
							
						}
						
					} else {
						
						parameter.put(item.getFieldName(), 
								new String(item.getString().getBytes("ISO-8859-1"), encodingType));		
					}
				}
				
				/* 서비스를 요청 할 수 있도록 하나의 사진 게시판 내용을 하나의 BoardDTO에 담는다. */
				HPBoardDTO reviewBoard = new HPBoardDTO();
				reviewBoard.setTitle(parameter.get("title"));
				reviewBoard.setMemberNo(Integer.valueOf(parameter.get("memberNo")));
				reviewBoard.setContent(parameter.get("content"));
				reviewBoard.setCategoryNo(parameter.get("boardCategory"));
				
				reviewBoard.setFileList(new ArrayList<FileDTO>());
				List<FileDTO> list = reviewBoard.getFileList();
				for(int i = 0 ; i < fileList.size(); i++) {
					Map<String, String> file = fileList.get(i);
					
					FileDTO fileInfo = new FileDTO();
					fileInfo.setOriginName(file.get("originFileName"));
					fileInfo.setName(file.get("savedFileName"));
					fileInfo.setPath(file.get("filePath"));
					fileInfo.setThumbnailPath(file.get("thumbnailPath"));
					fileInfo.setExtension(file.get("ext"));
					fileInfo.setCategoryNo(parameter.get("boardCategory"));
					fileInfo.setType(file.get("fileType"));
					
					list.add(fileInfo);
					
				}
				
				/* 서비스 메소드를 요청하며 비지니스 로직을 처리한다. */
				int result = new HPReviewBoardService().insertFileBoard(reviewBoard);
				System.out.println(result);
				/* 성공 실패 여부를 파악 후 처리 */
				String path = "";
				if(result > 0) {
					
					path = "/WEB-INF/views/common/success.jsp";
					request.setAttribute("successCode", "insertReviewFileBoard");
					
				} else {
					
					path = "/WEB-INF/views/common/failed.jsp";
					request.setAttribute("message", "썸네일 게시판 등록 실패!");
					
				}
				
				request.getRequestDispatcher(path).forward(request, response);
								
			} catch (Exception e) {
				
				int cnt = 0;
				
				/* 어떤 종류의 Exception이 발생 하더라도 실패 시 올라간 파일은 삭제해야 한다. */
				for(int i = 0 ; i < fileList.size() ; i++) {
					
					Map<String, String> file = fileList.get(i);
					
					File deleteFile = new File(fileUploadDirectory + file.get("savedFileName"));
					boolean isDeleted = deleteFile.delete();
					
					if(isDeleted) {
						
						cnt++;
						
					}
				}
				
				if(cnt == fileList.size()) {
					
					System.out.println("업로드에 실패한 모든 사진 삭제 완료!");
					
				}else {
					
					System.out.println("업로드에 실패한 모든 사진 삭제 실패!");
					
				}
			}
			
		} else {
			
		}
	
	}

	}


