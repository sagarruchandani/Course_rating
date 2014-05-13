dataSource {
    pooled = true
    jmxExport = true
    driverClassName = "com.mysql.jdbc.Driver"
	dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
	username = "root"
	password = "root"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
//    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
    singleSession = true // configure OSIV singleSession mode
}

// environment specific settings
environments {
    development {
         dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://localhost:3306/cmpe272"
			username = "root"
			password = "root"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://localhost:3306/cmpe272"
			username = "root"
			password = "root"
        }
    }
    production {
        dataSource {
         dialect = 'org.hibernate.dialect.MySQL5InnoDBDialect'
         pooled = false
         dbCreate = 'validate' // use 'update', 'validate', 'create' or 'create-drop'
         jndiName = 'java:comp/env/jdbc/team12'
      }
    }
}