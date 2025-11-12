package com.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.blog.model.Post;
import com.blog.util.DBConnection;

public class PostDAO {
	public boolean addPost(Post post) {
		String sql = "insert into posts (user_id,title,content) values (?,?,?)";

		try(Connection conn = DBConnection.getConnection();
			PreparedStatement stmt = conn.prepareStatement(sql)){

			stmt.setInt(1,post.getUserId());
			stmt.setString(2,post.getTitle());
			stmt.setString(3,post.getContent());

			int rows = stmt.executeUpdate();
			return rows > 0;
		}catch(SQLException e){
			e.printStackTrace();
			return false;
		}
	}

	public List<Post> getAllPosts() throws SQLException{
		List<Post> posts = new ArrayList<>();
		String sql = "select p.*, u.username from posts p join on p.user_id = u.user_id order by p.create_at desc";

		try(Connection conn = DBConnection.getConnection();
			PreparedStatement stmt = conn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery()){

			while(rs.next()) {
				Post post = new Post();
				post.setPostId(rs.getInt("post_id"));
				post.setUserId(rs.getInt("user_id"));
				post.setTitle(rs.getString("title"));
				post.setContent(rs.getString("content"));
				post.setCreatedAt(rs.getTimestamp("create_at"));
				posts.add(post);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return posts;
	}
}
