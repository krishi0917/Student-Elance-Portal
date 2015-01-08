import sys
import smtplib

sender = 'stulance.jobs@yahoo.com'
receivers = sys.argv[1]
password = 'badalxyz'

msg = sys.argv[2]
message = msg.replace('PPP',' ').replace('%','\n-----------------------------------------------------------------------\n')
message1 = """Subject: Job Suggestion from Stulance
******************************************************
 %s""" %message

try:
 smtpObj = smtplib.SMTP('smtp.mail.yahoo.com',587)
 smtpObj.ehlo()
 smtpObj.starttls()
 smtpObj.login(sender, password)
 smtpObj.sendmail(sender, receivers, message1)    
 print ("Successfully sent email")
except SMTPException:
 print ("Error: unable to send email %s" %message1)
