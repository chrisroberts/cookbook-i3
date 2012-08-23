default[:i3][:config][:general] = {
  :output_format => nil,
  :colors => true,
  :interval => 5
}
default[:i3][:config][:order] = [
  :network,
  :run_watches,
  :battery,
  :cpu_temps,
  :basics
]
default[:i3][:config][:display_items] => {
  :network => {
    'wireless wlan0' => {
      :format_up => 'W: (%quality at %essid, %bitrate) %ip',
      :format_down => 'W: down'
    },
    'ethernet eth0' => {
      :format_up => 'E: %ip (%speed)',
      :format_down => 'E: down'
    }
  },
  :battery => {
    'battery 0' => {
      :format => '%status %percentage %remaning %emptytime',
      :path => '/sys/class/power_supply/BAT%d/uevent'
    }
  },
  :run_watches => {
    'run_watch DHCP' => {
      :pidfile => '/var/run/dhclient*.pid'
    },
    'run_watch VPN' => {
      :pidfile => '/var/run/vpnc/pid'
    }
  },
  :basics => {
    :load => {
      :format => '%5min'
    },
    'disk "/"' => {
      :format => '%free free'
    },
    :time => {
      :format => '%Y-%m-%d %H:%M:%S'
    }
  },
  :cpu_temps => {
    'cpu_temperature 0' => {
      :format => 'T: %degrees °C',
      :path => '/sys/devices/platform/coretemp.0/temp1_input'
    }
  }
}

