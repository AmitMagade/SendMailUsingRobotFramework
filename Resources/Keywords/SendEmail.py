import smtplib
from email.message import EmailMessage

def sendmail(email_sender, email_password, email_receiver, subject, body):
    em = EmailMessage()
    em['From'] = email_sender
    em['To'] = email_receiver
    em['Subject'] = subject
    em.set_content(body)

    gmail_substring = '@gmail.com'
    zoho_substring = '@zohomail.in'
    mail_substring = '@mail.com'

    if gmail_substring in email_sender:
        with smtplib.SMTP_SSL('smtp.gmail.com', 465) as smtp:
            smtp.login(email_sender, email_password)
            smtp.sendmail(email_sender, email_receiver, em.as_string())

    if zoho_substring in email_sender:
        with smtplib.SMTP_SSL('smtp.zoho.in', 465) as smtp:
            smtp.login(email_sender, email_password)
            smtp.sendmail(email_sender, email_receiver, em.as_string())

    if mail_substring in email_sender:
        with smtplib.SMTP_SSL('smtp.mail.com', 465) as smtp:
            smtp.login(email_sender, email_password)
            smtp.sendmail(email_sender, email_receiver, em.as_string())

