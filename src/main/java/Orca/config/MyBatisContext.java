package Orca.config;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.mapping.Environment;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.ibatis.transaction.TransactionFactory;
import org.apache.ibatis.transaction.jdbc.JdbcTransactionFactory;

import Orca.mapper.OrcaClientMapper;
import Orca.mapper.OrcaMapper;


public class MyBatisContext {
	
	public static SqlSession getSqlSession() {
		try {
			// DB접속용 dataSource 객체 생성
			BasicDataSource dataSource = new BasicDataSource();
//			// 오라클 기준
//			dataSource.setDriverClassName("oracle.jdbc.driver.OracleDriver");
//			// @서버주소:포트번호:SID
//			dataSource.setUrl("");
//			dataSource.setUsername("ds208");
//			dataSource.setPassword("pw208");
			
			// h2 테스트용 database
			dataSource.setDriverClassName("org.h2.Driver");
			// @서버주소:포트번호:SID
			dataSource.setUrl("");
			dataSource.setUsername("sa");
			dataSource.setPassword("");
			
			TransactionFactory transactionFactory = new JdbcTransactionFactory();
			Environment environment = new Environment("development", transactionFactory, dataSource);
			Configuration config = new Configuration(environment);
			config.setMapUnderscoreToCamelCase(false);
			//만든 매퍼 등록
			config.addMapper(OrcaClientMapper.class);
			config.addMapper(OrcaMapper.class);
//			config.addMapper(BoardMapper.class);
//			config.addMapper(ItemMapper.class);
			
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(config);
			
			return factory.openSession(true); // true이면 자동으로 commit을 수행함.
		} 
		catch (Exception e) {
			System.out.println("aaaa");
			e.printStackTrace();
			return null;
		}
	}
}
