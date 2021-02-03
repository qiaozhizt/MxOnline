import MySQLdb

username = "' OR 1=1 #"
password = "pbkdf2_sha256$150000$omBZJzCHlKnG$gOMBq1sRqFazBoixCcvLbbHP94KRztZZ+6tH7VkBDwY="
conn = MySQLdb.connect(host="127.0.0.1",user="pg_dev",password="pg_dev",db="mxonline",charset="utf8")
cursor = conn.cursor()
sql = "select * from users_userprofile where username='{}' and password='{}'".format(username,password)
cursor.execute(sql)
print(sql)
for row in cursor.fetchall():
    print(row)