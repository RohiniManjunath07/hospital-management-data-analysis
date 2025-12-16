import pandas as pd 
import mysql.connector
conn = mysql.connector.connect(
        host = "DB_HOST",
        username = "DB_USER",
        password = "DB_PASSWORD",
        database = "DB_DATABASE"
)

query = """
SELECT
    SUM(grand_total) AS total_paid,
    SUM(refund_amount) AS total_refund_amount,
    AVG(discount_amount) AS average_discount_paid,
    SUM(discount_amount) AS total_discount_given
FROM
    billing;
"""

df= pd.read_sql(query, conn)
conn.close()

result = df.iloc[0]
print(f"Total Paid (SUM(grand_total)):          {result['total_paid']:,.2f}")
print(f"Total Refund Amount (SUM(refund)):      {result['total_refund_amount']:,.2f}")
print(f"Total Discount Given (SUM(discount)):   {result['total_discount_given']:,.2f}")
print(f"Average Discount Paid (AVG(discount)):  {result['average_discount_paid']:,.2f}")