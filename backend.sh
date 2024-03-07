dnf module disable nodejs -y >/temp/expense.log
dnf module enable nodejs:20 -y >/temp/expense.log
dnf install nodejs -y >/temp/expense.log

useradd expense >/temp/expense.log
cp backend.service /etc/systemd/system/backend.service >/temp/expense.log

rm -rf/app >/temp/expense.log

mkdir /app >/temp/expense.log
curl -o /tmp/backend.zip https://expense-artifacts.s3.amazonaws.com/expense-backend-v2.zip >/temp/expense.log
cd /app >/temp/expense.log
unzip /tmp/backend.zip >/temp/expense.log

cd /app >/temp/expense.log
npm install >/temp/expense.log



systemctl daemon-reload >/temp/expense.log
systemctl enable backend >/temp/expense.log
systemctl start backend >/temp/expense.log
dnf install mysql -y >/temp/expense.log
mysql -h 44.204.95.67 -uroot -pExpenseApp@1 < /app/schema/backend.sql >/temp/expense.log
