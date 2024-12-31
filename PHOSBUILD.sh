rm -rf /opt/PHANTX/metasploit-framework
rm -rf /opt/PHANTX/metasploit-framework

cd /opt/PHANTX

git clone --depth 1 https://github.com/rapid7/metasploit-framework.git


cd /opt/PHANTX/metasploit-framework

bundle install

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Bundle install... PASS!"
else
  # houston we have a problem
  exit 1
fi

bundle update --bundler

cd /opt/PHANTX/tool

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy PACKAGE... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf phantxbin/* /opt/PHANTX/bin

chmod -R 755 /opt/PHANTX/bin
rm -rf /opt/PHOS/tool/metasploit-framework
rm -rf /opt/PHOS/tool/metasploit-framework