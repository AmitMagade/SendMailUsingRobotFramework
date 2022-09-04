*** Settings ***
Library  ../Resources/Keywords/SendEmail.py
Resource  ../Resources/Variables/variables.robot
#Variables  ../Resources/Variables/variables.py

*** Variables ***

*** Test Cases ***
Send Email using robot framework without attachments
    Send Mail  ${email_sender_zohomail}  ${email_password_zohomail}  ${email_receiver_gmail}  ${Subject}  ${Email_Body}
    Send Mail  ${email_sender_gmail}  ${email_password_gmail}  ${email_receiver_mail}  ${Subject}  ${Email_Body}

*** Keywords ***