rm -rf /opt/PHANTX/metasploit-framework

cd /opt/PHANTX

git clone https://github.com/rapid7/metasploit-framework
cd /opt/PHANTX/metasploit-framework

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy PACKAGE... PASS!"
else
  # houston we have a problem
  exit 1
fi

cd /opt/PHANTX/metasploit-framework

sudo bundle install


chmod -R 755 /opt/PHANTX/bin
rm -rf /opt/PHOS/tool/metasploit-framework
rm -rf /opt/PHOS/tool/metasploit-framework