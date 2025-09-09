import sqlite3

def save_alert(name, location):
    con = sqlite3.connect("alerts.db")  
    cur = con.cursor()
    cur.execute("INSERT INTO alerts (name, location) VALUES (?, ?)", (name, location))
    con.commit()
    con.close()
