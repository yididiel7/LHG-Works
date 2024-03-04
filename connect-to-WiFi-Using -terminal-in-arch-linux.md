# Connect to WiFi Using Terminal in Arch Linux and Other Distros

## Method 1: Using nmcli

In the first method, try using connecting nmcli. The nmcli is a command-line tool used to create, display, edit, delete, activate, and deactivate network connections and control and display network device status.

It’s part of the networkmanager package. The following method will only work if you have NetworkManager installed. Make sure you have enabled any mobile hotspot or WiFi connection.

## To connect to WiFi using the terminal, type the following:

nmcli device wifi list

It should give you the list of access points.

If it’s not showing your wifi access point, try to rescan again:

nmcli device wifi rescan

nmcli device wifi listnmcli device wifi list

And use the list command to see if your connection is visible. Once it shows, use the following command to connect with the user id and password.

nmcli device wifi connect access_point_name password your_password

Replace the access_point_name with the SSID of your connection in the above command and use your password. And you should be connected.

## To verify the connection, run the following command:

nmcli connection show

nmcli connection shownmcli connection show

You should see the connected access point in a different font/colour.

Now, you can carry on with your task.
