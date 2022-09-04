do not pass the variables with inverted commas, like 'password' if we are going to pass these variables in a robot file.
This will consider the password along with inverted commas in python custom lib

*** Variables ***
${email_sender_gmail} =  testsmtp2022infy@gmail.com
${email_password_gmail} =  sdoswtmltyhxkjgm

${email_sender_mail} =  testrobot@mail.com      # will not be able to use it as smtp service is a paid service for this domain
${email_password_mail} =  D5GZAFRY7O3AW6HPW5NU

${email_sender_zohomail} =  smtpemailtest@zohomail.in
${email_password_zohomail} =  X4cDLWfiQz8W

${email_receiver_gmail} =  testsmtp2022infy@gmail.com
${email_receiver_mail} =  testrobot@mail.com
${email_receiver_zohomail} =  smtpemailtest@zohomail.in

${Subject}      Test smtp email
${Email_Body}   SEPARATOR=\n
...             Hi,
...             This is test mail through robot framework
...             This is a multiline message
...
...             Regards,
...             Automated Mailer Robot