package DataliHouse.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import DataliHouse.Entity.Categories;
import DataliHouse.Entity.MapperCategories;

@Repository
public class CategoriesDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
	public List<Categories> GetDataCategory() {
		List<Categories> list = new ArrayList<Categories>();
		String sql = "select * from categories";
		list = _jdbcTemplate.query(sql, new MapperCategories());
		
		return list;
	}
}
