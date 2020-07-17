# rak_common_for_gateway

##	Introduction 

The aim of this project is to help users set up a LoRa network easily. The User Guide can be get from our Web.

##	Changelog
2020-01-09 V1.0.0
* Init.

##	Installation procedure

step1 : Download and install [Raspbian Stretch or Buster LITE](https://www.raspberrypi.org/downloads/raspbian/) 

step2 : Clone the installer and start the installation.

      $ sudo apt update; sudo apt install git -y
      $ git clone https://github.com/RAKWireless/rak2013_for_rpi.git
      $ cd ~/rak2013_for_rpi
      $ sudo ./install.sh

step3 : After the installation is complete, restart the Raspberry Pi.

step4 : The default APN name is HOLOGRAM. If you need to change the APN name, use the command "/usr/local/rak/lte/ppp-creator.sh 'Your_sim_card_APN_name' ttyAMA0 115200".

step5: If you want to RAK2013 automatically connect when the rpi boots up, you need to execute the command `sudo systemctl enable rak-pppd`.

