module.exports = (sequelize, dataTypes) => {
    let alias = 'users';
    let cols = {
        // email VARCHAR(100) NOT NULL,
        // passwd TEXT NOT NULL,
        // fist_name VARCHAR(200) NOT NULL,
        // last_name VARCHAR(200) NOT NULL,
        // country VARCHAR(200) NOT NULL,
        // face_pic TEXT NOT NULL,
        // category INT NOT NULL,
        // fav_national_team INT,
        // fav_team INT,
        // adult TINYINT,
        // PRIMARY KEY (email),
        // FOREIGN KEY (category) REFERENCES user_categories (id),
        // FOREIGN KEY (fav_national_team) REFERENCES national_teams (id),
        // FOREIGN KEY (fav_team) REFERENCES teams (id)
        email: {
            type: dataTypes.STRING(100),
            primaryKey: true,
            notNull: true
        },
        passwd: {
            type: dataTypes.STRING,
            notNull: true
        },
        fist_name: {
            type: dataTypes.STRING(200),
            notNull: true
        },
        last_name: {
            type: dataTypes.STRING(200),
            notNull: true
        },
        country: {
            type: dataTypes.STRING(200),
            notNull: true
        },
        face_pic: {
            type: dataTypes.STRING,
            notNull: true
        },
        category: {
            type: dataTypes.INTEGER,
            notNull: true
        },
        fav_national_team: {
            type: dataTypes.INTEGER
        },
        adult: {
            type: dataTypes.INTEGER
        },

    };
    let config = {
        tableName: 'users',
        timestamps: false
    }

    const user = sequelize.define(alias, cols, config);

    return user
}