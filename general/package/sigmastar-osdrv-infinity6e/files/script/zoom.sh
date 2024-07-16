#!/bin/sh

if [ -z "$1" ]; then
	echo Usage: $0 [start], [restart], [1-30,31,32,33]
	exit 0
fi

function zoom_start {
  stty -F /dev/ttyS2 9600 raw -echo -onlcr
  sleep .5
  printf '\x54\x65\x6D\x0D' >/dev/ttyS2
  sleep .5
  printf '\x81\x01\x04\x38\x03\xFF' >/dev/ttyS2
}

function zoom_restart {
  printf '\x81\x01\x04\x00\x03\xFF' >/dev/ttyS2
  sleep 17
  printf '\x54\x65\x6D\x0D' >/dev/ttyS2
  sleep 2
  printf '\x81\x01\x04\x38\x03\xFF' >/dev/ttyS2
}

zoom_1() {
	printf '\x81\x01\x04\x47\x00\x00\x00\x00\xFF\x81\x01\x04\x48\x06\x05\x02\x00\xFF' > /dev/ttyS2
}

zoom_2() {
	printf '\x81\x01\x04\x47\x00\x06\x00\x00\xFF\x81\x01\x04\x48\x06\x0D\x04\x08\xFF' > /dev/ttyS2
}

zoom_3() {
	printf '\x81\x01\x04\x47\x00\x09\x0B\x00\xFF\x81\x01\x04\x48\x07\x02\x09\x0E\xFF' > /dev/ttyS2
}

zoom_4() {
	printf '\x81\x01\x04\x47\x00\x09\x0F\x00\xFF\x81\x01\x04\x48\x07\x02\x0F\x08\xFF' > /dev/ttyS2
}

zoom_5() {
	printf '\x81\x01\x04\x47\x01\x00\x00\x00\xFF\x81\x01\x04\x48\x07\x0C\x09\x08\xFF' > /dev/ttyS2
}

zoom_6() {
	printf '\x81\x01\x04\x47\x01\x03\x00\x00\xFF\x81\x01\x04\x48\x08\x01\x0B\x02\xFF' > /dev/ttyS2
}

zoom_7() {
	printf '\x81\x01\x04\x47\x01\x06\x00\x00\xFF\x81\x01\x04\x48\x08\x07\x01\x08\xFF' > /dev/ttyS2
}

zoom_8() {
	printf '\x81\x01\x04\x47\x01\x09\x00\x00\xFF\x81\x01\x04\x48\x08\x0C\x07\x0E\xFF' > /dev/ttyS2
}

zoom_9() {
	printf '\x81\x01\x04\x47\x01\x09\x0F\x00\xFF\x81\x01\x04\x48\x08\x0E\x06\x0D\xFF' > /dev/ttyS2
}

zoom_10() {
	printf '\x81\x01\x04\x47\x02\x00\x00\x00\xFF\x81\x01\x04\x48\x09\x0A\x00\x0B\xFF' > /dev/ttyS2
}

zoom_11() {
	printf '\x81\x01\x04\x47\x02\x02\x00\x00\xFF\x81\x01\x04\x48\x09\x0D\x0B\x0D\xFF' > /dev/ttyS2
}

zoom_12() {
	printf '\x81\x01\x04\x47\x02\x06\x00\x00\xFF\x81\x01\x04\x48\x0A\x04\x08\x0B\xFF' > /dev/ttyS2
}

zoom_13() {
	printf '\x81\x01\x04\x47\x02\x09\x00\x00\xFF\x81\x01\x04\x48\x0A\x08\x0A\x07\xFF' > /dev/ttyS2
}

zoom_14() {
	printf '\x81\x01\x04\x47\x02\x0B\x0F\x00\xFF\x81\x01\x04\x48\x0A\x0A\x0D\x02\xFF' > /dev/ttyS2
}

zoom_15() {
	printf '\x81\x01\x04\x47\x02\x0F\x0F\x00\xFF\x81\x01\x04\x48\x0A\x08\x02\x0E\xFF' > /dev/ttyS2
}

zoom_16() {
	printf '\x81\x01\x04\x47\x03\x02\x00\x00\xFF\x81\x01\x04\x48\x0A\x03\x0E\x06\xFF' > /dev/ttyS2
}

zoom_17() {
	printf '\x81\x01\x04\x47\x03\x02\x0F\x00\xFF\x81\x01\x04\x48\x0A\x01\x08\x0D\xFF' > /dev/ttyS2
}

