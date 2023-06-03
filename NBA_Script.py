import mysql.connector
from tkinter import *
import tkinter as tk
from tkinter import ttk
root = tk.Tk()
root.title("MySQL Table Viewer")

conn = mysql.connector.connect(
    host="localhost",
    database="projectdb",
    user="root",
    password="*****")


def display(mycursor, rows):
    root = tk.Tk()
    tree = ttk.Treeview(root)
    tree['columns'] = tuple(str(i) for i in range(len(rows[0])))

    for i, col_name in enumerate(mycursor.description):
        tree.heading(str(i), text=col_name[0])

    for row in rows:
        tree.insert('', tk.END, values=row)

    tree.pack(fill='both', expand=True)


def show_game_info():

    mycursor = conn.cursor()
    mycursor.execute("select * from Game limit 10")
    rows = mycursor.fetchall()
    display(mycursor, rows)


def show_highest_salary_1996():

    # top 5 highest Salary in year 1996
    mycursor = conn.cursor()
    mycursor.execute(
        "SELECT * FROM salaries where SeasonStartyear=1996 ORDER BY Salary ASC limit 5;")
    rows = mycursor.fetchall()
    display(mycursor, rows)


def show_lowest_salary_1996():

    # top 5 lowest Salary in year 1996
    mycursor = conn.cursor()
    mycursor.execute(
        "SELECT * FROM salaries where SeasonStartyear=1996 ORDER BY Salary DESC limit 5;")
    rows = mycursor.fetchall()
    display(mycursor, rows)


def show_highest_salary_2001():

    # top 5 highest Salary in year 2001
    mycursor = conn.cursor()
    mycursor.execute(
        "SELECT * FROM salaries where SeasonStartyear=2001 ORDER BY salary DESC LIMIT 5;")
    rows = mycursor.fetchall()
    display(mycursor, rows)


def show_highest_salary_2006():

    # top 5 highest Salary in year 2006
    mycursor = conn.cursor()
    mycursor.execute(
        "SELECT * FROM salaries where SeasonStartyear=2006 ORDER BY salary DESC LIMIT 5;")
    rows = mycursor.fetchall()
    display(mycursor, rows)


def show_highest_salary_2011():

    # top 5 highest Salary in year 2011
    mycursor = conn.cursor()
    mycursor.execute(
        "SELECT * FROM salaries where SeasonStartyear=2011 ORDER BY salary DESC LIMIT 5;")
    rows = mycursor.fetchall()
    display(mycursor, rows)


def show_highest_salary_2016():

    # top 5 highest Salary in year 2016
    mycursor = conn.cursor()
    mycursor.execute(
        "SELECT * FROM salaries where SeasonStartyear=2016 ORDER BY salary DESC LIMIT 5;")
    rows = mycursor.fetchall()
    display(mycursor, rows)


def show_top_turnover_causer():

    # the top 5 turnover causer
    mycursor = conn.cursor()
    mycursor.execute(
        "SELECT TurnoverCauser, COUNT(*) as count FROM Turnovers where TurnoverCauser !='' GROUP BY TurnoverCauser ORDER BY count DESC LIMIT 5;")
    rows = mycursor.fetchall()
    display(mycursor, rows)


def show_top_turnover_player():

    # the top 5 turnover player
    mycursor = conn.cursor()
    mycursor.execute(
        "SELECT TurnoverPlayer, COUNT(*) as count FROM Turnovers where TurnoverPlayer !='' GROUP BY TurnoverPlayer ORDER BY count DESC LIMIT 5;")
    rows = mycursor.fetchall()
    display(mycursor, rows)


def show_top_cause():

    # The top cause of turnover being happended
    mycursor = conn.cursor()
    mycursor.execute(
        "SELECT TurnoverCause, COUNT(*) as count FROM Turnovers where TurnoverCause !='' GROUP BY TurnoverCause ORDER BY count DESC LIMIT 5;")
    rows = mycursor.fetchall()
    display(mycursor, rows)


def show_top_reason():

    # The top reason of turnover being happended
    mycursor = conn.cursor()
    mycursor.execute(
        "SELECT TurnoverType, COUNT(*) as count FROM Turnovers where TurnoverType !='' GROUP BY TurnoverType ORDER BY count DESC LIMIT 5;")
    rows = mycursor.fetchall()
    display(mycursor, rows)


