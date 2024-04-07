CREATE TABLE users (
                       id BIGINT(20) NOT NULL AUTO_INCREMENT,
                       email VARCHAR(50),
                       password VARCHAR(120),
                       username VARCHAR(20),
                       PRIMARY KEY (id),
                       UNIQUE KEY email_unique (email),
                       UNIQUE KEY username_unique (username)
);

CREATE TABLE roles (
                       id INT(11) NOT NULL AUTO_INCREMENT,
                       name VARCHAR(20),
                       PRIMARY KEY (id)
);

CREATE TABLE user_roles (
        user_id BIGINT(20) NOT NULL,
        role_id INT(11) NOT NULL,
        PRIMARY KEY (user_id, role_id),
        FOREIGN KEY (user_id) REFERENCES users(id),
        FOREIGN KEY (role_id) REFERENCES roles(id)
);