zoom_18() {
	printf '\x81\x01\x04\x47\x03\x04\x0F\x00\xFF\x81\x01\x04\x48\x09\x0A\x0C\x0E\xFF' > /dev/ttyS2
}

zoom_19() {
	printf '\x81\x01\x04\x47\x03\x07\x00\x00\xFF\x81\x01\x04\x48\x09\x00\x0F\x03\xFF' > /dev/ttyS2
}

zoom_20() {
	printf '\x81\x01\x04\x47\x03\x08\x00\x00\xFF\x81\x01\x04\x48\x08\x0B\x02\x04\xFF' > /dev/ttyS2
}

zoom_21() {
	printf '\x81\x01\x04\x47\x03\x0C\x00\x00\xFF\x81\x01\x04\x48\x06\x05\x0F\x02\xFF' > /dev/ttyS2
}

zoom_22() {
	printf '\x81\x01\x04\x47\x03\x0D\x00\x00\xFF\x81\x01\x04\x48\x05\x0D\x03\x05\xFF' > /dev/ttyS2
}

zoom_23() {
	printf '\x81\x01\x04\x47\x03\x0E\x00\x00\xFF\x81\x01\x04\x48\x05\x03\x09\x06\xFF' > /dev/ttyS2
}

zoom_24() {
	printf '\x81\x01\x04\x47\x03\x0E\x09\x00\xFF\x81\x01\x04\x48\x04\x0F\x02\x00\xFF' > /dev/ttyS2
}

zoom_25() {
	printf '\x81\x01\x04\x47\x03\x0E\x0A\x00\xFF\x81\x01\x04\x48\x04\x0E\x05\x0D\xFF' > /dev/ttyS2
}

zoom_26() {
	printf '\x81\x01\x04\x47\x03\x0E\x0E\x00\xFF\x81\x01\x04\x48\x04\x0B\x09\x0B\xFF' > /dev/ttyS2
}

zoom_27() {
	printf '\x81\x01\x04\x47\x03\x0F\x05\x00\xFF\x81\x01\x04\x48\x04\x06\x0F\x08\xFF' > /dev/ttyS2
}

zoom_28() {
	printf '\x81\x01\x04\x47\x03\x0F\x08\x00\xFF\x81\x01\x04\x48\x04\x04\x0D\x0C\xFF' > /dev/ttyS2
}

zoom_29() {
	printf '\x81\x01\x04\x47\x03\x0F\x0F\x00\xFF\x81\x01\x04\x48\x03\x0F\x01\x0C\xFF' > /dev/ttyS2
}

zoom_30() {
	printf '\x81\x01\x04\x47\x04\x00\x00\x00\xFF\x81\x01\x04\x48\x03\x0D\x0F\x00\xFF' > /dev/ttyS2
}

function zoom_31 {
  if [ `yaml-cli -g .video0.size` == '1920x1080' ]  ; then 
  cli -s .video0.crop 0x0x1920x1080 && killall -10 majestic

  elif [ `yaml-cli -g .video0.size` == '3200x1800' ]  ; then 
  cli -s .video0.crop 0x0x3200x1800 && killall -10 majestic

  elif [ `yaml-cli -g .video0.size` == '3840x2160' ]  ; then 
  cli -s .video0.crop 0x0x3840x2160 && killall -10 majestic

  fi
}

function zoom_32 {
  if [ `yaml-cli -g .video0.size` == '1920x1080' ]  ; then 
  cli -s .video0.crop 320x180x1280x720 && killall -10 majestic

  elif [ `yaml-cli -g .video0.size` == '3200x1800' ]  ; then 
  cli -s .video0.crop 960x540x1280x720 && killall -10 majestic

  elif [ `yaml-cli -g .video0.size` == '3840x2160' ]  ; then 
  cli -s .video0.crop 1280x720x1280x720 && killall -10 majestic

  fi
}

function zoom_33 {
  if [ `yaml-cli -g .video0.size` == '1920x1080' ]  ; then 
  cli -s .video0.crop 640x360x640x360 && killall -10 majestic

  elif [ `yaml-cli -g .video0.size` == '3200x1800' ]  ; then 
  cli -s .video0.crop 1280x720x640x360 && killall -10 majestic

  elif [ `yaml-cli -g .video0.size` == '3840x2160' ]  ; then 
  cli -s .video0.crop 1600x900x640x360 && killall -10 majestic

  fi
}

zoom_$1