def show_coach():

    # Coach who worked the longest
    mycursor = conn.cursor()
    mycursor.execute(
        "SELECT CoachName FROM Coaches GROUP BY CoachName ORDER BY count(*) DESC LIMIT 1;")
    rows = mycursor.fetchall()
    display(mycursor, rows)


def show_most_occured_foul():

    # The most occured type of foul
    mycursor = conn.cursor()
    mycursor.execute(
        "SELECT FoulType, COUNT(*) as count FROM Fouls where FoulType !='' GROUP BY FoulType ORDER BY count DESC LIMIT 1;")
    rows = mycursor.fetchall()
    display(mycursor, rows)


def show_most_fouled():

    # Who had the most foul
    mycursor = conn.cursor()
    mycursor.execute(
        "SELECT Fouled, COUNT(*) as count FROM Fouls where Fouled !='' GROUP BY Fouled ORDER BY count DESC LIMIT 1;")
    rows = mycursor.fetchall()
    display(mycursor, rows)


def show_most_fouler():

    mycursor = conn.cursor()
    mycursor.execute(
        "SELECT Fouler, COUNT(*) as count FROM Fouls where Fouler !='' GROUP BY Fouler ORDER BY count DESC LIMIT 1;")
    rows = mycursor.fetchall()
    display(mycursor, rows)


def show_nationalities():

    # how many nationalities of players existed in history of NBA
    mycursor = conn.cursor()
    mycursor.execute(
        "select count(distinct(country)) as Nationalities from Players;")
    rows = mycursor.fetchall()
    display(mycursor, rows)


def show_rebounds():

    # Total rebounds
    mycursor = conn.cursor()
    mycursor.execute(
        "select count(*) as Rebounds from Rebounds where ReboundType='defensive' or ReboundType='offensive';")
    rows = mycursor.fetchall()
    display(mycursor, rows)


def show_Lakers_games():

    # How many games did Los Angeles Lakers Played from 1996 to 2020
    mycursor = conn.cursor()
    mycursor.execute(
        "select count(*) as No_of_Games  from Game where HomeTeam='Los Angeles Lakers' or AwayTeam='Los Angeles Lakers';")
    rows = mycursor.fetchall()
    display(mycursor, rows)


def show_most_rebounds():

    # who got the most rebounds
    mycursor = conn.cursor()
    mycursor.execute(
        "select Rebounder, count(*) as count from Rebounds where Rebounder != '' and Rebounder != 'Team' group by Rebounder order by count  DESC limit 1;")
    rows = mycursor.fetchall()
    display(mycursor, rows)


def show_most_offensive_rebounds():

    # who got the most offensive rebounds
    mycursor = conn.cursor()
    mycursor.execute(
        "select Rebounder, count(*) as count from Rebounds where ReboundType='offensive' and Rebounder != 'Team' group by Rebounder order by count  DESC limit 1;")
    rows = mycursor.fetchall()
    display(mycursor, rows)


def show_most_defensive_rebounds():

    # who got the most defensive rebounds
    mycursor = conn.cursor()
    mycursor.execute(
        "select Rebounder, count(*) as count from Rebounds where ReboundType='defensive' and Rebounder != 'Team' group by Rebounder order by count  DESC limit 1;")
    rows = mycursor.fetchall()
    display(mycursor, rows)


label = tk.Label(root, text="Click a button to view information:")
label.pack(pady=50)

topFrame = Frame(root)
topFrame.pack()
bottomFrame = Frame(root)
bottomFrame.pack(side=BOTTOM)

button1 = Button(topFrame, text='View Games Information',
                 command=show_game_info, fg='green')
button2 = Button(topFrame, text='Top 5 highest Salary in year 1996',
                 command=show_highest_salary_1996, fg='green')
button3 = Button(topFrame, text='Top 5 lowest Salary in year 1996',
                 command=show_lowest_salary_1996, fg='green')

button1.grid(column=0, row=1, padx=10, pady=10)
button2.grid(column=1, row=1, padx=10, pady=10)
button3.grid(column=2, row=1, padx=10, pady=10)

