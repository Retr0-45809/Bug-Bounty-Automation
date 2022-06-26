# Bug-Bounty-Automation
Bash Script to perform bug bounty automation

<b>Requirements</b> -
•	Kali Linux, Virtual box
•	Python and Golang
•	Sublister, Eyewitness
•	Assetfinder, Amass, Httprobe
•	Nmap, Sqlmap

<b>Scope</b> - It will give us a viewpoint of how ethical hackers detect vulnerabilities in web applications, mobile apps and other platforms using various tools and scripts.

<b>Implementation</b> - In this project, we need to automate the tools or scripts so that all tasks are performed in a single instance on the target website. For this there are two methods – bash script and python. I have gone with bash methodology. For bash scripting we will need to install Golang language to automate multiple script lines in a single shell script file. Requirement gathering is to be done first by selecting tools that will help in quick recon of target website providing valid understandable output. Bash script will loop multiple scripts to run the recon tools line by line and output of each tool will be stored in a text file.

<b> vi install.sh
  chmod +x install.sh
  ./install.sh
</b>
<br>
<b> vi recon.sh
  chmod +x recon.sh
  ./recon.sh <website.com>
</b>
  
![image](https://user-images.githubusercontent.com/61228111/175811304-99cb6171-51da-4510-b475-4bed88f972b2.png)

![image](https://user-images.githubusercontent.com/61228111/175811309-6b7ca410-a370-42bc-aebd-d3c43e367bb7.png)
