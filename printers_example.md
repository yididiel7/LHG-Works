# How to Set a Default Printer at the Command Line

The default printer can be a local printer or a remote printer.

Become an administrator on the system where you want to set a default printer.
Set the system's default printer by using one of the following methods: By specifying the PRINTER variable:

$ export PRINTER=printer-name

where printer-name specifies the name of the printer to be assigned as the system's default printer. If you do not specify printer-name, the system iswith no default printer.

Note - When using the lp command with the -d option, the destination printer, which might not be the default printer, is specified. If the -d optionspecified, the print command searches for information about the printer in the PRINTER environment variable.
By specifying the LPDEST va
$ export LPDEST=printer-name

where printer-name specifies the name of the printer to be assigned as the system's default printer. If you do not specify printer-name, the system iswith no default printer.

Note - If both the LPDEST and the PRINTER environment variables are set, LPDEST takes precedence.
By using the lpoptions command:

$ lpoptions -d printer-name -d

Specifies the destination printer.

printer-name

Specifies the name of the printer that is assigned as the system's default printer. If you do not specify printer-name, the system is set up default printer.

For more information, see the lpoptions(1) man paVerify the system's default printer.

$ lpstat -d

To print to the default printer, type the following command:

$ lp filename

Example 15-4 Setting a Default Printer by Specifying the PRINTER Variable

The following example shows how to set the printer luna as the system's default printer by using the PRINTER variable.

$ export PRINTER=luna
$ lpstat -d
system default destination: luna

Example 15-5 Setting a Default Printer by Specifying the LPDEST Variable

The following example shows how to set the printer luna as the system's default printer by specifying the LPDEST variable.

$ export LPDEST=luna
$ lpstat -d
system default destination: luna

Example 15-6 Setting a Default Printer by Using the lpoptions Command

The following example shows how to set the printer luna as the system's default printer. The printer luna is used as the system's default printer if the LPDEST or the PRINTER environment variable is not set.

$ lpoptions -d luna
$ lpstat -d
system default destination: luna

The lpoptions command creates a ~/.lpoptions file that includes and entry for the default printer luna in the file. By default, all print jobs are now directed to the luna printer.

How to Print to a Specified Printer

    (Optional) Verify the status of the printer.

    $ lpstat -p printer-name

    Provide the destination printer name when issuing the lp command.

    $ lp -d destination-printer filename

    -d

        Specifies the destination printer.
    destination-printer

        Specifies the name of the printer that you are assigning as the destination printer.
    filename

        Specifies the file name to print.

    Note - You can also use the lpr command with the -p option to submit a print request to a specific printer. For more information, see the lpr(1) man page.

Example 15-7 Printing to a Specified Printer by Using the lp Command

The following example shows how to set the printer HP-DeskJet-2700-series the destination printer.

$ lp -d HP-DeskJet-2700-series  abc.ps
request id is HP-DeskJet-2700-series -1 (1 file(s))

$ lpstat -d

system default destination: saturn

The -d option of the lp command takes precedence over the LPDEST and PRINTER environment variables.

Note that in this example, the default printer is saturn.
How to Verify the Status of Printers

The lpstat command displays information about accessible printers and jobs.

    Log in to any system on the network.
    (Optional) Verify the status of all printers or a specific printer.

    Only the most commonly used options are shown here. For information about other options, see the lpstat(1) man page.

    $ lpstat [-d] [-p] printer-name [-l] [-t]

    -d

        Shows the system's default printer.
    -p printer-name

        Shows that a printer is active or idle, and when the printer was enabled or disabled.

        You can specify multiple printer names with this command. Use a space or a comma to separate printer names. If you use spaces, enclose the list of printer names in quotation marks. If you do not specify printer-name, the status of all printers is displayed. 
    -l

        Shows the characteristics of printers and jobs.
    -t

        Shows status information about CUPS, including the status of all printers, for example whether printers are active and accepting print requests.




## Example 15-8 Displaying the Status of Printers

## To display the status of the printer lunHP-DeskJet-2700-series$ lpstat -p HP-DeskJet-2700-series
printer HP-DeskJet-2700-series is idle. enabled since Jul 12 11:17 2011. available.

## To display the system's default printer:

$ lpstat -d
system default destination: HP-DeskJet-2700-series

## To display the description of the printers asteroid and HP-DeskJet-2700-series:

$ lpstat -p "asteroid, HP-DeskJet-2700-series" -D
printer asteroid faulted. enabled since Jan 5 11:35 2011. available.
unable to print: paper misfeed jam

Description: Printer by break room
printer HP-DeskJet-2700-series is idle. enabled since Jan 5 11:36 2011. available.
Description: Printer by server room.

## To display the characteristics of the printer HP-DeskJet-2700-series:

$ lpstat -p HP-DeskJet-2700-series -l
printer HP-DeskJet-2700-series is idle.  enabled since September 29, 2011 05:20:57 PM BST

## How to Print a File to the Default Printer


    Log in to any system on the network.
    (Optional) Verify the status of the printer.

    $ lpstat -p HP-DeskJet-2700-series

    Issue a print request in one of the following ways:
    By using the lp command:

    $ lp filename

    By using the lpr command:

    $ lpr filename

    Note - Only the basic commands are shown in this procedure. For information about the other options, see the lp(1) and the lpr(1) man pages.

## How to Delete a Printer and Remove Printer Access

    Become an administrator on a print client with access to the printer to delete.
    On the system that is the print client, delete information about the printer.

    $ lpoptions -x printer-name

    printer-name

        Specifies the name of the printer to delete.
    -x

    Deletes the specified printer.

    Note - The -x option only removes the default options for a specific printer and instance. The original print queue still remains until it is deleted by using the lpadmin command.
    Become an administrator.

## On the system that is the printer server, stop accepting print requests for the printer.

    $ cupsreject printer-name

    This step prevents any new requests from entering the printer's queue while you are in the process of removing the printer.
    Stop the printer.

    $ cupsdisable printer-name

    Delete the printer.

    $ lpadmin -x printer-name

    Verify that the printer has been deleted, as follows:
        Confirm that the printer has been deleted on the print client.

        $ lpstat -p printer-name -l

        The command output displays a message indicating the printer does not exist.
        Confirm that the printer has been deleted on the print server.

        $ lpstat -p printer-name -l

        The command output displays a message indicating that the printer does not exist.

## Example 15-9 Deleting a Printer

The following example shows how to delete the printer HP-DeskJet-2700-series from the print client terra and from the print server jupiter.

terra# lpoptions -x HP-DeskJet-2700-series
terra# lpstat -p HP-DeskJet-2700-series -l
jupiter# lpadmin -x HP-DeskJet-2700-series
jupiter# lpstat -p HP-DeskJet-2700-series -l
lpstat: Invalid destination name in list "HP-DeskJet-2700-series"!

