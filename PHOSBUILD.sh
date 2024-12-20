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

cp -Rf msfconsole /opt/PHANTX/bin
cp -Rf msfd /opt/PHANTX/bin
cp -Rf msfdb /opt/PHANTX/bin
cp -Rf msfrpc /opt/PHANTX/bin
cp -Rf msfrpcd /opt/PHANTX/bin
cp -Rf msfvenom /opt/PHANTX/bin

chmod -R 755 /opt/PHANTX/bin
rm -rf /opt/PHOS/tool/metasploit-framework
rm -rf /opt/PHOS/tool/metasploit-framework