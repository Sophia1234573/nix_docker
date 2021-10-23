package com.solutions.denisovich;

import com.solutions.denisovich.config.DatabaseConnectionManager;
import com.solutions.denisovich.dao.JdbcUserDao;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class Main {
    private static final Logger LOG = LogManager.getLogger(Main.class);

    public static void main(String[] args) {
        DatabaseConnectionManager connectionManager = new DatabaseConnectionManager();
        JdbcUserDao jdbcUserDao = new JdbcUserDao(connectionManager);
        LOG.info("All users: {}", jdbcUserDao.findAll());
        System.out.println("Hello!");
    }
}