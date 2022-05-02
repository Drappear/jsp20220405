package app01.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import app01.dto.ReplyDto;

public class ReplyDao {
	public boolean insert(Connection con, ReplyDto reply) {
		String sql = "INSERT INTO Reply "
				+ "(board_id, content, inserted) "
				+ "VALUES(?, ?, ?) ";
		
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setInt(1, reply.getBoardId());
			pstmt.setString(2, reply.getContent());
			pstmt.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
			
			int cnt = pstmt.executeUpdate();
			
			return cnt == 1;
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}

	public List<ReplyDto> list(Connection con, int boardId) {
		String sql = "SELECT id, board_id, content, inserted "
				+ "FROM Reply "
				+ "WHERE board_id = ? "
				+ "ORDER BY id ";
		List<ReplyDto> list = new ArrayList<>();
		try(PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setInt(1, boardId);
			
			try(ResultSet rs = pstmt.executeQuery()) {
				while(rs.next()) {
					ReplyDto dto = new ReplyDto();
					
					dto.setId(rs.getInt("id"));
					dto.setBoardId(rs.getInt("board_id"));
					dto.setContent(rs.getString("content"));
					dto.setInserted(rs.getTimestamp("inserted").toLocalDateTime());
					
					list.add(dto);
				}
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean update(Connection con, ReplyDto dto) {
		String sql = "UPDATE Reply "
				+ "SET content = ? "
				+ "WHERE id = ? ";
		
		try(PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setString(1, dto.getContent());
			pstmt.setInt(2, dto.getId());
			
			int result = pstmt.executeUpdate();
			
			return result == 1;
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}

	public boolean delete(Connection con, int replyId) {
		String sql = "DELETE FROM Reply "
				+ "WHERE id = ? ";
		
		try(PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setInt(1, replyId);
			
			int result = pstmt.executeUpdate();
			
			return result == 1;
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
}
