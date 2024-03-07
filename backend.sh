source

dnf module disable nodejs -y >/tmp/expense.log
dnf module enable nodejs:20 -y >/tmp/expense.log
dnf install nodejs -y >/tmp/expense.log

useradd expense >/tmp/expense.log
cp backend.service /etc/systemd/system/backend.service >/temp/expense.log

rm -rf/app >/tmp/expense.log

mkdir /app >/tmp/expense.log
curl -o /tmp/backend.zip https://expense-artifacts.s3.amazonaws.com/expense-backend-v2.zip >/temp/expense.log
cd /app >/temp/expense.log
unzip /tmp/backend.zip >/tmp/expense.log

cd /app >/tmp/expense.log
npm install >/tmp/expense.log



systemctl daemon-reload >/tmp/expense.log
systemctl enable backend >/tmp/expense.log
systemctl start backend >/tmp/expense.log
dnf install mysql -y >/tmp/expense.log
mysql -h 52.54.54.230 -uroot -pExpenseApp@1 < /app/schema/backend.sql >/tmp/expense.log
