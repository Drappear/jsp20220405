package app01.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import app01.dto.BoardDto;

public class BoardDao {
	
	// DTO : Data Transfer Object
	
	public boolean insert(Connection con, BoardDto dto) {
		String sql = "INSERT INTO Board (title, body, inserted) "
				+ "VALUES (?, ?, ?) ";
		int result = 0;
		
		// statement
		try(PreparedStatement pstmt = con.prepareStatement(sql)){
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getBody());
			
			// LocalDate 날짜
			// LocalDateTime 날짜, 시간
			LocalDateTime now = LocalDateTime.now();
			pstmt.setTimestamp(3, Timestamp.valueOf(now));
			
			// execute query
			result = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		// 결과 return
		return result == 1;
	}

	public List<BoardDto> list(Connection con) {
		List<BoardDto> list = new ArrayList<>();
		
		String sql = "SELECT id, title, inserted FROM Board ORDER BY id DESC";
		
		try(Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);) {
			
			while(rs.next()) {
				BoardDto dto = new BoardDto();
				
				dto.setId(rs.getInt(1));
				dto.setTitle(rs.getString(2));
				dto.setInserted(rs.getTimestamp(3).toLocalDateTime());
				
				list.add(dto);
			}			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public BoardDto get(Connection con, int id) {
		String sql = "SELECT id, title, body, inserted "
				+ "FROM Board "
				+ "WHERE id = ?";
		
		try (PreparedStatement pstmt = con.prepareStatement(sql)){
			pstmt.setInt(1, id);
			
			try(ResultSet rs = pstmt.executeQuery()) {
				
				if(rs.next()) {
					BoardDto dto = new BoardDto();
					dto.setId(rs.getInt(1));
					dto.setTitle(rs.getString(2));
					dto.setBody(rs.getString(3));
					dto.setInserted(rs.getTimestamp(4).toLocalDateTime());
										
					return dto;
				}
			}			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	public boolean modify(Connection con, BoardDto dto) {
		String sql = "UPDATE Board "
				+ "SET title = ?, "
				+ "		body = ? "
				+ "WHERE id = ?";
		
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getBody());
			pstmt.setInt(3, dto.getId());
			
			int count = pstmt.executeUpdate();
			
			return count == 1;			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean delete(Connection con, int id) {
		String sql = "DELETE FROM Board WHERE id = ?";
		
		try(PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setInt(1, id);
			
			int count = pstmt.executeUpdate();
			
			return count == 1;
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