topFrame = Frame(root)
topFrame.pack()
bottomFrame = Frame(root)
bottomFrame.pack(side=BOTTOM)

button4 = Button(topFrame, text='Top 5 highest Salary in year 2001',
                 command=show_highest_salary_2001, fg='green')

button5 = Button(topFrame, text='Top 5 highest Salary in year 2006',
                 command=show_highest_salary_2006, fg='green')

button6 = Button(topFrame, text='Top 5 highest Salary in year 2011',
                 command=show_highest_salary_2001, fg='green')

button4.grid(column=0, row=1, padx=10, pady=10)
button5.grid(column=1, row=1, padx=10, pady=10)
button6.grid(column=2, row=1, padx=10, pady=10)

topFrame = Frame(root)
topFrame.pack()
bottomFrame = Frame(root)
bottomFrame.pack(side=BOTTOM)

button7 = Button(topFrame, text='Top 5 highest Salary in year 2016',
                 command=show_highest_salary_2016, fg='green')
button8 = Button(topFrame, text='Top 5 turnover causer',
                 command=show_top_turnover_causer, fg='green')

button9 = Button(topFrame, text='Top 5 turnover player',
                 command=show_top_turnover_player, fg='green')

button7.grid(column=0, row=1, padx=10, pady=10)
button8.grid(column=1, row=1, padx=10, pady=10)
button9.grid(column=2, row=1, padx=10, pady=10)

topFrame = Frame(root)
topFrame.pack()
bottomFrame = Frame(root)
bottomFrame.pack(side=BOTTOM)

button10 = Button(topFrame, text='The top cause of turnover being happended',
                  command=show_top_cause, fg='green')
button11 = Button(topFrame, text='The top reason of turnover being happended',
                  command=show_top_reason, fg='green')
button12 = Button(topFrame, text='Coach who worked the longest',
                  command=show_coach, fg='green')

button10.grid(column=0, row=1, padx=10, pady=10)
button11.grid(column=1, row=1, padx=10, pady=10)
button12.grid(column=2, row=1, padx=10, pady=10)

topFrame = Frame(root)
topFrame.pack()
bottomFrame = Frame(root)
bottomFrame.pack(side=BOTTOM)

button13 = Button(topFrame, text='The most occurred type of foul',
                  command=show_most_occured_foul, fg='green')
button14 = Button(topFrame, text='Who had the most foul',
                  command=show_most_fouled, fg='green')
button15 = Button(topFrame, text='Who played dirties',
                  command=show_most_fouler, fg='green')

button13.grid(column=0, row=1, padx=10, pady=10)
button14.grid(column=1, row=1, padx=10, pady=10)
button15.grid(column=2, row=1, padx=10, pady=10)

topFrame = Frame(root)
topFrame.pack()
bottomFrame = Frame(root)
bottomFrame.pack(side=BOTTOM)

button16 = Button(topFrame, text='How many nationalities of players existed in history of NBA',
                  command=show_nationalities, fg='green')
button17 = Button(topFrame, text='Total rebounds',
                  command=show_rebounds, fg='green')
button18 = Button(topFrame, text='How many games did Los Angeles Lakers Played from 1996 to 2020',
                  command=show_Lakers_games, fg='green')

button16.grid(column=0, row=1, padx=10, pady=10)
button17.grid(column=1, row=1, padx=10, pady=10)
button18.grid(column=2, row=1, padx=10, pady=10)

topFrame = Frame(root)
topFrame.pack()
bottomFrame = Frame(root)
bottomFrame.pack(side=BOTTOM)

button19 = Button(topFrame, text='Who got the most rebounds',
                  command=show_most_rebounds, fg='green')
button20 = Button(topFrame, text='Who got the most offensive rebounds',
                  command=show_most_offensive_rebounds, fg='green')
button21 = Button(topFrame, text='Who got the most defensive rebounds',
                  command=show_most_defensive_rebounds, fg='green')

button19.grid(column=0, row=1, padx=10, pady=10)
button20.grid(column=1, row=1, padx=10, pady=10)
button21.grid(column=2, row=1, padx=10, pady=10)

label = tk.Label(root, text="")
label.pack()

root.mainloop()
